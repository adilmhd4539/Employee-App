// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployees,
    required TResult Function(String name, String job) addNewEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getEmployees,
    TResult Function(String name, String job)? addNewEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployees,
    TResult Function(String name, String job)? addNewEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployees,
    required TResult Function(AddNewEmployee value) addNewEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployees,
    TResult Function(AddNewEmployee value)? addNewEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployees,
    TResult Function(AddNewEmployee value)? addNewEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEventCopyWith<$Res> {
  factory $EmployeeEventCopyWith(
          EmployeeEvent value, $Res Function(EmployeeEvent) then) =
      _$EmployeeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmployeeEventCopyWithImpl<$Res>
    implements $EmployeeEventCopyWith<$Res> {
  _$EmployeeEventCopyWithImpl(this._value, this._then);

  final EmployeeEvent _value;
  // ignore: unused_field
  final $Res Function(EmployeeEvent) _then;
}

/// @nodoc
abstract class _$$GetEmployeesCopyWith<$Res> {
  factory _$$GetEmployeesCopyWith(
          _$GetEmployees value, $Res Function(_$GetEmployees) then) =
      __$$GetEmployeesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEmployeesCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$$GetEmployeesCopyWith<$Res> {
  __$$GetEmployeesCopyWithImpl(
      _$GetEmployees _value, $Res Function(_$GetEmployees) _then)
      : super(_value, (v) => _then(v as _$GetEmployees));

  @override
  _$GetEmployees get _value => super._value as _$GetEmployees;
}

/// @nodoc

class _$GetEmployees with DiagnosticableTreeMixin implements GetEmployees {
  const _$GetEmployees();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmployeeEvent.getEmployees()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'EmployeeEvent.getEmployees'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEmployees);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployees,
    required TResult Function(String name, String job) addNewEmployee,
  }) {
    return getEmployees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getEmployees,
    TResult Function(String name, String job)? addNewEmployee,
  }) {
    return getEmployees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployees,
    TResult Function(String name, String job)? addNewEmployee,
    required TResult orElse(),
  }) {
    if (getEmployees != null) {
      return getEmployees();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployees,
    required TResult Function(AddNewEmployee value) addNewEmployee,
  }) {
    return getEmployees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployees,
    TResult Function(AddNewEmployee value)? addNewEmployee,
  }) {
    return getEmployees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployees,
    TResult Function(AddNewEmployee value)? addNewEmployee,
    required TResult orElse(),
  }) {
    if (getEmployees != null) {
      return getEmployees(this);
    }
    return orElse();
  }
}

abstract class GetEmployees implements EmployeeEvent {
  const factory GetEmployees() = _$GetEmployees;
}

/// @nodoc
abstract class _$$AddNewEmployeeCopyWith<$Res> {
  factory _$$AddNewEmployeeCopyWith(
          _$AddNewEmployee value, $Res Function(_$AddNewEmployee) then) =
      __$$AddNewEmployeeCopyWithImpl<$Res>;
  $Res call({String name, String job});
}

/// @nodoc
class __$$AddNewEmployeeCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$$AddNewEmployeeCopyWith<$Res> {
  __$$AddNewEmployeeCopyWithImpl(
      _$AddNewEmployee _value, $Res Function(_$AddNewEmployee) _then)
      : super(_value, (v) => _then(v as _$AddNewEmployee));

  @override
  _$AddNewEmployee get _value => super._value as _$AddNewEmployee;

  @override
  $Res call({
    Object? name = freezed,
    Object? job = freezed,
  }) {
    return _then(_$AddNewEmployee(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNewEmployee with DiagnosticableTreeMixin implements AddNewEmployee {
  const _$AddNewEmployee(this.name, this.job);

  @override
  final String name;
  @override
  final String job;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmployeeEvent.addNewEmployee(name: $name, job: $job)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmployeeEvent.addNewEmployee'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('job', job));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewEmployee &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.job, job));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(job));

  @JsonKey(ignore: true)
  @override
  _$$AddNewEmployeeCopyWith<_$AddNewEmployee> get copyWith =>
      __$$AddNewEmployeeCopyWithImpl<_$AddNewEmployee>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployees,
    required TResult Function(String name, String job) addNewEmployee,
  }) {
    return addNewEmployee(name, job);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getEmployees,
    TResult Function(String name, String job)? addNewEmployee,
  }) {
    return addNewEmployee?.call(name, job);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployees,
    TResult Function(String name, String job)? addNewEmployee,
    required TResult orElse(),
  }) {
    if (addNewEmployee != null) {
      return addNewEmployee(name, job);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployees,
    required TResult Function(AddNewEmployee value) addNewEmployee,
  }) {
    return addNewEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployees,
    TResult Function(AddNewEmployee value)? addNewEmployee,
  }) {
    return addNewEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployees,
    TResult Function(AddNewEmployee value)? addNewEmployee,
    required TResult orElse(),
  }) {
    if (addNewEmployee != null) {
      return addNewEmployee(this);
    }
    return orElse();
  }
}

abstract class AddNewEmployee implements EmployeeEvent {
  const factory AddNewEmployee(final String name, final String job) =
      _$AddNewEmployee;

  String get name;
  String get job;
  @JsonKey(ignore: true)
  _$$AddNewEmployeeCopyWith<_$AddNewEmployee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeState {
  int get currentLoadingPage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get dataFeachingError => throw _privateConstructorUsedError;
  bool get connectionError => throw _privateConstructorUsedError;
  bool get isAddingNewEmployee => throw _privateConstructorUsedError;
  bool get newEmployeeAddedSucessfully => throw _privateConstructorUsedError;
  bool get addingEmployeeFaild => throw _privateConstructorUsedError;
  List<EmployeeModel> get employees => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeStateCopyWith<EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeStateCopyWith<$Res> {
  factory $EmployeeStateCopyWith(
          EmployeeState value, $Res Function(EmployeeState) then) =
      _$EmployeeStateCopyWithImpl<$Res>;
  $Res call(
      {int currentLoadingPage,
      bool isLoading,
      bool dataFeachingError,
      bool connectionError,
      bool isAddingNewEmployee,
      bool newEmployeeAddedSucessfully,
      bool addingEmployeeFaild,
      List<EmployeeModel> employees});
}

/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._value, this._then);

  final EmployeeState _value;
  // ignore: unused_field
  final $Res Function(EmployeeState) _then;

  @override
  $Res call({
    Object? currentLoadingPage = freezed,
    Object? isLoading = freezed,
    Object? dataFeachingError = freezed,
    Object? connectionError = freezed,
    Object? isAddingNewEmployee = freezed,
    Object? newEmployeeAddedSucessfully = freezed,
    Object? addingEmployeeFaild = freezed,
    Object? employees = freezed,
  }) {
    return _then(_value.copyWith(
      currentLoadingPage: currentLoadingPage == freezed
          ? _value.currentLoadingPage
          : currentLoadingPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      dataFeachingError: dataFeachingError == freezed
          ? _value.dataFeachingError
          : dataFeachingError // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionError: connectionError == freezed
          ? _value.connectionError
          : connectionError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddingNewEmployee: isAddingNewEmployee == freezed
          ? _value.isAddingNewEmployee
          : isAddingNewEmployee // ignore: cast_nullable_to_non_nullable
              as bool,
      newEmployeeAddedSucessfully: newEmployeeAddedSucessfully == freezed
          ? _value.newEmployeeAddedSucessfully
          : newEmployeeAddedSucessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      addingEmployeeFaild: addingEmployeeFaild == freezed
          ? _value.addingEmployeeFaild
          : addingEmployeeFaild // ignore: cast_nullable_to_non_nullable
              as bool,
      employees: employees == freezed
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeeStateCopyWith<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  factory _$$_EmployeeStateCopyWith(
          _$_EmployeeState value, $Res Function(_$_EmployeeState) then) =
      __$$_EmployeeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentLoadingPage,
      bool isLoading,
      bool dataFeachingError,
      bool connectionError,
      bool isAddingNewEmployee,
      bool newEmployeeAddedSucessfully,
      bool addingEmployeeFaild,
      List<EmployeeModel> employees});
}

/// @nodoc
class __$$_EmployeeStateCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res>
    implements _$$_EmployeeStateCopyWith<$Res> {
  __$$_EmployeeStateCopyWithImpl(
      _$_EmployeeState _value, $Res Function(_$_EmployeeState) _then)
      : super(_value, (v) => _then(v as _$_EmployeeState));

  @override
  _$_EmployeeState get _value => super._value as _$_EmployeeState;

  @override
  $Res call({
    Object? currentLoadingPage = freezed,
    Object? isLoading = freezed,
    Object? dataFeachingError = freezed,
    Object? connectionError = freezed,
    Object? isAddingNewEmployee = freezed,
    Object? newEmployeeAddedSucessfully = freezed,
    Object? addingEmployeeFaild = freezed,
    Object? employees = freezed,
  }) {
    return _then(_$_EmployeeState(
      currentLoadingPage: currentLoadingPage == freezed
          ? _value.currentLoadingPage
          : currentLoadingPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      dataFeachingError: dataFeachingError == freezed
          ? _value.dataFeachingError
          : dataFeachingError // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionError: connectionError == freezed
          ? _value.connectionError
          : connectionError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddingNewEmployee: isAddingNewEmployee == freezed
          ? _value.isAddingNewEmployee
          : isAddingNewEmployee // ignore: cast_nullable_to_non_nullable
              as bool,
      newEmployeeAddedSucessfully: newEmployeeAddedSucessfully == freezed
          ? _value.newEmployeeAddedSucessfully
          : newEmployeeAddedSucessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      addingEmployeeFaild: addingEmployeeFaild == freezed
          ? _value.addingEmployeeFaild
          : addingEmployeeFaild // ignore: cast_nullable_to_non_nullable
              as bool,
      employees: employees == freezed
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
    ));
  }
}

/// @nodoc

class _$_EmployeeState with DiagnosticableTreeMixin implements _EmployeeState {
  const _$_EmployeeState(
      {required this.currentLoadingPage,
      required this.isLoading,
      required this.dataFeachingError,
      required this.connectionError,
      required this.isAddingNewEmployee,
      required this.newEmployeeAddedSucessfully,
      required this.addingEmployeeFaild,
      required final List<EmployeeModel> employees})
      : _employees = employees;

  @override
  final int currentLoadingPage;
  @override
  final bool isLoading;
  @override
  final bool dataFeachingError;
  @override
  final bool connectionError;
  @override
  final bool isAddingNewEmployee;
  @override
  final bool newEmployeeAddedSucessfully;
  @override
  final bool addingEmployeeFaild;
  final List<EmployeeModel> _employees;
  @override
  List<EmployeeModel> get employees {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmployeeState(currentLoadingPage: $currentLoadingPage, isLoading: $isLoading, dataFeachingError: $dataFeachingError, connectionError: $connectionError, isAddingNewEmployee: $isAddingNewEmployee, newEmployeeAddedSucessfully: $newEmployeeAddedSucessfully, addingEmployeeFaild: $addingEmployeeFaild, employees: $employees)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmployeeState'))
      ..add(DiagnosticsProperty('currentLoadingPage', currentLoadingPage))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('dataFeachingError', dataFeachingError))
      ..add(DiagnosticsProperty('connectionError', connectionError))
      ..add(DiagnosticsProperty('isAddingNewEmployee', isAddingNewEmployee))
      ..add(DiagnosticsProperty(
          'newEmployeeAddedSucessfully', newEmployeeAddedSucessfully))
      ..add(DiagnosticsProperty('addingEmployeeFaild', addingEmployeeFaild))
      ..add(DiagnosticsProperty('employees', employees));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeState &&
            const DeepCollectionEquality()
                .equals(other.currentLoadingPage, currentLoadingPage) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.dataFeachingError, dataFeachingError) &&
            const DeepCollectionEquality()
                .equals(other.connectionError, connectionError) &&
            const DeepCollectionEquality()
                .equals(other.isAddingNewEmployee, isAddingNewEmployee) &&
            const DeepCollectionEquality().equals(
                other.newEmployeeAddedSucessfully,
                newEmployeeAddedSucessfully) &&
            const DeepCollectionEquality()
                .equals(other.addingEmployeeFaild, addingEmployeeFaild) &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentLoadingPage),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(dataFeachingError),
      const DeepCollectionEquality().hash(connectionError),
      const DeepCollectionEquality().hash(isAddingNewEmployee),
      const DeepCollectionEquality().hash(newEmployeeAddedSucessfully),
      const DeepCollectionEquality().hash(addingEmployeeFaild),
      const DeepCollectionEquality().hash(_employees));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeeStateCopyWith<_$_EmployeeState> get copyWith =>
      __$$_EmployeeStateCopyWithImpl<_$_EmployeeState>(this, _$identity);
}

abstract class _EmployeeState implements EmployeeState {
  const factory _EmployeeState(
      {required final int currentLoadingPage,
      required final bool isLoading,
      required final bool dataFeachingError,
      required final bool connectionError,
      required final bool isAddingNewEmployee,
      required final bool newEmployeeAddedSucessfully,
      required final bool addingEmployeeFaild,
      required final List<EmployeeModel> employees}) = _$_EmployeeState;

  @override
  int get currentLoadingPage;
  @override
  bool get isLoading;
  @override
  bool get dataFeachingError;
  @override
  bool get connectionError;
  @override
  bool get isAddingNewEmployee;
  @override
  bool get newEmployeeAddedSucessfully;
  @override
  bool get addingEmployeeFaild;
  @override
  List<EmployeeModel> get employees;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeStateCopyWith<_$_EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}
