// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mentor_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MentorResult _$MentorResultFromJson(Map<String, dynamic> json) {
  return _MentorResult.fromJson(json);
}

/// @nodoc
mixin _$MentorResult {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<MentorResultData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MentorResultCopyWith<MentorResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentorResultCopyWith<$Res> {
  factory $MentorResultCopyWith(
          MentorResult value, $Res Function(MentorResult) then) =
      _$MentorResultCopyWithImpl<$Res, MentorResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<MentorResultData> data});
}

/// @nodoc
class _$MentorResultCopyWithImpl<$Res, $Val extends MentorResult>
    implements $MentorResultCopyWith<$Res> {
  _$MentorResultCopyWithImpl(this._value, this._then);

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
              as List<MentorResultData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MentorResultImplCopyWith<$Res>
    implements $MentorResultCopyWith<$Res> {
  factory _$$MentorResultImplCopyWith(
          _$MentorResultImpl value, $Res Function(_$MentorResultImpl) then) =
      __$$MentorResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<MentorResultData> data});
}

/// @nodoc
class __$$MentorResultImplCopyWithImpl<$Res>
    extends _$MentorResultCopyWithImpl<$Res, _$MentorResultImpl>
    implements _$$MentorResultImplCopyWith<$Res> {
  __$$MentorResultImplCopyWithImpl(
      _$MentorResultImpl _value, $Res Function(_$MentorResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$MentorResultImpl(
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
              as List<MentorResultData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MentorResultImpl implements _MentorResult {
  const _$MentorResultImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required final List<MentorResultData> data})
      : _data = data;

  factory _$MentorResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorResultImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<MentorResultData> _data;
  @override
  @JsonKey(name: "data")
  List<MentorResultData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MentorResult(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentorResultImpl &&
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
  _$$MentorResultImplCopyWith<_$MentorResultImpl> get copyWith =>
      __$$MentorResultImplCopyWithImpl<_$MentorResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MentorResultImplToJson(
      this,
    );
  }
}

abstract class _MentorResult implements MentorResult {
  const factory _MentorResult(
          {@JsonKey(name: "status") required final bool status,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final List<MentorResultData> data}) =
      _$MentorResultImpl;

  factory _MentorResult.fromJson(Map<String, dynamic> json) =
      _$MentorResultImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  List<MentorResultData> get data;
  @override
  @JsonKey(ignore: true)
  _$$MentorResultImplCopyWith<_$MentorResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MentorResultData _$MentorResultDataFromJson(Map<String, dynamic> json) {
  return _MentorResultData.fromJson(json);
}

/// @nodoc
mixin _$MentorResultData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "courses")
  List<Course> get courses => throw _privateConstructorUsedError;
  @JsonKey(name: "subMentors")
  List<Employee> get subMentors => throw _privateConstructorUsedError;
  @JsonKey(name: "employee")
  Employee get employee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MentorResultDataCopyWith<MentorResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentorResultDataCopyWith<$Res> {
  factory $MentorResultDataCopyWith(
          MentorResultData value, $Res Function(MentorResultData) then) =
      _$MentorResultDataCopyWithImpl<$Res, MentorResultData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "courses") List<Course> courses,
      @JsonKey(name: "subMentors") List<Employee> subMentors,
      @JsonKey(name: "employee") Employee employee});

  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class _$MentorResultDataCopyWithImpl<$Res, $Val extends MentorResultData>
    implements $MentorResultDataCopyWith<$Res> {
  _$MentorResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? courses = null,
    Object? subMentors = null,
    Object? employee = null,
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
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      subMentors: null == subMentors
          ? _value.subMentors
          : subMentors // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ) as $Val);
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
abstract class _$$MentorResultDataImplCopyWith<$Res>
    implements $MentorResultDataCopyWith<$Res> {
  factory _$$MentorResultDataImplCopyWith(_$MentorResultDataImpl value,
          $Res Function(_$MentorResultDataImpl) then) =
      __$$MentorResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "courses") List<Course> courses,
      @JsonKey(name: "subMentors") List<Employee> subMentors,
      @JsonKey(name: "employee") Employee employee});

  @override
  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$MentorResultDataImplCopyWithImpl<$Res>
    extends _$MentorResultDataCopyWithImpl<$Res, _$MentorResultDataImpl>
    implements _$$MentorResultDataImplCopyWith<$Res> {
  __$$MentorResultDataImplCopyWithImpl(_$MentorResultDataImpl _value,
      $Res Function(_$MentorResultDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? courses = null,
    Object? subMentors = null,
    Object? employee = null,
  }) {
    return _then(_$MentorResultDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      subMentors: null == subMentors
          ? _value._subMentors
          : subMentors // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MentorResultDataImpl implements _MentorResultData {
  const _$MentorResultDataImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "courses") required final List<Course> courses,
      @JsonKey(name: "subMentors") required final List<Employee> subMentors,
      @JsonKey(name: "employee") required this.employee})
      : _courses = courses,
        _subMentors = subMentors;

  factory _$MentorResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorResultDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "date")
  final DateTime date;
  final List<Course> _courses;
  @override
  @JsonKey(name: "courses")
  List<Course> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  final List<Employee> _subMentors;
  @override
  @JsonKey(name: "subMentors")
  List<Employee> get subMentors {
    if (_subMentors is EqualUnmodifiableListView) return _subMentors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subMentors);
  }

  @override
  @JsonKey(name: "employee")
  final Employee employee;

  @override
  String toString() {
    return 'MentorResultData(id: $id, date: $date, courses: $courses, subMentors: $subMentors, employee: $employee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentorResultDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            const DeepCollectionEquality()
                .equals(other._subMentors, _subMentors) &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      const DeepCollectionEquality().hash(_courses),
      const DeepCollectionEquality().hash(_subMentors),
      employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentorResultDataImplCopyWith<_$MentorResultDataImpl> get copyWith =>
      __$$MentorResultDataImplCopyWithImpl<_$MentorResultDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MentorResultDataImplToJson(
      this,
    );
  }
}

abstract class _MentorResultData implements MentorResultData {
  const factory _MentorResultData(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "date") required final DateTime date,
          @JsonKey(name: "courses") required final List<Course> courses,
          @JsonKey(name: "subMentors") required final List<Employee> subMentors,
          @JsonKey(name: "employee") required final Employee employee}) =
      _$MentorResultDataImpl;

  factory _MentorResultData.fromJson(Map<String, dynamic> json) =
      _$MentorResultDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "date")
  DateTime get date;
  @override
  @JsonKey(name: "courses")
  List<Course> get courses;
  @override
  @JsonKey(name: "subMentors")
  List<Employee> get subMentors;
  @override
  @JsonKey(name: "employee")
  Employee get employee;
  @override
  @JsonKey(ignore: true)
  _$$MentorResultDataImplCopyWith<_$MentorResultDataImpl> get copyWith =>
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
  @JsonKey(name: "courseFor")
  CourseForElement get courseFor => throw _privateConstructorUsedError;
  @JsonKey(name: "courseType")
  CourseType get courseType => throw _privateConstructorUsedError;
  @JsonKey(name: "previewPhoto")
  Photo get previewPhoto => throw _privateConstructorUsedError;

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
      @JsonKey(name: "courseFor") CourseForElement courseFor,
      @JsonKey(name: "courseType") CourseType courseType,
      @JsonKey(name: "previewPhoto") Photo previewPhoto});

  $CourseForElementCopyWith<$Res> get courseFor;
  $CourseTypeCopyWith<$Res> get courseType;
  $PhotoCopyWith<$Res> get previewPhoto;
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
    Object? courseFor = null,
    Object? courseType = null,
    Object? previewPhoto = null,
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
      courseFor: null == courseFor
          ? _value.courseFor
          : courseFor // ignore: cast_nullable_to_non_nullable
              as CourseForElement,
      courseType: null == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as CourseType,
      previewPhoto: null == previewPhoto
          ? _value.previewPhoto
          : previewPhoto // ignore: cast_nullable_to_non_nullable
              as Photo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseForElementCopyWith<$Res> get courseFor {
    return $CourseForElementCopyWith<$Res>(_value.courseFor, (value) {
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
  $PhotoCopyWith<$Res> get previewPhoto {
    return $PhotoCopyWith<$Res>(_value.previewPhoto, (value) {
      return _then(_value.copyWith(previewPhoto: value) as $Val);
    });
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
      @JsonKey(name: "courseFor") CourseForElement courseFor,
      @JsonKey(name: "courseType") CourseType courseType,
      @JsonKey(name: "previewPhoto") Photo previewPhoto});

  @override
  $CourseForElementCopyWith<$Res> get courseFor;
  @override
  $CourseTypeCopyWith<$Res> get courseType;
  @override
  $PhotoCopyWith<$Res> get previewPhoto;
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
    Object? courseFor = null,
    Object? courseType = null,
    Object? previewPhoto = null,
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
      courseFor: null == courseFor
          ? _value.courseFor
          : courseFor // ignore: cast_nullable_to_non_nullable
              as CourseForElement,
      courseType: null == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as CourseType,
      previewPhoto: null == previewPhoto
          ? _value.previewPhoto
          : previewPhoto // ignore: cast_nullable_to_non_nullable
              as Photo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "courseFor") required this.courseFor,
      @JsonKey(name: "courseType") required this.courseType,
      @JsonKey(name: "previewPhoto") required this.previewPhoto});

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "courseFor")
  final CourseForElement courseFor;
  @override
  @JsonKey(name: "courseType")
  final CourseType courseType;
  @override
  @JsonKey(name: "previewPhoto")
  final Photo previewPhoto;

  @override
  String toString() {
    return 'Course(name: $name, id: $id, courseFor: $courseFor, courseType: $courseType, previewPhoto: $previewPhoto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseFor, courseFor) ||
                other.courseFor == courseFor) &&
            (identical(other.courseType, courseType) ||
                other.courseType == courseType) &&
            (identical(other.previewPhoto, previewPhoto) ||
                other.previewPhoto == previewPhoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, id, courseFor, courseType, previewPhoto);

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
          @JsonKey(name: "courseFor") required final CourseForElement courseFor,
          @JsonKey(name: "courseType") required final CourseType courseType,
          @JsonKey(name: "previewPhoto") required final Photo previewPhoto}) =
      _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "courseFor")
  CourseForElement get courseFor;
  @override
  @JsonKey(name: "courseType")
  CourseType get courseType;
  @override
  @JsonKey(name: "previewPhoto")
  Photo get previewPhoto;
  @override
  @JsonKey(ignore: true)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseForElement _$CourseForElementFromJson(Map<String, dynamic> json) {
  return _CourseForElement.fromJson(json);
}

/// @nodoc
mixin _$CourseForElement {
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
  $CourseForElementCopyWith<CourseForElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseForElementCopyWith<$Res> {
  factory $CourseForElementCopyWith(
          CourseForElement value, $Res Function(CourseForElement) then) =
      _$CourseForElementCopyWithImpl<$Res, CourseForElement>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class _$CourseForElementCopyWithImpl<$Res, $Val extends CourseForElement>
    implements $CourseForElementCopyWith<$Res> {
  _$CourseForElementCopyWithImpl(this._value, this._then);

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
abstract class _$$CourseForElementImplCopyWith<$Res>
    implements $CourseForElementCopyWith<$Res> {
  factory _$$CourseForElementImplCopyWith(_$CourseForElementImpl value,
          $Res Function(_$CourseForElementImpl) then) =
      __$$CourseForElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class __$$CourseForElementImplCopyWithImpl<$Res>
    extends _$CourseForElementCopyWithImpl<$Res, _$CourseForElementImpl>
    implements _$$CourseForElementImplCopyWith<$Res> {
  __$$CourseForElementImplCopyWithImpl(_$CourseForElementImpl _value,
      $Res Function(_$CourseForElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? date = null,
    Object? description = freezed,
  }) {
    return _then(_$CourseForElementImpl(
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
class _$CourseForElementImpl implements _CourseForElement {
  const _$CourseForElementImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "description") this.description});

  factory _$CourseForElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseForElementImplFromJson(json);

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
    return 'CourseForElement(name: $name, id: $id, date: $date, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseForElementImpl &&
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
  _$$CourseForElementImplCopyWith<_$CourseForElementImpl> get copyWith =>
      __$$CourseForElementImplCopyWithImpl<_$CourseForElementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseForElementImplToJson(
      this,
    );
  }
}

abstract class _CourseForElement implements CourseForElement {
  const factory _CourseForElement(
          {@JsonKey(name: "name") required final String name,
          @JsonKey(name: "id") required final int id,
          @JsonKey(name: "date") required final DateTime date,
          @JsonKey(name: "description") final String? description}) =
      _$CourseForElementImpl;

  factory _CourseForElement.fromJson(Map<String, dynamic> json) =
      _$CourseForElementImpl.fromJson;

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
  _$$CourseForElementImplCopyWith<_$CourseForElementImpl> get copyWith =>
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
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "courseTags")
  List<CourseForElement> get courseTags => throw _privateConstructorUsedError;

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
      @JsonKey(name: "description") String description,
      @JsonKey(name: "courseTags") List<CourseForElement> courseTags});

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
    Object? description = null,
    Object? courseTags = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      courseTags: null == courseTags
          ? _value.courseTags
          : courseTags // ignore: cast_nullable_to_non_nullable
              as List<CourseForElement>,
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
      @JsonKey(name: "description") String description,
      @JsonKey(name: "courseTags") List<CourseForElement> courseTags});

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
    Object? description = null,
    Object? courseTags = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      courseTags: null == courseTags
          ? _value._courseTags
          : courseTags // ignore: cast_nullable_to_non_nullable
              as List<CourseForElement>,
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
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "courseTags")
      required final List<CourseForElement> courseTags})
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
  @override
  @JsonKey(name: "description")
  final String description;
  final List<CourseForElement> _courseTags;
  @override
  @JsonKey(name: "courseTags")
  List<CourseForElement> get courseTags {
    if (_courseTags is EqualUnmodifiableListView) return _courseTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courseTags);
  }

  @override
  String toString() {
    return 'CourseType(name: $name, id: $id, date: $date, photo: $photo, description: $description, courseTags: $courseTags)';
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
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._courseTags, _courseTags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, date, photo,
      description, const DeepCollectionEquality().hash(_courseTags));

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
      @JsonKey(name: "description") required final String description,
      @JsonKey(name: "courseTags")
      required final List<CourseForElement> courseTags}) = _$CourseTypeImpl;

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
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "courseTags")
  List<CourseForElement> get courseTags;
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
  @JsonKey(name: "photo")
  Photo get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "endDate")
  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "stuff")
  Stuff get stuff => throw _privateConstructorUsedError;
  @JsonKey(name: "startDate")
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "practice")
  int get practice => throw _privateConstructorUsedError;
  @JsonKey(name: "isVerified")
  bool? get isVerified => throw _privateConstructorUsedError;

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
      @JsonKey(name: "photo") Photo photo,
      @JsonKey(name: "endDate") DateTime? endDate,
      @JsonKey(name: "stuff") Stuff stuff,
      @JsonKey(name: "startDate") DateTime startDate,
      @JsonKey(name: "practice") int practice,
      @JsonKey(name: "isVerified") bool? isVerified});

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
    Object? photo = null,
    Object? endDate = freezed,
    Object? stuff = null,
    Object? startDate = null,
    Object? practice = null,
    Object? isVerified = freezed,
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
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stuff: null == stuff
          ? _value.stuff
          : stuff // ignore: cast_nullable_to_non_nullable
              as Stuff,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      practice: null == practice
          ? _value.practice
          : practice // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      @JsonKey(name: "photo") Photo photo,
      @JsonKey(name: "endDate") DateTime? endDate,
      @JsonKey(name: "stuff") Stuff stuff,
      @JsonKey(name: "startDate") DateTime startDate,
      @JsonKey(name: "practice") int practice,
      @JsonKey(name: "isVerified") bool? isVerified});

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
    Object? photo = null,
    Object? endDate = freezed,
    Object? stuff = null,
    Object? startDate = null,
    Object? practice = null,
    Object? isVerified = freezed,
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
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stuff: null == stuff
          ? _value.stuff
          : stuff // ignore: cast_nullable_to_non_nullable
              as Stuff,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      practice: null == practice
          ? _value.practice
          : practice // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      @JsonKey(name: "photo") required this.photo,
      @JsonKey(name: "endDate") required this.endDate,
      @JsonKey(name: "stuff") required this.stuff,
      @JsonKey(name: "startDate") required this.startDate,
      @JsonKey(name: "practice") required this.practice,
      @JsonKey(name: "isVerified") required this.isVerified});

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
  @JsonKey(name: "photo")
  final Photo photo;
  @override
  @JsonKey(name: "endDate")
  final DateTime? endDate;
  @override
  @JsonKey(name: "stuff")
  final Stuff stuff;
  @override
  @JsonKey(name: "startDate")
  final DateTime startDate;
  @override
  @JsonKey(name: "practice")
  final int practice;
  @override
  @JsonKey(name: "isVerified")
  final bool? isVerified;

  @override
  String toString() {
    return 'Employee(id: $id, face: $face, about: $about, photo: $photo, endDate: $endDate, stuff: $stuff, startDate: $startDate, practice: $practice, isVerified: $isVerified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.face, face) || other.face == face) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.stuff, stuff) || other.stuff == stuff) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.practice, practice) ||
                other.practice == practice) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, face, about, photo, endDate,
      stuff, startDate, practice, isVerified);

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
          @JsonKey(name: "photo") required final Photo photo,
          @JsonKey(name: "endDate") required final DateTime? endDate,
          @JsonKey(name: "stuff") required final Stuff stuff,
          @JsonKey(name: "startDate") required final DateTime startDate,
          @JsonKey(name: "practice") required final int practice,
          @JsonKey(name: "isVerified") required final bool? isVerified}) =
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
  @JsonKey(name: "photo")
  Photo get photo;
  @override
  @JsonKey(name: "endDate")
  DateTime? get endDate;
  @override
  @JsonKey(name: "stuff")
  Stuff get stuff;
  @override
  @JsonKey(name: "startDate")
  DateTime get startDate;
  @override
  @JsonKey(name: "practice")
  int get practice;
  @override
  @JsonKey(name: "isVerified")
  bool? get isVerified;
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
  String get middlename => throw _privateConstructorUsedError;
  @JsonKey(name: "passport")
  String get passport => throw _privateConstructorUsedError;
  @JsonKey(name: "birthday")
  DateTime get birthday => throw _privateConstructorUsedError;

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
      @JsonKey(name: "middlename") String middlename,
      @JsonKey(name: "passport") String passport,
      @JsonKey(name: "birthday") DateTime birthday});
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
    Object? middlename = null,
    Object? passport = null,
    Object? birthday = null,
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
      middlename: null == middlename
          ? _value.middlename
          : middlename // ignore: cast_nullable_to_non_nullable
              as String,
      passport: null == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      @JsonKey(name: "middlename") String middlename,
      @JsonKey(name: "passport") String passport,
      @JsonKey(name: "birthday") DateTime birthday});
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
    Object? middlename = null,
    Object? passport = null,
    Object? birthday = null,
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
      middlename: null == middlename
          ? _value.middlename
          : middlename // ignore: cast_nullable_to_non_nullable
              as String,
      passport: null == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      @JsonKey(name: "passport") required this.passport,
      @JsonKey(name: "birthday") required this.birthday});

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
  final String middlename;
  @override
  @JsonKey(name: "passport")
  final String passport;
  @override
  @JsonKey(name: "birthday")
  final DateTime birthday;

  @override
  String toString() {
    return 'Face(id: $id, date: $date, tel1: $tel1, tel2: $tel2, firstname: $firstname, lastname: $lastname, middlename: $middlename, passport: $passport, birthday: $birthday)';
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
            (identical(other.passport, passport) ||
                other.passport == passport) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, tel1, tel2, firstname,
      lastname, middlename, passport, birthday);

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
          @JsonKey(name: "middlename") required final String middlename,
          @JsonKey(name: "passport") required final String passport,
          @JsonKey(name: "birthday") required final DateTime birthday}) =
      _$FaceImpl;

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
  String get middlename;
  @override
  @JsonKey(name: "passport")
  String get passport;
  @override
  @JsonKey(name: "birthday")
  DateTime get birthday;
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
