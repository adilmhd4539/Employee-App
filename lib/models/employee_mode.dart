import 'package:freezed_annotation/freezed_annotation.dart';
part 'employee_mode.freezed.dart';
part 'employee_mode.g.dart';


@freezed
class EmployeeModel with _$EmployeeModel{
  const factory EmployeeModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "avatar") required String imageUrl,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);
}