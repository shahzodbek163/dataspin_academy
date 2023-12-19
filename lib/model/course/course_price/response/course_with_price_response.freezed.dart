// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_with_price_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseWithPriceResponse _$CourseWithPriceResponseFromJson(
    Map<String, dynamic> json) {
  return _CourseWithPriceResponse.fromJson(json);
}

/// @nodoc
mixin _$CourseWithPriceResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<CourseWithPriceData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseWithPriceResponseCopyWith<CourseWithPriceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseWithPriceResponseCopyWith<$Res> {
  factory $CourseWithPriceResponseCopyWith(CourseWithPriceResponse value,
          $Res Function(CourseWithPriceResponse) then) =
      _$CourseWithPriceResponseCopyWithImpl<$Res, CourseWithPriceResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<CourseWithPriceData> data});
}

/// @nodoc
class _$CourseWithPriceResponseCopyWithImpl<$Res,
        $Val extends CourseWithPriceResponse>
    implements $CourseWithPriceResponseCopyWith<$Res> {
  _$CourseWithPriceResponseCopyWithImpl(this._value, this._then);

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
              as List<CourseWithPriceData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseWithPriceResponseImplCopyWith<$Res>
    implements $CourseWithPriceResponseCopyWith<$Res> {
  factory _$$CourseWithPriceResponseImplCopyWith(
          _$CourseWithPriceResponseImpl value,
          $Res Function(_$CourseWithPriceResponseImpl) then) =
      __$$CourseWithPriceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<CourseWithPriceData> data});
}

/// @nodoc
class __$$CourseWithPriceResponseImplCopyWithImpl<$Res>
    extends _$CourseWithPriceResponseCopyWithImpl<$Res,
        _$CourseWithPriceResponseImpl>
    implements _$$CourseWithPriceResponseImplCopyWith<$Res> {
  __$$CourseWithPriceResponseImplCopyWithImpl(
      _$CourseWithPriceResponseImpl _value,
      $Res Function(_$CourseWithPriceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$CourseWithPriceResponseImpl(
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
              as List<CourseWithPriceData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseWithPriceResponseImpl implements _CourseWithPriceResponse {
  const _$CourseWithPriceResponseImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required final List<CourseWithPriceData> data})
      : _data = data;

  factory _$CourseWithPriceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseWithPriceResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<CourseWithPriceData> _data;
  @override
  @JsonKey(name: "data")
  List<CourseWithPriceData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CourseWithPriceResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseWithPriceResponseImpl &&
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
  _$$CourseWithPriceResponseImplCopyWith<_$CourseWithPriceResponseImpl>
      get copyWith => __$$CourseWithPriceResponseImplCopyWithImpl<
          _$CourseWithPriceResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseWithPriceResponseImplToJson(
      this,
    );
  }
}

abstract class _CourseWithPriceResponse implements CourseWithPriceResponse {
  const factory _CourseWithPriceResponse(
          {@JsonKey(name: "status") required final bool status,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data")
          required final List<CourseWithPriceData> data}) =
      _$CourseWithPriceResponseImpl;

  factory _CourseWithPriceResponse.fromJson(Map<String, dynamic> json) =
      _$CourseWithPriceResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  List<CourseWithPriceData> get data;
  @override
  @JsonKey(ignore: true)
  _$$CourseWithPriceResponseImplCopyWith<_$CourseWithPriceResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CourseWithPriceData _$CourseWithPriceDataFromJson(Map<String, dynamic> json) {
  return _CourseWithPriceData.fromJson(json);
}

/// @nodoc
mixin _$CourseWithPriceData {
  @JsonKey(name: "course")
  Course get course => throw _privateConstructorUsedError;
  @JsonKey(name: "mentor")
  Mentor? get mentor => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  dynamic get price => throw _privateConstructorUsedError;
  @JsonKey(name: "reception_counter")
  ReceptionCounter get receptionCounter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseWithPriceDataCopyWith<CourseWithPriceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseWithPriceDataCopyWith<$Res> {
  factory $CourseWithPriceDataCopyWith(
          CourseWithPriceData value, $Res Function(CourseWithPriceData) then) =
      _$CourseWithPriceDataCopyWithImpl<$Res, CourseWithPriceData>;
  @useResult
  $Res call(
      {@JsonKey(name: "course") Course course,
      @JsonKey(name: "mentor") Mentor? mentor,
      @JsonKey(name: "price") dynamic price,
      @JsonKey(name: "reception_counter") ReceptionCounter receptionCounter});

  $CourseCopyWith<$Res> get course;
  $MentorCopyWith<$Res>? get mentor;
  $ReceptionCounterCopyWith<$Res> get receptionCounter;
}

/// @nodoc
class _$CourseWithPriceDataCopyWithImpl<$Res, $Val extends CourseWithPriceData>
    implements $CourseWithPriceDataCopyWith<$Res> {
  _$CourseWithPriceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
    Object? mentor = freezed,
    Object? price = freezed,
    Object? receptionCounter = null,
  }) {
    return _then(_value.copyWith(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      mentor: freezed == mentor
          ? _value.mentor
          : mentor // ignore: cast_nullable_to_non_nullable
              as Mentor?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      receptionCounter: null == receptionCounter
          ? _value.receptionCounter
          : receptionCounter // ignore: cast_nullable_to_non_nullable
              as ReceptionCounter,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseCopyWith<$Res> get course {
    return $CourseCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MentorCopyWith<$Res>? get mentor {
    if (_value.mentor == null) {
      return null;
    }

    return $MentorCopyWith<$Res>(_value.mentor!, (value) {
      return _then(_value.copyWith(mentor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReceptionCounterCopyWith<$Res> get receptionCounter {
    return $ReceptionCounterCopyWith<$Res>(_value.receptionCounter, (value) {
      return _then(_value.copyWith(receptionCounter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseWithPriceDataImplCopyWith<$Res>
    implements $CourseWithPriceDataCopyWith<$Res> {
  factory _$$CourseWithPriceDataImplCopyWith(_$CourseWithPriceDataImpl value,
          $Res Function(_$CourseWithPriceDataImpl) then) =
      __$$CourseWithPriceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "course") Course course,
      @JsonKey(name: "mentor") Mentor? mentor,
      @JsonKey(name: "price") dynamic price,
      @JsonKey(name: "reception_counter") ReceptionCounter receptionCounter});

  @override
  $CourseCopyWith<$Res> get course;
  @override
  $MentorCopyWith<$Res>? get mentor;
  @override
  $ReceptionCounterCopyWith<$Res> get receptionCounter;
}

/// @nodoc
class __$$CourseWithPriceDataImplCopyWithImpl<$Res>
    extends _$CourseWithPriceDataCopyWithImpl<$Res, _$CourseWithPriceDataImpl>
    implements _$$CourseWithPriceDataImplCopyWith<$Res> {
  __$$CourseWithPriceDataImplCopyWithImpl(_$CourseWithPriceDataImpl _value,
      $Res Function(_$CourseWithPriceDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
    Object? mentor = freezed,
    Object? price = freezed,
    Object? receptionCounter = null,
  }) {
    return _then(_$CourseWithPriceDataImpl(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      mentor: freezed == mentor
          ? _value.mentor
          : mentor // ignore: cast_nullable_to_non_nullable
              as Mentor?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      receptionCounter: null == receptionCounter
          ? _value.receptionCounter
          : receptionCounter // ignore: cast_nullable_to_non_nullable
              as ReceptionCounter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseWithPriceDataImpl implements _CourseWithPriceData {
  const _$CourseWithPriceDataImpl(
      {@JsonKey(name: "course") required this.course,
      @JsonKey(name: "mentor") required this.mentor,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "reception_counter") required this.receptionCounter});

  factory _$CourseWithPriceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseWithPriceDataImplFromJson(json);

  @override
  @JsonKey(name: "course")
  final Course course;
  @override
  @JsonKey(name: "mentor")
  final Mentor? mentor;
  @override
  @JsonKey(name: "price")
  final dynamic price;
  @override
  @JsonKey(name: "reception_counter")
  final ReceptionCounter receptionCounter;

  @override
  String toString() {
    return 'CourseWithPriceData(course: $course, mentor: $mentor, price: $price, receptionCounter: $receptionCounter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseWithPriceDataImpl &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.mentor, mentor) || other.mentor == mentor) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            (identical(other.receptionCounter, receptionCounter) ||
                other.receptionCounter == receptionCounter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, course, mentor,
      const DeepCollectionEquality().hash(price), receptionCounter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseWithPriceDataImplCopyWith<_$CourseWithPriceDataImpl> get copyWith =>
      __$$CourseWithPriceDataImplCopyWithImpl<_$CourseWithPriceDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseWithPriceDataImplToJson(
      this,
    );
  }
}

abstract class _CourseWithPriceData implements CourseWithPriceData {
  const factory _CourseWithPriceData(
          {@JsonKey(name: "course") required final Course course,
          @JsonKey(name: "mentor") required final Mentor? mentor,
          @JsonKey(name: "price") required final dynamic price,
          @JsonKey(name: "reception_counter")
          required final ReceptionCounter receptionCounter}) =
      _$CourseWithPriceDataImpl;

  factory _CourseWithPriceData.fromJson(Map<String, dynamic> json) =
      _$CourseWithPriceDataImpl.fromJson;

  @override
  @JsonKey(name: "course")
  Course get course;
  @override
  @JsonKey(name: "mentor")
  Mentor? get mentor;
  @override
  @JsonKey(name: "price")
  dynamic get price;
  @override
  @JsonKey(name: "reception_counter")
  ReceptionCounter get receptionCounter;
  @override
  @JsonKey(ignore: true)
  _$$CourseWithPriceDataImplCopyWith<_$CourseWithPriceDataImpl> get copyWith =>
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
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "courseFor")
  CourseForElement get courseFor => throw _privateConstructorUsedError;
  @JsonKey(name: "courseType")
  CourseType get courseType => throw _privateConstructorUsedError;
  @JsonKey(name: "previewPhoto")
  PreviewPhoto get previewPhoto => throw _privateConstructorUsedError;

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
      @JsonKey(name: "description") String description,
      @JsonKey(name: "courseFor") CourseForElement courseFor,
      @JsonKey(name: "courseType") CourseType courseType,
      @JsonKey(name: "previewPhoto") PreviewPhoto previewPhoto});

  $CourseForElementCopyWith<$Res> get courseFor;
  $CourseTypeCopyWith<$Res> get courseType;
  $PreviewPhotoCopyWith<$Res> get previewPhoto;
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
    Object? description = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
              as PreviewPhoto,
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
  $PreviewPhotoCopyWith<$Res> get previewPhoto {
    return $PreviewPhotoCopyWith<$Res>(_value.previewPhoto, (value) {
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
      @JsonKey(name: "description") String description,
      @JsonKey(name: "courseFor") CourseForElement courseFor,
      @JsonKey(name: "courseType") CourseType courseType,
      @JsonKey(name: "previewPhoto") PreviewPhoto previewPhoto});

  @override
  $CourseForElementCopyWith<$Res> get courseFor;
  @override
  $CourseTypeCopyWith<$Res> get courseType;
  @override
  $PreviewPhotoCopyWith<$Res> get previewPhoto;
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
    Object? description = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
              as PreviewPhoto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "description") required this.description,
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
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "courseFor")
  final CourseForElement courseFor;
  @override
  @JsonKey(name: "courseType")
  final CourseType courseType;
  @override
  @JsonKey(name: "previewPhoto")
  final PreviewPhoto previewPhoto;

  @override
  String toString() {
    return 'Course(name: $name, id: $id, description: $description, courseFor: $courseFor, courseType: $courseType, previewPhoto: $previewPhoto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.courseFor, courseFor) ||
                other.courseFor == courseFor) &&
            (identical(other.courseType, courseType) ||
                other.courseType == courseType) &&
            (identical(other.previewPhoto, previewPhoto) ||
                other.previewPhoto == previewPhoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, id, description, courseFor, courseType, previewPhoto);

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
      @JsonKey(name: "description") required final String description,
      @JsonKey(name: "courseFor") required final CourseForElement courseFor,
      @JsonKey(name: "courseType") required final CourseType courseType,
      @JsonKey(name: "previewPhoto")
      required final PreviewPhoto previewPhoto}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "courseFor")
  CourseForElement get courseFor;
  @override
  @JsonKey(name: "courseType")
  CourseType get courseType;
  @override
  @JsonKey(name: "previewPhoto")
  PreviewPhoto get previewPhoto;
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
  PreviewPhoto get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "courseTags")
  List<CourseForElement> get courseTags => throw _privateConstructorUsedError;
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
      @JsonKey(name: "photo") PreviewPhoto photo,
      @JsonKey(name: "courseTags") List<CourseForElement> courseTags,
      @JsonKey(name: "description") String description});

  $PreviewPhotoCopyWith<$Res> get photo;
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
              as PreviewPhoto,
      courseTags: null == courseTags
          ? _value.courseTags
          : courseTags // ignore: cast_nullable_to_non_nullable
              as List<CourseForElement>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PreviewPhotoCopyWith<$Res> get photo {
    return $PreviewPhotoCopyWith<$Res>(_value.photo, (value) {
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
      @JsonKey(name: "photo") PreviewPhoto photo,
      @JsonKey(name: "courseTags") List<CourseForElement> courseTags,
      @JsonKey(name: "description") String description});

  @override
  $PreviewPhotoCopyWith<$Res> get photo;
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
              as PreviewPhoto,
      courseTags: null == courseTags
          ? _value._courseTags
          : courseTags // ignore: cast_nullable_to_non_nullable
              as List<CourseForElement>,
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
      @JsonKey(name: "courseTags")
      required final List<CourseForElement> courseTags,
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
  final PreviewPhoto photo;
  final List<CourseForElement> _courseTags;
  @override
  @JsonKey(name: "courseTags")
  List<CourseForElement> get courseTags {
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
          @JsonKey(name: "photo") required final PreviewPhoto photo,
          @JsonKey(name: "courseTags")
          required final List<CourseForElement> courseTags,
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
  PreviewPhoto get photo;
  @override
  @JsonKey(name: "courseTags")
  List<CourseForElement> get courseTags;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$CourseTypeImplCopyWith<_$CourseTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PreviewPhoto _$PreviewPhotoFromJson(Map<String, dynamic> json) {
  return _PreviewPhoto.fromJson(json);
}

/// @nodoc
mixin _$PreviewPhoto {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreviewPhotoCopyWith<PreviewPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewPhotoCopyWith<$Res> {
  factory $PreviewPhotoCopyWith(
          PreviewPhoto value, $Res Function(PreviewPhoto) then) =
      _$PreviewPhotoCopyWithImpl<$Res, PreviewPhoto>;
  @useResult
  $Res call({@JsonKey(name: "id") int id});
}

/// @nodoc
class _$PreviewPhotoCopyWithImpl<$Res, $Val extends PreviewPhoto>
    implements $PreviewPhotoCopyWith<$Res> {
  _$PreviewPhotoCopyWithImpl(this._value, this._then);

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
abstract class _$$PreviewPhotoImplCopyWith<$Res>
    implements $PreviewPhotoCopyWith<$Res> {
  factory _$$PreviewPhotoImplCopyWith(
          _$PreviewPhotoImpl value, $Res Function(_$PreviewPhotoImpl) then) =
      __$$PreviewPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") int id});
}

/// @nodoc
class __$$PreviewPhotoImplCopyWithImpl<$Res>
    extends _$PreviewPhotoCopyWithImpl<$Res, _$PreviewPhotoImpl>
    implements _$$PreviewPhotoImplCopyWith<$Res> {
  __$$PreviewPhotoImplCopyWithImpl(
      _$PreviewPhotoImpl _value, $Res Function(_$PreviewPhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$PreviewPhotoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreviewPhotoImpl implements _PreviewPhoto {
  const _$PreviewPhotoImpl({@JsonKey(name: "id") required this.id});

  factory _$PreviewPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreviewPhotoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;

  @override
  String toString() {
    return 'PreviewPhoto(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewPhotoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewPhotoImplCopyWith<_$PreviewPhotoImpl> get copyWith =>
      __$$PreviewPhotoImplCopyWithImpl<_$PreviewPhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreviewPhotoImplToJson(
      this,
    );
  }
}

abstract class _PreviewPhoto implements PreviewPhoto {
  const factory _PreviewPhoto({@JsonKey(name: "id") required final int id}) =
      _$PreviewPhotoImpl;

  factory _PreviewPhoto.fromJson(Map<String, dynamic> json) =
      _$PreviewPhotoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$PreviewPhotoImplCopyWith<_$PreviewPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Mentor _$MentorFromJson(Map<String, dynamic> json) {
  return _Mentor.fromJson(json);
}

/// @nodoc
mixin _$Mentor {
  @JsonKey(name: "courses")
  List<PreviewPhoto> get courses => throw _privateConstructorUsedError;
  @JsonKey(name: "employee")
  Employee get employee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MentorCopyWith<Mentor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentorCopyWith<$Res> {
  factory $MentorCopyWith(Mentor value, $Res Function(Mentor) then) =
      _$MentorCopyWithImpl<$Res, Mentor>;
  @useResult
  $Res call(
      {@JsonKey(name: "courses") List<PreviewPhoto> courses,
      @JsonKey(name: "employee") Employee employee});

  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class _$MentorCopyWithImpl<$Res, $Val extends Mentor>
    implements $MentorCopyWith<$Res> {
  _$MentorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? employee = null,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<PreviewPhoto>,
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
abstract class _$$MentorImplCopyWith<$Res> implements $MentorCopyWith<$Res> {
  factory _$$MentorImplCopyWith(
          _$MentorImpl value, $Res Function(_$MentorImpl) then) =
      __$$MentorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "courses") List<PreviewPhoto> courses,
      @JsonKey(name: "employee") Employee employee});

  @override
  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$MentorImplCopyWithImpl<$Res>
    extends _$MentorCopyWithImpl<$Res, _$MentorImpl>
    implements _$$MentorImplCopyWith<$Res> {
  __$$MentorImplCopyWithImpl(
      _$MentorImpl _value, $Res Function(_$MentorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? employee = null,
  }) {
    return _then(_$MentorImpl(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<PreviewPhoto>,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MentorImpl implements _Mentor {
  const _$MentorImpl(
      {@JsonKey(name: "courses") required final List<PreviewPhoto> courses,
      @JsonKey(name: "employee") required this.employee})
      : _courses = courses;

  factory _$MentorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorImplFromJson(json);

  final List<PreviewPhoto> _courses;
  @override
  @JsonKey(name: "courses")
  List<PreviewPhoto> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  @JsonKey(name: "employee")
  final Employee employee;

  @override
  String toString() {
    return 'Mentor(courses: $courses, employee: $employee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentorImpl &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_courses), employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentorImplCopyWith<_$MentorImpl> get copyWith =>
      __$$MentorImplCopyWithImpl<_$MentorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MentorImplToJson(
      this,
    );
  }
}

abstract class _Mentor implements Mentor {
  const factory _Mentor(
          {@JsonKey(name: "courses") required final List<PreviewPhoto> courses,
          @JsonKey(name: "employee") required final Employee employee}) =
      _$MentorImpl;

  factory _Mentor.fromJson(Map<String, dynamic> json) = _$MentorImpl.fromJson;

  @override
  @JsonKey(name: "courses")
  List<PreviewPhoto> get courses;
  @override
  @JsonKey(name: "employee")
  Employee get employee;
  @override
  @JsonKey(ignore: true)
  _$$MentorImplCopyWith<_$MentorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return _Employee.fromJson(json);
}

/// @nodoc
mixin _$Employee {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "photo")
  PreviewPhoto get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "endDate")
  DateTime get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "stuff")
  Stuff get stuff => throw _privateConstructorUsedError;
  @JsonKey(name: "face")
  Face get face => throw _privateConstructorUsedError;
  @JsonKey(name: "about")
  dynamic get about => throw _privateConstructorUsedError;
  @JsonKey(name: "startDate")
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "practice")
  int get practice => throw _privateConstructorUsedError;
  @JsonKey(name: "isVerified")
  dynamic get isVerified => throw _privateConstructorUsedError;

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
      @JsonKey(name: "photo") PreviewPhoto photo,
      @JsonKey(name: "endDate") DateTime endDate,
      @JsonKey(name: "stuff") Stuff stuff,
      @JsonKey(name: "face") Face face,
      @JsonKey(name: "about") dynamic about,
      @JsonKey(name: "startDate") DateTime startDate,
      @JsonKey(name: "practice") int practice,
      @JsonKey(name: "isVerified") dynamic isVerified});

  $PreviewPhotoCopyWith<$Res> get photo;
  $StuffCopyWith<$Res> get stuff;
  $FaceCopyWith<$Res> get face;
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
    Object? photo = null,
    Object? endDate = null,
    Object? stuff = null,
    Object? face = null,
    Object? about = freezed,
    Object? startDate = null,
    Object? practice = null,
    Object? isVerified = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as PreviewPhoto,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stuff: null == stuff
          ? _value.stuff
          : stuff // ignore: cast_nullable_to_non_nullable
              as Stuff,
      face: null == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as Face,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PreviewPhotoCopyWith<$Res> get photo {
    return $PreviewPhotoCopyWith<$Res>(_value.photo, (value) {
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

  @override
  @pragma('vm:prefer-inline')
  $FaceCopyWith<$Res> get face {
    return $FaceCopyWith<$Res>(_value.face, (value) {
      return _then(_value.copyWith(face: value) as $Val);
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
      @JsonKey(name: "photo") PreviewPhoto photo,
      @JsonKey(name: "endDate") DateTime endDate,
      @JsonKey(name: "stuff") Stuff stuff,
      @JsonKey(name: "face") Face face,
      @JsonKey(name: "about") dynamic about,
      @JsonKey(name: "startDate") DateTime startDate,
      @JsonKey(name: "practice") int practice,
      @JsonKey(name: "isVerified") dynamic isVerified});

  @override
  $PreviewPhotoCopyWith<$Res> get photo;
  @override
  $StuffCopyWith<$Res> get stuff;
  @override
  $FaceCopyWith<$Res> get face;
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
    Object? photo = null,
    Object? endDate = null,
    Object? stuff = null,
    Object? face = null,
    Object? about = freezed,
    Object? startDate = null,
    Object? practice = null,
    Object? isVerified = freezed,
  }) {
    return _then(_$EmployeeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as PreviewPhoto,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stuff: null == stuff
          ? _value.stuff
          : stuff // ignore: cast_nullable_to_non_nullable
              as Stuff,
      face: null == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as Face,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeImpl implements _Employee {
  const _$EmployeeImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "photo") required this.photo,
      @JsonKey(name: "endDate") required this.endDate,
      @JsonKey(name: "stuff") required this.stuff,
      @JsonKey(name: "face") required this.face,
      @JsonKey(name: "about") required this.about,
      @JsonKey(name: "startDate") required this.startDate,
      @JsonKey(name: "practice") required this.practice,
      @JsonKey(name: "isVerified") required this.isVerified});

  factory _$EmployeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "photo")
  final PreviewPhoto photo;
  @override
  @JsonKey(name: "endDate")
  final DateTime endDate;
  @override
  @JsonKey(name: "stuff")
  final Stuff stuff;
  @override
  @JsonKey(name: "face")
  final Face face;
  @override
  @JsonKey(name: "about")
  final dynamic about;
  @override
  @JsonKey(name: "startDate")
  final DateTime startDate;
  @override
  @JsonKey(name: "practice")
  final int practice;
  @override
  @JsonKey(name: "isVerified")
  final dynamic isVerified;

  @override
  String toString() {
    return 'Employee(id: $id, photo: $photo, endDate: $endDate, stuff: $stuff, face: $face, about: $about, startDate: $startDate, practice: $practice, isVerified: $isVerified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.stuff, stuff) || other.stuff == stuff) &&
            (identical(other.face, face) || other.face == face) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.practice, practice) ||
                other.practice == practice) &&
            const DeepCollectionEquality()
                .equals(other.isVerified, isVerified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      photo,
      endDate,
      stuff,
      face,
      const DeepCollectionEquality().hash(about),
      startDate,
      practice,
      const DeepCollectionEquality().hash(isVerified));

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
          @JsonKey(name: "photo") required final PreviewPhoto photo,
          @JsonKey(name: "endDate") required final DateTime endDate,
          @JsonKey(name: "stuff") required final Stuff stuff,
          @JsonKey(name: "face") required final Face face,
          @JsonKey(name: "about") required final dynamic about,
          @JsonKey(name: "startDate") required final DateTime startDate,
          @JsonKey(name: "practice") required final int practice,
          @JsonKey(name: "isVerified") required final dynamic isVerified}) =
      _$EmployeeImpl;

  factory _Employee.fromJson(Map<String, dynamic> json) =
      _$EmployeeImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "photo")
  PreviewPhoto get photo;
  @override
  @JsonKey(name: "endDate")
  DateTime get endDate;
  @override
  @JsonKey(name: "stuff")
  Stuff get stuff;
  @override
  @JsonKey(name: "face")
  Face get face;
  @override
  @JsonKey(name: "about")
  dynamic get about;
  @override
  @JsonKey(name: "startDate")
  DateTime get startDate;
  @override
  @JsonKey(name: "practice")
  int get practice;
  @override
  @JsonKey(name: "isVerified")
  dynamic get isVerified;
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
  @JsonKey(name: "lastname")
  String get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: "middlename")
  String get middlename => throw _privateConstructorUsedError;
  @JsonKey(name: "passport")
  String get passport => throw _privateConstructorUsedError;
  @JsonKey(name: "birthday")
  DateTime get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: "firstname")
  String get firstname => throw _privateConstructorUsedError;

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
      @JsonKey(name: "lastname") String lastname,
      @JsonKey(name: "middlename") String middlename,
      @JsonKey(name: "passport") String passport,
      @JsonKey(name: "birthday") DateTime birthday,
      @JsonKey(name: "firstname") String firstname});
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
    Object? lastname = null,
    Object? middlename = null,
    Object? passport = null,
    Object? birthday = null,
    Object? firstname = null,
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
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "lastname") String lastname,
      @JsonKey(name: "middlename") String middlename,
      @JsonKey(name: "passport") String passport,
      @JsonKey(name: "birthday") DateTime birthday,
      @JsonKey(name: "firstname") String firstname});
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
    Object? lastname = null,
    Object? middlename = null,
    Object? passport = null,
    Object? birthday = null,
    Object? firstname = null,
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
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "lastname") required this.lastname,
      @JsonKey(name: "middlename") required this.middlename,
      @JsonKey(name: "passport") required this.passport,
      @JsonKey(name: "birthday") required this.birthday,
      @JsonKey(name: "firstname") required this.firstname});

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
  @JsonKey(name: "firstname")
  final String firstname;

  @override
  String toString() {
    return 'Face(id: $id, date: $date, tel1: $tel1, tel2: $tel2, lastname: $lastname, middlename: $middlename, passport: $passport, birthday: $birthday, firstname: $firstname)';
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
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.middlename, middlename) ||
                other.middlename == middlename) &&
            (identical(other.passport, passport) ||
                other.passport == passport) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, tel1, tel2, lastname,
      middlename, passport, birthday, firstname);

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
          @JsonKey(name: "lastname") required final String lastname,
          @JsonKey(name: "middlename") required final String middlename,
          @JsonKey(name: "passport") required final String passport,
          @JsonKey(name: "birthday") required final DateTime birthday,
          @JsonKey(name: "firstname") required final String firstname}) =
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
  @JsonKey(name: "firstname")
  String get firstname;
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

ReceptionCounter _$ReceptionCounterFromJson(Map<String, dynamic> json) {
  return _ReceptionCounter.fromJson(json);
}

/// @nodoc
mixin _$ReceptionCounter {
  @JsonKey(name: "totalCount")
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: "activeCount")
  int get activeCount => throw _privateConstructorUsedError;
  @JsonKey(name: "inactiveCount")
  int get inactiveCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceptionCounterCopyWith<ReceptionCounter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceptionCounterCopyWith<$Res> {
  factory $ReceptionCounterCopyWith(
          ReceptionCounter value, $Res Function(ReceptionCounter) then) =
      _$ReceptionCounterCopyWithImpl<$Res, ReceptionCounter>;
  @useResult
  $Res call(
      {@JsonKey(name: "totalCount") int totalCount,
      @JsonKey(name: "activeCount") int activeCount,
      @JsonKey(name: "inactiveCount") int inactiveCount});
}

/// @nodoc
class _$ReceptionCounterCopyWithImpl<$Res, $Val extends ReceptionCounter>
    implements $ReceptionCounterCopyWith<$Res> {
  _$ReceptionCounterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? activeCount = null,
    Object? inactiveCount = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      activeCount: null == activeCount
          ? _value.activeCount
          : activeCount // ignore: cast_nullable_to_non_nullable
              as int,
      inactiveCount: null == inactiveCount
          ? _value.inactiveCount
          : inactiveCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceptionCounterImplCopyWith<$Res>
    implements $ReceptionCounterCopyWith<$Res> {
  factory _$$ReceptionCounterImplCopyWith(_$ReceptionCounterImpl value,
          $Res Function(_$ReceptionCounterImpl) then) =
      __$$ReceptionCounterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "totalCount") int totalCount,
      @JsonKey(name: "activeCount") int activeCount,
      @JsonKey(name: "inactiveCount") int inactiveCount});
}

/// @nodoc
class __$$ReceptionCounterImplCopyWithImpl<$Res>
    extends _$ReceptionCounterCopyWithImpl<$Res, _$ReceptionCounterImpl>
    implements _$$ReceptionCounterImplCopyWith<$Res> {
  __$$ReceptionCounterImplCopyWithImpl(_$ReceptionCounterImpl _value,
      $Res Function(_$ReceptionCounterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? activeCount = null,
    Object? inactiveCount = null,
  }) {
    return _then(_$ReceptionCounterImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      activeCount: null == activeCount
          ? _value.activeCount
          : activeCount // ignore: cast_nullable_to_non_nullable
              as int,
      inactiveCount: null == inactiveCount
          ? _value.inactiveCount
          : inactiveCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceptionCounterImpl implements _ReceptionCounter {
  const _$ReceptionCounterImpl(
      {@JsonKey(name: "totalCount") required this.totalCount,
      @JsonKey(name: "activeCount") required this.activeCount,
      @JsonKey(name: "inactiveCount") required this.inactiveCount});

  factory _$ReceptionCounterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceptionCounterImplFromJson(json);

  @override
  @JsonKey(name: "totalCount")
  final int totalCount;
  @override
  @JsonKey(name: "activeCount")
  final int activeCount;
  @override
  @JsonKey(name: "inactiveCount")
  final int inactiveCount;

  @override
  String toString() {
    return 'ReceptionCounter(totalCount: $totalCount, activeCount: $activeCount, inactiveCount: $inactiveCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceptionCounterImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.activeCount, activeCount) ||
                other.activeCount == activeCount) &&
            (identical(other.inactiveCount, inactiveCount) ||
                other.inactiveCount == inactiveCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalCount, activeCount, inactiveCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceptionCounterImplCopyWith<_$ReceptionCounterImpl> get copyWith =>
      __$$ReceptionCounterImplCopyWithImpl<_$ReceptionCounterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceptionCounterImplToJson(
      this,
    );
  }
}

abstract class _ReceptionCounter implements ReceptionCounter {
  const factory _ReceptionCounter(
          {@JsonKey(name: "totalCount") required final int totalCount,
          @JsonKey(name: "activeCount") required final int activeCount,
          @JsonKey(name: "inactiveCount") required final int inactiveCount}) =
      _$ReceptionCounterImpl;

  factory _ReceptionCounter.fromJson(Map<String, dynamic> json) =
      _$ReceptionCounterImpl.fromJson;

  @override
  @JsonKey(name: "totalCount")
  int get totalCount;
  @override
  @JsonKey(name: "activeCount")
  int get activeCount;
  @override
  @JsonKey(name: "inactiveCount")
  int get inactiveCount;
  @override
  @JsonKey(ignore: true)
  _$$ReceptionCounterImplCopyWith<_$ReceptionCounterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
