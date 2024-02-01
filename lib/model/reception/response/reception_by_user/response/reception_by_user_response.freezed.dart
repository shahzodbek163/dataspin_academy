// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reception_by_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceptionByUserResponse _$ReceptionByUserResponseFromJson(
    Map<String, dynamic> json) {
  return _ReceptionByUserResponse.fromJson(json);
}

/// @nodoc
mixin _$ReceptionByUserResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<ReceptionByUserData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceptionByUserResponseCopyWith<ReceptionByUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceptionByUserResponseCopyWith<$Res> {
  factory $ReceptionByUserResponseCopyWith(ReceptionByUserResponse value,
          $Res Function(ReceptionByUserResponse) then) =
      _$ReceptionByUserResponseCopyWithImpl<$Res, ReceptionByUserResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<ReceptionByUserData> data});
}

/// @nodoc
class _$ReceptionByUserResponseCopyWithImpl<$Res,
        $Val extends ReceptionByUserResponse>
    implements $ReceptionByUserResponseCopyWith<$Res> {
  _$ReceptionByUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReceptionByUserData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceptionByUserResponseImplCopyWith<$Res>
    implements $ReceptionByUserResponseCopyWith<$Res> {
  factory _$$ReceptionByUserResponseImplCopyWith(
          _$ReceptionByUserResponseImpl value,
          $Res Function(_$ReceptionByUserResponseImpl) then) =
      __$$ReceptionByUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<ReceptionByUserData> data});
}

/// @nodoc
class __$$ReceptionByUserResponseImplCopyWithImpl<$Res>
    extends _$ReceptionByUserResponseCopyWithImpl<$Res,
        _$ReceptionByUserResponseImpl>
    implements _$$ReceptionByUserResponseImplCopyWith<$Res> {
  __$$ReceptionByUserResponseImplCopyWithImpl(
      _$ReceptionByUserResponseImpl _value,
      $Res Function(_$ReceptionByUserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$ReceptionByUserResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReceptionByUserData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceptionByUserResponseImpl implements _ReceptionByUserResponse {
  const _$ReceptionByUserResponseImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required final List<ReceptionByUserData> data})
      : _data = data;

  factory _$ReceptionByUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceptionByUserResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<ReceptionByUserData> _data;
  @override
  @JsonKey(name: "data")
  List<ReceptionByUserData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ReceptionByUserResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceptionByUserResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceptionByUserResponseImplCopyWith<_$ReceptionByUserResponseImpl>
      get copyWith => __$$ReceptionByUserResponseImplCopyWithImpl<
          _$ReceptionByUserResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceptionByUserResponseImplToJson(
      this,
    );
  }
}

abstract class _ReceptionByUserResponse implements ReceptionByUserResponse {
  const factory _ReceptionByUserResponse(
          {@JsonKey(name: "status") required final bool status,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data")
          required final List<ReceptionByUserData> data}) =
      _$ReceptionByUserResponseImpl;

  factory _ReceptionByUserResponse.fromJson(Map<String, dynamic> json) =
      _$ReceptionByUserResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  List<ReceptionByUserData> get data;
  @override
  @JsonKey(ignore: true)
  _$$ReceptionByUserResponseImplCopyWith<_$ReceptionByUserResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReceptionByUserData _$ReceptionByUserDataFromJson(Map<String, dynamic> json) {
  return _ReceptionByUserData.fromJson(json);
}

/// @nodoc
mixin _$ReceptionByUserData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userInfo")
  AccountData get userInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "courseName")
  String get courseName => throw _privateConstructorUsedError;
  @JsonKey(name: "receptionNumber")
  String get receptionNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "courseFor")
  Course get courseFor => throw _privateConstructorUsedError;
  @JsonKey(name: "courseType")
  CourseType get courseType => throw _privateConstructorUsedError;
  @JsonKey(name: "employee")
  Employee get employee => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  dynamic get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceptionByUserDataCopyWith<ReceptionByUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceptionByUserDataCopyWith<$Res> {
  factory $ReceptionByUserDataCopyWith(
          ReceptionByUserData value, $Res Function(ReceptionByUserData) then) =
      _$ReceptionByUserDataCopyWithImpl<$Res, ReceptionByUserData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "userInfo") AccountData userInfo,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "courseName") String courseName,
      @JsonKey(name: "receptionNumber") String receptionNumber,
      @JsonKey(name: "courseFor") Course courseFor,
      @JsonKey(name: "courseType") CourseType courseType,
      @JsonKey(name: "employee") Employee employee,
      @JsonKey(name: "description") dynamic description});

  $AccountDataCopyWith<$Res> get userInfo;
  $CourseCopyWith<$Res> get courseFor;
  $CourseTypeCopyWith<$Res> get courseType;
  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class _$ReceptionByUserDataCopyWithImpl<$Res, $Val extends ReceptionByUserData>
    implements $ReceptionByUserDataCopyWith<$Res> {
  _$ReceptionByUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userInfo = null,
    Object? date = null,
    Object? courseName = null,
    Object? receptionNumber = null,
    Object? courseFor = null,
    Object? courseType = null,
    Object? employee = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as AccountData,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      receptionNumber: null == receptionNumber
          ? _value.receptionNumber
          : receptionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      courseFor: null == courseFor
          ? _value.courseFor
          : courseFor // ignore: cast_nullable_to_non_nullable
              as Course,
      courseType: null == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as CourseType,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountDataCopyWith<$Res> get userInfo {
    return $AccountDataCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseCopyWith<$Res> get courseFor {
    return $CourseCopyWith<$Res>(_value.courseFor, (value) {
      return _then(_value.copyWith(courseFor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseTypeCopyWith<$Res> get courseType {
    return $CourseTypeCopyWith<$Res>(_value.courseType, (value) {
      return _then(_value.copyWith(courseType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get employee {
    return $EmployeeCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReceptionByUserDataImplCopyWith<$Res>
    implements $ReceptionByUserDataCopyWith<$Res> {
  factory _$$ReceptionByUserDataImplCopyWith(_$ReceptionByUserDataImpl value,
          $Res Function(_$ReceptionByUserDataImpl) then) =
      __$$ReceptionByUserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "userInfo") AccountData userInfo,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "courseName") String courseName,
      @JsonKey(name: "receptionNumber") String receptionNumber,
      @JsonKey(name: "courseFor") Course courseFor,
      @JsonKey(name: "courseType") CourseType courseType,
      @JsonKey(name: "employee") Employee employee,
      @JsonKey(name: "description") dynamic description});

  @override
  $AccountDataCopyWith<$Res> get userInfo;
  @override
  $CourseCopyWith<$Res> get courseFor;
  @override
  $CourseTypeCopyWith<$Res> get courseType;
  @override
  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$ReceptionByUserDataImplCopyWithImpl<$Res>
    extends _$ReceptionByUserDataCopyWithImpl<$Res, _$ReceptionByUserDataImpl>
    implements _$$ReceptionByUserDataImplCopyWith<$Res> {
  __$$ReceptionByUserDataImplCopyWithImpl(_$ReceptionByUserDataImpl _value,
      $Res Function(_$ReceptionByUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userInfo = null,
    Object? date = null,
    Object? courseName = null,
    Object? receptionNumber = null,
    Object? courseFor = null,
    Object? courseType = null,
    Object? employee = null,
    Object? description = freezed,
  }) {
    return _then(_$ReceptionByUserDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as AccountData,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      receptionNumber: null == receptionNumber
          ? _value.receptionNumber
          : receptionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      courseFor: null == courseFor
          ? _value.courseFor
          : courseFor // ignore: cast_nullable_to_non_nullable
              as Course,
      courseType: null == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as CourseType,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceptionByUserDataImpl implements _ReceptionByUserData {
  const _$ReceptionByUserDataImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "userInfo") required this.userInfo,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "courseName") required this.courseName,
      @JsonKey(name: "receptionNumber") required this.receptionNumber,
      @JsonKey(name: "courseFor") required this.courseFor,
      @JsonKey(name: "courseType") required this.courseType,
      @JsonKey(name: "employee") required this.employee,
      @JsonKey(name: "description") this.description});

  factory _$ReceptionByUserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceptionByUserDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "userInfo")
  final AccountData userInfo;
  @override
  @JsonKey(name: "date")
  final DateTime date;
  @override
  @JsonKey(name: "courseName")
  final String courseName;
  @override
  @JsonKey(name: "receptionNumber")
  final String receptionNumber;
  @override
  @JsonKey(name: "courseFor")
  final Course courseFor;
  @override
  @JsonKey(name: "courseType")
  final CourseType courseType;
  @override
  @JsonKey(name: "employee")
  final Employee employee;
  @override
  @JsonKey(name: "description")
  final dynamic description;

  @override
  String toString() {
    return 'ReceptionByUserData(id: $id, userInfo: $userInfo, date: $date, courseName: $courseName, receptionNumber: $receptionNumber, courseFor: $courseFor, courseType: $courseType, employee: $employee, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceptionByUserDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.receptionNumber, receptionNumber) ||
                other.receptionNumber == receptionNumber) &&
            (identical(other.courseFor, courseFor) ||
                other.courseFor == courseFor) &&
            (identical(other.courseType, courseType) ||
                other.courseType == courseType) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userInfo,
      date,
      courseName,
      receptionNumber,
      courseFor,
      courseType,
      employee,
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceptionByUserDataImplCopyWith<_$ReceptionByUserDataImpl> get copyWith =>
      __$$ReceptionByUserDataImplCopyWithImpl<_$ReceptionByUserDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceptionByUserDataImplToJson(
      this,
    );
  }
}

abstract class _ReceptionByUserData implements ReceptionByUserData {
  const factory _ReceptionByUserData(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "userInfo") required final AccountData userInfo,
      @JsonKey(name: "date") required final DateTime date,
      @JsonKey(name: "courseName") required final String courseName,
      @JsonKey(name: "receptionNumber") required final String receptionNumber,
      @JsonKey(name: "courseFor") required final Course courseFor,
      @JsonKey(name: "courseType") required final CourseType courseType,
      @JsonKey(name: "employee") required final Employee employee,
      @JsonKey(name: "description")
      final dynamic description}) = _$ReceptionByUserDataImpl;

  factory _ReceptionByUserData.fromJson(Map<String, dynamic> json) =
      _$ReceptionByUserDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "userInfo")
  AccountData get userInfo;
  @override
  @JsonKey(name: "date")
  DateTime get date;
  @override
  @JsonKey(name: "courseName")
  String get courseName;
  @override
  @JsonKey(name: "receptionNumber")
  String get receptionNumber;
  @override
  @JsonKey(name: "courseFor")
  Course get courseFor;
  @override
  @JsonKey(name: "courseType")
  CourseType get courseType;
  @override
  @JsonKey(name: "employee")
  Employee get employee;
  @override
  @JsonKey(name: "description")
  dynamic get description;
  @override
  @JsonKey(ignore: true)
  _$$ReceptionByUserDataImplCopyWith<_$ReceptionByUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? date = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? date = null,
    Object? description = freezed,
  }) {
    return _then(_$CourseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "description") this.description});

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "date")
  final DateTime date;
  @override
  @JsonKey(name: "description")
  final String? description;

  @override
  String toString() {
    return 'Course(name: $name, id: $id, date: $date, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, date, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "id") required final int id,
      @JsonKey(name: "date") required final DateTime date,
      @JsonKey(name: "description") final String? description}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "date")
  DateTime get date;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseType _$CourseTypeFromJson(Map<String, dynamic> json) {
  return _CourseType.fromJson(json);
}

/// @nodoc
mixin _$CourseType {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "photo")
  Photo get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "courseTags")
  List<Course> get courseTags => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseTypeCopyWith<CourseType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTypeCopyWith<$Res> {
  factory $CourseTypeCopyWith(
          CourseType value, $Res Function(CourseType) then) =
      _$CourseTypeCopyWithImpl<$Res, CourseType>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "photo") Photo photo,
      @JsonKey(name: "courseTags") List<Course> courseTags,
      @JsonKey(name: "description") String description});

  $PhotoCopyWith<$Res> get photo;
}

/// @nodoc
class _$CourseTypeCopyWithImpl<$Res, $Val extends CourseType>
    implements $CourseTypeCopyWith<$Res> {
  _$CourseTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? date = null,
    Object? photo = null,
    Object? courseTags = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
      courseTags: null == courseTags
          ? _value.courseTags
          : courseTags // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res> get photo {
    return $PhotoCopyWith<$Res>(_value.photo, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseTypeImplCopyWith<$Res>
    implements $CourseTypeCopyWith<$Res> {
  factory _$$CourseTypeImplCopyWith(
          _$CourseTypeImpl value, $Res Function(_$CourseTypeImpl) then) =
      __$$CourseTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "photo") Photo photo,
      @JsonKey(name: "courseTags") List<Course> courseTags,
      @JsonKey(name: "description") String description});

  @override
  $PhotoCopyWith<$Res> get photo;
}

/// @nodoc
class __$$CourseTypeImplCopyWithImpl<$Res>
    extends _$CourseTypeCopyWithImpl<$Res, _$CourseTypeImpl>
    implements _$$CourseTypeImplCopyWith<$Res> {
  __$$CourseTypeImplCopyWithImpl(
      _$CourseTypeImpl _value, $Res Function(_$CourseTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? date = null,
    Object? photo = null,
    Object? courseTags = null,
    Object? description = null,
  }) {
    return _then(_$CourseTypeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
      courseTags: null == courseTags
          ? _value._courseTags
          : courseTags // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseTypeImpl implements _CourseType {
  const _$CourseTypeImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "photo") required this.photo,
      @JsonKey(name: "courseTags") required final List<Course> courseTags,
      @JsonKey(name: "description") required this.description})
      : _courseTags = courseTags;

  factory _$CourseTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseTypeImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "date")
  final DateTime date;
  @override
  @JsonKey(name: "photo")
  final Photo photo;
  final List<Course> _courseTags;
  @override
  @JsonKey(name: "courseTags")
  List<Course> get courseTags {
    if (_courseTags is EqualUnmodifiableListView) return _courseTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courseTags);
  }

  @override
  @JsonKey(name: "description")
  final String description;

  @override
  String toString() {
    return 'CourseType(name: $name, id: $id, date: $date, photo: $photo, courseTags: $courseTags, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTypeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality()
                .equals(other._courseTags, _courseTags) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, date, photo,
      const DeepCollectionEquality().hash(_courseTags), description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTypeImplCopyWith<_$CourseTypeImpl> get copyWith =>
      __$$CourseTypeImplCopyWithImpl<_$CourseTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseTypeImplToJson(
      this,
    );
  }
}

abstract class _CourseType implements CourseType {
  const factory _CourseType(
          {@JsonKey(name: "name") required final String name,
          @JsonKey(name: "id") required final int id,
          @JsonKey(name: "date") required final DateTime date,
          @JsonKey(name: "photo") required final Photo photo,
          @JsonKey(name: "courseTags") required final List<Course> courseTags,
          @JsonKey(name: "description") required final String description}) =
      _$CourseTypeImpl;

  factory _CourseType.fromJson(Map<String, dynamic> json) =
      _$CourseTypeImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "date")
  DateTime get date;
  @override
  @JsonKey(name: "photo")
  Photo get photo;
  @override
  @JsonKey(name: "courseTags")
  List<Course> get courseTags;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$CourseTypeImplCopyWith<_$CourseTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call({@JsonKey(name: "id") int id});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoImplCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$PhotoImplCopyWith(
          _$PhotoImpl value, $Res Function(_$PhotoImpl) then) =
      __$$PhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") int id});
}

/// @nodoc
class __$$PhotoImplCopyWithImpl<$Res>
    extends _$PhotoCopyWithImpl<$Res, _$PhotoImpl>
    implements _$$PhotoImplCopyWith<$Res> {
  __$$PhotoImplCopyWithImpl(
      _$PhotoImpl _value, $Res Function(_$PhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$PhotoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoImpl implements _Photo {
  const _$PhotoImpl({@JsonKey(name: "id") required this.id});

  factory _$PhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;

  @override
  String toString() {
    return 'Photo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      __$$PhotoImplCopyWithImpl<_$PhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoImplToJson(
      this,
    );
  }
}

abstract class _Photo implements Photo {
  const factory _Photo({@JsonKey(name: "id") required final int id}) =
      _$PhotoImpl;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$PhotoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return _Employee.fromJson(json);
}

/// @nodoc
mixin _$Employee {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "face")
  Face get face => throw _privateConstructorUsedError;
  @JsonKey(name: "about")
  String? get about => throw _privateConstructorUsedError;
  @JsonKey(name: "endDate")
  dynamic get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "photo")
  Photo get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "stuff")
  Stuff get stuff => throw _privateConstructorUsedError;
  @JsonKey(name: "practice")
  int get practice => throw _privateConstructorUsedError;
  @JsonKey(name: "isVerified")
  bool get isVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "startDate")
  DateTime get startDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeCopyWith<Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res, Employee>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "face") Face face,
      @JsonKey(name: "about") String? about,
      @JsonKey(name: "endDate") dynamic endDate,
      @JsonKey(name: "photo") Photo photo,
      @JsonKey(name: "stuff") Stuff stuff,
      @JsonKey(name: "practice") int practice,
      @JsonKey(name: "isVerified") bool isVerified,
      @JsonKey(name: "startDate") DateTime startDate});

  $FaceCopyWith<$Res> get face;
  $PhotoCopyWith<$Res> get photo;
  $StuffCopyWith<$Res> get stuff;
}

/// @nodoc
class _$EmployeeCopyWithImpl<$Res, $Val extends Employee>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? face = null,
    Object? about = freezed,
    Object? endDate = freezed,
    Object? photo = null,
    Object? stuff = null,
    Object? practice = null,
    Object? isVerified = null,
    Object? startDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      face: null == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as Face,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
      stuff: null == stuff
          ? _value.stuff
          : stuff // ignore: cast_nullable_to_non_nullable
              as Stuff,
      practice: null == practice
          ? _value.practice
          : practice // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FaceCopyWith<$Res> get face {
    return $FaceCopyWith<$Res>(_value.face, (value) {
      return _then(_value.copyWith(face: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res> get photo {
    return $PhotoCopyWith<$Res>(_value.photo, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StuffCopyWith<$Res> get stuff {
    return $StuffCopyWith<$Res>(_value.stuff, (value) {
      return _then(_value.copyWith(stuff: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmployeeImplCopyWith<$Res>
    implements $EmployeeCopyWith<$Res> {
  factory _$$EmployeeImplCopyWith(
          _$EmployeeImpl value, $Res Function(_$EmployeeImpl) then) =
      __$$EmployeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "face") Face face,
      @JsonKey(name: "about") String? about,
      @JsonKey(name: "endDate") dynamic endDate,
      @JsonKey(name: "photo") Photo photo,
      @JsonKey(name: "stuff") Stuff stuff,
      @JsonKey(name: "practice") int practice,
      @JsonKey(name: "isVerified") bool isVerified,
      @JsonKey(name: "startDate") DateTime startDate});

  @override
  $FaceCopyWith<$Res> get face;
  @override
  $PhotoCopyWith<$Res> get photo;
  @override
  $StuffCopyWith<$Res> get stuff;
}

/// @nodoc
class __$$EmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeCopyWithImpl<$Res, _$EmployeeImpl>
    implements _$$EmployeeImplCopyWith<$Res> {
  __$$EmployeeImplCopyWithImpl(
      _$EmployeeImpl _value, $Res Function(_$EmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? face = null,
    Object? about = freezed,
    Object? endDate = freezed,
    Object? photo = null,
    Object? stuff = null,
    Object? practice = null,
    Object? isVerified = null,
    Object? startDate = null,
  }) {
    return _then(_$EmployeeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      face: null == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as Face,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
      stuff: null == stuff
          ? _value.stuff
          : stuff // ignore: cast_nullable_to_non_nullable
              as Stuff,
      practice: null == practice
          ? _value.practice
          : practice // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeImpl implements _Employee {
  const _$EmployeeImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "face") required this.face,
      @JsonKey(name: "about") this.about,
      @JsonKey(name: "endDate") this.endDate,
      @JsonKey(name: "photo") required this.photo,
      @JsonKey(name: "stuff") required this.stuff,
      @JsonKey(name: "practice") required this.practice,
      @JsonKey(name: "isVerified") required this.isVerified,
      @JsonKey(name: "startDate") required this.startDate});

  factory _$EmployeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "face")
  final Face face;
  @override
  @JsonKey(name: "about")
  final String? about;
  @override
  @JsonKey(name: "endDate")
  final dynamic endDate;
  @override
  @JsonKey(name: "photo")
  final Photo photo;
  @override
  @JsonKey(name: "stuff")
  final Stuff stuff;
  @override
  @JsonKey(name: "practice")
  final int practice;
  @override
  @JsonKey(name: "isVerified")
  final bool isVerified;
  @override
  @JsonKey(name: "startDate")
  final DateTime startDate;

  @override
  String toString() {
    return 'Employee(id: $id, face: $face, about: $about, endDate: $endDate, photo: $photo, stuff: $stuff, practice: $practice, isVerified: $isVerified, startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.face, face) || other.face == face) &&
            (identical(other.about, about) || other.about == about) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.stuff, stuff) || other.stuff == stuff) &&
            (identical(other.practice, practice) ||
                other.practice == practice) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      face,
      about,
      const DeepCollectionEquality().hash(endDate),
      photo,
      stuff,
      practice,
      isVerified,
      startDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeImplCopyWith<_$EmployeeImpl> get copyWith =>
      __$$EmployeeImplCopyWithImpl<_$EmployeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeImplToJson(
      this,
    );
  }
}

abstract class _Employee implements Employee {
  const factory _Employee(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "face") required final Face face,
          @JsonKey(name: "about") final String? about,
          @JsonKey(name: "endDate") final dynamic endDate,
          @JsonKey(name: "photo") required final Photo photo,
          @JsonKey(name: "stuff") required final Stuff stuff,
          @JsonKey(name: "practice") required final int practice,
          @JsonKey(name: "isVerified") required final bool isVerified,
          @JsonKey(name: "startDate") required final DateTime startDate}) =
      _$EmployeeImpl;

  factory _Employee.fromJson(Map<String, dynamic> json) =
      _$EmployeeImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "face")
  Face get face;
  @override
  @JsonKey(name: "about")
  String? get about;
  @override
  @JsonKey(name: "endDate")
  dynamic get endDate;
  @override
  @JsonKey(name: "photo")
  Photo get photo;
  @override
  @JsonKey(name: "stuff")
  Stuff get stuff;
  @override
  @JsonKey(name: "practice")
  int get practice;
  @override
  @JsonKey(name: "isVerified")
  bool get isVerified;
  @override
  @JsonKey(name: "startDate")
  DateTime get startDate;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeImplCopyWith<_$EmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Face _$FaceFromJson(Map<String, dynamic> json) {
  return _Face.fromJson(json);
}

/// @nodoc
mixin _$Face {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "tel1")
  String get tel1 => throw _privateConstructorUsedError;
  @JsonKey(name: "tel2")
  String get tel2 => throw _privateConstructorUsedError;
  @JsonKey(name: "firstname")
  String get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: "lastname")
  String get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: "middlename")
  String? get middlename => throw _privateConstructorUsedError;
  @JsonKey(name: "birthday")
  DateTime get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: "passport")
  String get passport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaceCopyWith<Face> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceCopyWith<$Res> {
  factory $FaceCopyWith(Face value, $Res Function(Face) then) =
      _$FaceCopyWithImpl<$Res, Face>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "tel1") String tel1,
      @JsonKey(name: "tel2") String tel2,
      @JsonKey(name: "firstname") String firstname,
      @JsonKey(name: "lastname") String lastname,
      @JsonKey(name: "middlename") String? middlename,
      @JsonKey(name: "birthday") DateTime birthday,
      @JsonKey(name: "passport") String passport});
}

/// @nodoc
class _$FaceCopyWithImpl<$Res, $Val extends Face>
    implements $FaceCopyWith<$Res> {
  _$FaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? tel1 = null,
    Object? tel2 = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? middlename = freezed,
    Object? birthday = null,
    Object? passport = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tel1: null == tel1
          ? _value.tel1
          : tel1 // ignore: cast_nullable_to_non_nullable
              as String,
      tel2: null == tel2
          ? _value.tel2
          : tel2 // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      middlename: freezed == middlename
          ? _value.middlename
          : middlename // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      passport: null == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaceImplCopyWith<$Res> implements $FaceCopyWith<$Res> {
  factory _$$FaceImplCopyWith(
          _$FaceImpl value, $Res Function(_$FaceImpl) then) =
      __$$FaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "tel1") String tel1,
      @JsonKey(name: "tel2") String tel2,
      @JsonKey(name: "firstname") String firstname,
      @JsonKey(name: "lastname") String lastname,
      @JsonKey(name: "middlename") String? middlename,
      @JsonKey(name: "birthday") DateTime birthday,
      @JsonKey(name: "passport") String passport});
}

/// @nodoc
class __$$FaceImplCopyWithImpl<$Res>
    extends _$FaceCopyWithImpl<$Res, _$FaceImpl>
    implements _$$FaceImplCopyWith<$Res> {
  __$$FaceImplCopyWithImpl(_$FaceImpl _value, $Res Function(_$FaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? tel1 = null,
    Object? tel2 = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? middlename = freezed,
    Object? birthday = null,
    Object? passport = null,
  }) {
    return _then(_$FaceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tel1: null == tel1
          ? _value.tel1
          : tel1 // ignore: cast_nullable_to_non_nullable
              as String,
      tel2: null == tel2
          ? _value.tel2
          : tel2 // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      middlename: freezed == middlename
          ? _value.middlename
          : middlename // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      passport: null == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaceImpl implements _Face {
  const _$FaceImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "tel1") required this.tel1,
      @JsonKey(name: "tel2") required this.tel2,
      @JsonKey(name: "firstname") required this.firstname,
      @JsonKey(name: "lastname") required this.lastname,
      @JsonKey(name: "middlename") required this.middlename,
      @JsonKey(name: "birthday") required this.birthday,
      @JsonKey(name: "passport") required this.passport});

  factory _$FaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaceImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "date")
  final DateTime date;
  @override
  @JsonKey(name: "tel1")
  final String tel1;
  @override
  @JsonKey(name: "tel2")
  final String tel2;
  @override
  @JsonKey(name: "firstname")
  final String firstname;
  @override
  @JsonKey(name: "lastname")
  final String lastname;
  @override
  @JsonKey(name: "middlename")
  final String? middlename;
  @override
  @JsonKey(name: "birthday")
  final DateTime birthday;
  @override
  @JsonKey(name: "passport")
  final String passport;

  @override
  String toString() {
    return 'Face(id: $id, date: $date, tel1: $tel1, tel2: $tel2, firstname: $firstname, lastname: $lastname, middlename: $middlename, birthday: $birthday, passport: $passport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.tel1, tel1) || other.tel1 == tel1) &&
            (identical(other.tel2, tel2) || other.tel2 == tel2) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.middlename, middlename) ||
                other.middlename == middlename) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.passport, passport) ||
                other.passport == passport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, tel1, tel2, firstname,
      lastname, middlename, birthday, passport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaceImplCopyWith<_$FaceImpl> get copyWith =>
      __$$FaceImplCopyWithImpl<_$FaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaceImplToJson(
      this,
    );
  }
}

abstract class _Face implements Face {
  const factory _Face(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "date") required final DateTime date,
      @JsonKey(name: "tel1") required final String tel1,
      @JsonKey(name: "tel2") required final String tel2,
      @JsonKey(name: "firstname") required final String firstname,
      @JsonKey(name: "lastname") required final String lastname,
      @JsonKey(name: "middlename") required final String? middlename,
      @JsonKey(name: "birthday") required final DateTime birthday,
      @JsonKey(name: "passport") required final String passport}) = _$FaceImpl;

  factory _Face.fromJson(Map<String, dynamic> json) = _$FaceImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "date")
  DateTime get date;
  @override
  @JsonKey(name: "tel1")
  String get tel1;
  @override
  @JsonKey(name: "tel2")
  String get tel2;
  @override
  @JsonKey(name: "firstname")
  String get firstname;
  @override
  @JsonKey(name: "lastname")
  String get lastname;
  @override
  @JsonKey(name: "middlename")
  String? get middlename;
  @override
  @JsonKey(name: "birthday")
  DateTime get birthday;
  @override
  @JsonKey(name: "passport")
  String get passport;
  @override
  @JsonKey(ignore: true)
  _$$FaceImplCopyWith<_$FaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Stuff _$StuffFromJson(Map<String, dynamic> json) {
  return _Stuff.fromJson(json);
}

/// @nodoc
mixin _$Stuff {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StuffCopyWith<Stuff> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StuffCopyWith<$Res> {
  factory $StuffCopyWith(Stuff value, $Res Function(Stuff) then) =
      _$StuffCopyWithImpl<$Res, Stuff>;
  @useResult
  $Res call({@JsonKey(name: "name") String name, @JsonKey(name: "id") int id});
}

/// @nodoc
class _$StuffCopyWithImpl<$Res, $Val extends Stuff>
    implements $StuffCopyWith<$Res> {
  _$StuffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StuffImplCopyWith<$Res> implements $StuffCopyWith<$Res> {
  factory _$$StuffImplCopyWith(
          _$StuffImpl value, $Res Function(_$StuffImpl) then) =
      __$$StuffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") String name, @JsonKey(name: "id") int id});
}

/// @nodoc
class __$$StuffImplCopyWithImpl<$Res>
    extends _$StuffCopyWithImpl<$Res, _$StuffImpl>
    implements _$$StuffImplCopyWith<$Res> {
  __$$StuffImplCopyWithImpl(
      _$StuffImpl _value, $Res Function(_$StuffImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$StuffImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StuffImpl implements _Stuff {
  const _$StuffImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "id") required this.id});

  factory _$StuffImpl.fromJson(Map<String, dynamic> json) =>
      _$$StuffImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "id")
  final int id;

  @override
  String toString() {
    return 'Stuff(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StuffImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StuffImplCopyWith<_$StuffImpl> get copyWith =>
      __$$StuffImplCopyWithImpl<_$StuffImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StuffImplToJson(
      this,
    );
  }
}

abstract class _Stuff implements Stuff {
  const factory _Stuff(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "id") required final int id}) = _$StuffImpl;

  factory _Stuff.fromJson(Map<String, dynamic> json) = _$StuffImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$StuffImplCopyWith<_$StuffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
