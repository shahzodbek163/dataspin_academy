// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentResponse _$CommentResponseFromJson(Map<String, dynamic> json) {
  return _CommentResponse.fromJson(json);
}

/// @nodoc
mixin _$CommentResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<CommentData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentResponseCopyWith<CommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentResponseCopyWith<$Res> {
  factory $CommentResponseCopyWith(
          CommentResponse value, $Res Function(CommentResponse) then) =
      _$CommentResponseCopyWithImpl<$Res, CommentResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<CommentData> data});
}

/// @nodoc
class _$CommentResponseCopyWithImpl<$Res, $Val extends CommentResponse>
    implements $CommentResponseCopyWith<$Res> {
  _$CommentResponseCopyWithImpl(this._value, this._then);

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
              as List<CommentData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentResponseImplCopyWith<$Res>
    implements $CommentResponseCopyWith<$Res> {
  factory _$$CommentResponseImplCopyWith(_$CommentResponseImpl value,
          $Res Function(_$CommentResponseImpl) then) =
      __$$CommentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<CommentData> data});
}

/// @nodoc
class __$$CommentResponseImplCopyWithImpl<$Res>
    extends _$CommentResponseCopyWithImpl<$Res, _$CommentResponseImpl>
    implements _$$CommentResponseImplCopyWith<$Res> {
  __$$CommentResponseImplCopyWithImpl(
      _$CommentResponseImpl _value, $Res Function(_$CommentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$CommentResponseImpl(
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
              as List<CommentData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentResponseImpl implements _CommentResponse {
  const _$CommentResponseImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required final List<CommentData> data})
      : _data = data;

  factory _$CommentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<CommentData> _data;
  @override
  @JsonKey(name: "data")
  List<CommentData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CommentResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentResponseImpl &&
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
  _$$CommentResponseImplCopyWith<_$CommentResponseImpl> get copyWith =>
      __$$CommentResponseImplCopyWithImpl<_$CommentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentResponseImplToJson(
      this,
    );
  }
}

abstract class _CommentResponse implements CommentResponse {
  const factory _CommentResponse(
          {@JsonKey(name: "status") required final bool status,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final List<CommentData> data}) =
      _$CommentResponseImpl;

  factory _CommentResponse.fromJson(Map<String, dynamic> json) =
      _$CommentResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  List<CommentData> get data;
  @override
  @JsonKey(ignore: true)
  _$$CommentResponseImplCopyWith<_$CommentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentData _$CommentDataFromJson(Map<String, dynamic> json) {
  return _CommentData.fromJson(json);
}

/// @nodoc
mixin _$CommentData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userInfo")
  AccountData get userInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "course")
  Course get course => throw _privateConstructorUsedError;
  @JsonKey(name: "replyText")
  String get replyText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentDataCopyWith<CommentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDataCopyWith<$Res> {
  factory $CommentDataCopyWith(
          CommentData value, $Res Function(CommentData) then) =
      _$CommentDataCopyWithImpl<$Res, CommentData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "userInfo") AccountData userInfo,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "course") Course course,
      @JsonKey(name: "replyText") String replyText});

  $AccountDataCopyWith<$Res> get userInfo;
  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class _$CommentDataCopyWithImpl<$Res, $Val extends CommentData>
    implements $CommentDataCopyWith<$Res> {
  _$CommentDataCopyWithImpl(this._value, this._then);

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
    Object? course = null,
    Object? replyText = null,
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
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      replyText: null == replyText
          ? _value.replyText
          : replyText // ignore: cast_nullable_to_non_nullable
              as String,
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
  $CourseCopyWith<$Res> get course {
    return $CourseCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentDataImplCopyWith<$Res>
    implements $CommentDataCopyWith<$Res> {
  factory _$$CommentDataImplCopyWith(
          _$CommentDataImpl value, $Res Function(_$CommentDataImpl) then) =
      __$$CommentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "userInfo") AccountData userInfo,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "course") Course course,
      @JsonKey(name: "replyText") String replyText});

  @override
  $AccountDataCopyWith<$Res> get userInfo;
  @override
  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class __$$CommentDataImplCopyWithImpl<$Res>
    extends _$CommentDataCopyWithImpl<$Res, _$CommentDataImpl>
    implements _$$CommentDataImplCopyWith<$Res> {
  __$$CommentDataImplCopyWithImpl(
      _$CommentDataImpl _value, $Res Function(_$CommentDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userInfo = null,
    Object? date = null,
    Object? course = null,
    Object? replyText = null,
  }) {
    return _then(_$CommentDataImpl(
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
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      replyText: null == replyText
          ? _value.replyText
          : replyText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentDataImpl implements _CommentData {
  const _$CommentDataImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "userInfo") required this.userInfo,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "course") required this.course,
      @JsonKey(name: "replyText") required this.replyText});

  factory _$CommentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentDataImplFromJson(json);

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
  @JsonKey(name: "course")
  final Course course;
  @override
  @JsonKey(name: "replyText")
  final String replyText;

  @override
  String toString() {
    return 'CommentData(id: $id, userInfo: $userInfo, date: $date, course: $course, replyText: $replyText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.replyText, replyText) ||
                other.replyText == replyText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userInfo, date, course, replyText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentDataImplCopyWith<_$CommentDataImpl> get copyWith =>
      __$$CommentDataImplCopyWithImpl<_$CommentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentDataImplToJson(
      this,
    );
  }
}

abstract class _CommentData implements CommentData {
  const factory _CommentData(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "userInfo") required final AccountData userInfo,
          @JsonKey(name: "date") required final DateTime date,
          @JsonKey(name: "course") required final Course course,
          @JsonKey(name: "replyText") required final String replyText}) =
      _$CommentDataImpl;

  factory _CommentData.fromJson(Map<String, dynamic> json) =
      _$CommentDataImpl.fromJson;

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
  @JsonKey(name: "course")
  Course get course;
  @override
  @JsonKey(name: "replyText")
  String get replyText;
  @override
  @JsonKey(ignore: true)
  _$$CommentDataImplCopyWith<_$CommentDataImpl> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call({@JsonKey(name: "name") String name, @JsonKey(name: "id") int id});
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
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") String name, @JsonKey(name: "id") int id});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "id") required this.id});

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "id")
  final int id;

  @override
  String toString() {
    return 'Course(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

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
      @JsonKey(name: "id") required final int id}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfilePhoto _$ProfilePhotoFromJson(Map<String, dynamic> json) {
  return _ProfilePhoto.fromJson(json);
}

/// @nodoc
mixin _$ProfilePhoto {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfilePhotoCopyWith<ProfilePhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePhotoCopyWith<$Res> {
  factory $ProfilePhotoCopyWith(
          ProfilePhoto value, $Res Function(ProfilePhoto) then) =
      _$ProfilePhotoCopyWithImpl<$Res, ProfilePhoto>;
  @useResult
  $Res call({@JsonKey(name: "id") int id});
}

/// @nodoc
class _$ProfilePhotoCopyWithImpl<$Res, $Val extends ProfilePhoto>
    implements $ProfilePhotoCopyWith<$Res> {
  _$ProfilePhotoCopyWithImpl(this._value, this._then);

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
abstract class _$$ProfilePhotoImplCopyWith<$Res>
    implements $ProfilePhotoCopyWith<$Res> {
  factory _$$ProfilePhotoImplCopyWith(
          _$ProfilePhotoImpl value, $Res Function(_$ProfilePhotoImpl) then) =
      __$$ProfilePhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") int id});
}

/// @nodoc
class __$$ProfilePhotoImplCopyWithImpl<$Res>
    extends _$ProfilePhotoCopyWithImpl<$Res, _$ProfilePhotoImpl>
    implements _$$ProfilePhotoImplCopyWith<$Res> {
  __$$ProfilePhotoImplCopyWithImpl(
      _$ProfilePhotoImpl _value, $Res Function(_$ProfilePhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ProfilePhotoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfilePhotoImpl implements _ProfilePhoto {
  const _$ProfilePhotoImpl({@JsonKey(name: "id") required this.id});

  factory _$ProfilePhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfilePhotoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;

  @override
  String toString() {
    return 'ProfilePhoto(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePhotoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePhotoImplCopyWith<_$ProfilePhotoImpl> get copyWith =>
      __$$ProfilePhotoImplCopyWithImpl<_$ProfilePhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfilePhotoImplToJson(
      this,
    );
  }
}

abstract class _ProfilePhoto implements ProfilePhoto {
  const factory _ProfilePhoto({@JsonKey(name: "id") required final int id}) =
      _$ProfilePhotoImpl;

  factory _ProfilePhoto.fromJson(Map<String, dynamic> json) =
      _$ProfilePhotoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$ProfilePhotoImplCopyWith<_$ProfilePhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
