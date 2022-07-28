import 'dart:convert';

import 'package:employee_app/models/employee_mode.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../../core/constants.dart';

part 'employee_event.dart';
part 'employee_state.dart';
part 'employee_bloc.freezed.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  EmployeeBloc() : super(EmployeeState.initial()) {
    on<GetEmployees>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        connectionError: false,
        dataFeachingError: false,
      ));
      try {
        Response response =
            await Dio().get(getEmployeeListfeachingUrl, queryParameters: {
          "page": state.currentLoadingPage + 1,
        });
        if (response.statusCode == 200 || response.statusCode == 201) {
          List<dynamic> loadedEmployeeList =
              response.data['data'] as List<dynamic>;
          if (loadedEmployeeList.isNotEmpty) {
            for (Map<String, dynamic> employee in loadedEmployeeList) {
              if (!state.employees
                  .any((element) => element.id == employee['id'])) {
                emit(state.copyWith(
                    employees: List.from(state.employees)
                      ..add(EmployeeModel.fromJson(employee))));
              }
            }
            return emit(state.copyWith(
                isLoading: false,
                currentLoadingPage: state.currentLoadingPage + 1));
          } else {
            return emit(state.copyWith(isLoading: false));
          }
        } else {
          return emit(
              state.copyWith(dataFeachingError: true, isLoading: false));
        }
      } on DioError catch (e) {
        if (e.type == DioErrorType.connectTimeout ||
            e.type == DioErrorType.other) {
          return emit(state.copyWith(connectionError: true, isLoading: false));
        } else {
          return emit(
              state.copyWith(dataFeachingError: true, isLoading: false));
        }
      }
    });

    
    //add new employye function
    on<AddNewEmployee>((event, emit) async {
      emit(state.copyWith(
          isAddingNewEmployee: true,
          addingEmployeeFaild: false,
          newEmployeeAddedSucessfully: false));

      try {
        final Map<String,dynamic> data={
          "name":event.name,
          "job":event.job,
        };
        Response response=await Dio().post(addEmployeeUrl,data: jsonEncode(data));
        if(response.statusCode==200||response.statusCode==201){
          emit(state.copyWith(isAddingNewEmployee: false,newEmployeeAddedSucessfully: true));
        }else{
          emit(state.copyWith(isAddingNewEmployee: false,addingEmployeeFaild: true));
        }
      } on DioError catch (_) {
        emit(state.copyWith(isAddingNewEmployee: false,addingEmployeeFaild: true));
      }
    });
  }
}
