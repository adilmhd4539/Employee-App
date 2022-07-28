part of 'employee_bloc.dart';

@freezed
class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.getEmployees() = GetEmployees;
  const factory EmployeeEvent.addNewEmployee(String name,String job)= AddNewEmployee;
}