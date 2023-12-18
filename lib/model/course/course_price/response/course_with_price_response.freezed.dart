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
  List<CourseWithPriceData>? get data => throw _privateConstructorUsedError;

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
      @JsonKey(name: "data") List<CourseWithPriceData>? data});
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
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CourseWithPriceData>?,
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
      @JsonKey(name: "data") List<CourseWithPriceData>? data});
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
    Object? data = freezed,
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
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CourseWithPriceData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseWithPriceResponseImpl implements _CourseWithPriceResponse {
  const _$CourseWithPriceResponseImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") final List<CourseWithPriceData>? data})
      : _data = data;

  factory _$CourseWithPriceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseWithPriceResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<CourseWithPriceData>? _data;
  @override
  @JsonKey(name: "data")
  List<CourseWithPriceData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
          @JsonKey(name: "data") final List<CourseWithPriceData>? data}) =
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
  List<CourseWithPriceData>? get data;
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
  @JsonKey(name: "price")
  int? get price => throw _privateConstructorUsedError;

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
      @JsonKey(name: "price") int? price});

  $CourseCopyWith<$Res> get course;
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
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
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
abstract class _$$CourseWithPriceDataImplCopyWith<$Res>
    implements $CourseWithPriceDataCopyWith<$Res> {
  factory _$$CourseWithPriceDataImplCopyWith(_$CourseWithPriceDataImpl value,
          $Res Function(_$CourseWithPriceDataImpl) then) =
      __$$CourseWithPriceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "course") Course course,
      @JsonKey(name: "price") int? price});

  @override
  $CourseCopyWith<$Res> get course;
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
    Object? price = freezed,
  }) {
    return _then(_$CourseWithPriceDataImpl(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseWithPriceDataImpl implements _CourseWithPriceData {
  const _$CourseWithPriceDataImpl(
      {@JsonKey(name: "course") required this.course,
      @JsonKey(name: "price") this.price});

  factory _$CourseWithPriceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseWithPriceDataImplFromJson(json);

  @override
  @JsonKey(name: "course")
  final Course course;
  @override
  @JsonKey(name: "price")
  final int? price;

  @override
  String toString() {
    return 'CourseWithPriceData(course: $course, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseWithPriceDataImpl &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, course, price);

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
      @JsonKey(name: "price") final int? price}) = _$CourseWithPriceDataImpl;

  factory _CourseWithPriceData.fromJson(Map<String, dynamic> json) =
      _$CourseWithPriceDataImpl.fromJson;

  @override
  @JsonKey(name: "course")
  Course get course;
  @override
  @JsonKey(name: "price")
  int? get price;
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
  @JsonKey(name: "courseFor")
  CourseForElement? get courseFor => throw _privateConstructorUsedError;
  @JsonKey(name: "courseType")
  CourseType? get courseType => throw _privateConstructorUsedError;
  @JsonKey(name: "previewPhoto")
  Photo? get previewPhoto => throw _privateConstructorUsedError;

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
      @JsonKey(name: "courseFor") CourseForElement? courseFor,
      @JsonKey(name: "courseType") CourseType? courseType,
      @JsonKey(name: "previewPhoto") Photo? previewPhoto});

  $CourseForElementCopyWith<$Res>? get courseFor;
  $CourseTypeCopyWith<$Res>? get courseType;
  $PhotoCopyWith<$Res>? get previewPhoto;
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
    Object? courseFor = freezed,
    Object? courseType = freezed,
    Object? previewPhoto = freezed,
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
      courseFor: freezed == courseFor
          ? _value.courseFor
          : courseFor // ignore: cast_nullable_to_non_nullable
              as CourseForElement?,
      courseType: freezed == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as CourseType?,
      previewPhoto: freezed == previewPhoto
          ? _value.previewPhoto
          : previewPhoto // ignore: cast_nullable_to_non_nullable
              as Photo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseForElementCopyWith<$Res>? get courseFor {
    if (_value.courseFor == null) {
      return null;
    }

    return $CourseForElementCopyWith<$Res>(_value.courseFor!, (value) {
      return _then(_value.copyWith(courseFor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseTypeCopyWith<$Res>? get courseType {
    if (_value.courseType == null) {
      return null;
    }

    return $CourseTypeCopyWith<$Res>(_value.courseType!, (value) {
      return _then(_value.copyWith(courseType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res>? get previewPhoto {
    if (_value.previewPhoto == null) {
      return null;
    }

    return $PhotoCopyWith<$Res>(_value.previewPhoto!, (value) {
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
      @JsonKey(name: "courseFor") CourseForElement? courseFor,
      @JsonKey(name: "courseType") CourseType? courseType,
      @JsonKey(name: "previewPhoto") Photo? previewPhoto});

  @override
  $CourseForElementCopyWith<$Res>? get courseFor;
  @override
  $CourseTypeCopyWith<$Res>? get courseType;
  @override
  $PhotoCopyWith<$Res>? get previewPhoto;
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
    Object? courseFor = freezed,
    Object? courseType = freezed,
    Object? previewPhoto = freezed,
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
      courseFor: freezed == courseFor
          ? _value.courseFor
          : courseFor // ignore: cast_nullable_to_non_nullable
              as CourseForElement?,
      courseType: freezed == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as CourseType?,
      previewPhoto: freezed == previewPhoto
          ? _value.previewPhoto
          : previewPhoto // ignore: cast_nullable_to_non_nullable
              as Photo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "courseFor") this.courseFor,
      @JsonKey(name: "courseType") this.courseType,
      @JsonKey(name: "previewPhoto") this.previewPhoto});

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
  final CourseForElement? courseFor;
  @override
  @JsonKey(name: "courseType")
  final CourseType? courseType;
  @override
  @JsonKey(name: "previewPhoto")
  final Photo? previewPhoto;

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
      @JsonKey(name: "courseFor") final CourseForElement? courseFor,
      @JsonKey(name: "courseType") final CourseType? courseType,
      @JsonKey(name: "previewPhoto") final Photo? previewPhoto}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "courseFor")
  CourseForElement? get courseFor;
  @override
  @JsonKey(name: "courseType")
  CourseType? get courseType;
  @override
  @JsonKey(name: "previewPhoto")
  Photo? get previewPhoto;
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
  String get description => throw _privateConstructorUsedError;

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
      @JsonKey(name: "description") String description});
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(name: "description") String description});
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
    Object? description = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(name: "description") required this.description});

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
  final String description;

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
          @JsonKey(name: "description") required final String description}) =
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
  String get description;
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
  @JsonKey(name: "courseTags")
  List<CourseForElement>? get courseTags => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "photo")
  Photo get photo => throw _privateConstructorUsedError;

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
      @JsonKey(name: "courseTags") List<CourseForElement>? courseTags,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "photo") Photo photo});

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
    Object? courseTags = freezed,
    Object? description = null,
    Object? photo = null,
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
      courseTags: freezed == courseTags
          ? _value.courseTags
          : courseTags // ignore: cast_nullable_to_non_nullable
              as List<CourseForElement>?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
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
      @JsonKey(name: "courseTags") List<CourseForElement>? courseTags,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "photo") Photo photo});

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
    Object? courseTags = freezed,
    Object? description = null,
    Object? photo = null,
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
      courseTags: freezed == courseTags
          ? _value._courseTags
          : courseTags // ignore: cast_nullable_to_non_nullable
              as List<CourseForElement>?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
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
      @JsonKey(name: "courseTags") final List<CourseForElement>? courseTags,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "photo") required this.photo})
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
  final List<CourseForElement>? _courseTags;
  @override
  @JsonKey(name: "courseTags")
  List<CourseForElement>? get courseTags {
    final value = _courseTags;
    if (value == null) return null;
    if (_courseTags is EqualUnmodifiableListView) return _courseTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "photo")
  final Photo photo;

  @override
  String toString() {
    return 'CourseType(name: $name, id: $id, date: $date, courseTags: $courseTags, description: $description, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTypeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._courseTags, _courseTags) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, date,
      const DeepCollectionEquality().hash(_courseTags), description, photo);

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
      @JsonKey(name: "courseTags") final List<CourseForElement>? courseTags,
      @JsonKey(name: "description") required final String description,
      @JsonKey(name: "photo") required final Photo photo}) = _$CourseTypeImpl;

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
  @JsonKey(name: "courseTags")
  List<CourseForElement>? get courseTags;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "photo")
  Photo get photo;
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
