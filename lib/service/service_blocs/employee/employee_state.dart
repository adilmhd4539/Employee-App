part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState({
    required int  currentLoadingPage,
    required bool isLoading,
    required bool dataFeachingError,
    required bool connectionError,
    required bool isAddingNewEmployee,
    required bool newEmployeeAddedSucessfully,
    required bool addingEmployeeFaild,
    required List<EmployeeModel> employees
  }) = _EmployeeState;

  factory EmployeeState.initial() => const EmployeeState(
      currentLoadingPage: 0,
      isLoading: false,
      dataFeachingError: false,
      connectionError: false,
      employees: [],
      addingEmployeeFaild: false,
      isAddingNewEmployee: false,
      newEmployeeAddedSucessfully: false
      );
}
