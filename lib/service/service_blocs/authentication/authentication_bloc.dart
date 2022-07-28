import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationState.initial()) {

    on<LogIn>((event, emit) async {
      emit(state.copyWith(isLoading: true,connectionTimeOutError: false,wrongUser: false,errorOccured: false,loggingSucess: false));
      Map<String, dynamic> data = {
        'email': event.email,
        'password': event.password
      };
      try{
        Response response = await Dio(BaseOptions()).post("https://reqres.in/api/login",data: jsonEncode(data),);
        if(response.statusCode==200||response.statusCode==201){
          return emit(state.copyWith(loggingSucess: true));
        }
      }on DioError catch(e){
        if (e.response != null) {
          if(e.response!.data['error']=='user not found'){
            return emit(state.copyWith(isLoading: false,wrongUser: true));
          }else{
            return emit(state.copyWith(isLoading: false,errorOccured: true));
          }
    } else {
      if(e.type==DioErrorType.connectTimeout||e.type==DioErrorType.other){
        return emit(state.copyWith(connectionTimeOutError: true,isLoading: false));
      }else{
        return emit(state.copyWith(errorOccured: true,isLoading: false));
      }
    }
      }
    });
  }
}
