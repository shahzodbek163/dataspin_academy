// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_type_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseTypeResult _$CourseTypeResultFromJson(Map<String, dynamic> json) {
  return _CourseTypeResult.fromJson(json);
}

/// @nodoc
mixin _$CourseTypeResult {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Datum> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseTypeResultCopyWith<CourseTypeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTypeResultCopyWith<$Res> {
  factory $CourseTypeResultCopyWith(
          CourseTypeResult value, $Res Function(CourseTypeResult) then) =
      _$CourseTypeResultCopyWithImpl<$Res, CourseTypeResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<Datum> data});
}

/// @nodoc
class _$CourseTypeResultCopyWithImpl<$Res, $Val extends CourseTypeResult>
    implements $CourseTypeResultCopyWith<$Res> {
  _$CourseTypeResultCopyWithImpl(this._value, this._then);

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
              as List<Datum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseTypeResultImplCopyWith<$Res>
    implements $CourseTypeResultCopyWith<$Res> {
  factory _$$CourseTypeResultImplCopyWith(_$CourseTypeResultImpl value,
          $Res Function(_$CourseTypeResultImpl) then) =
      __$$CourseTypeResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<Datum> data});
}

/// @nodoc
class __$$CourseTypeResultImplCopyWithImpl<$Res>
    extends _$CourseTypeResultCopyWithImpl<$Res, _$CourseTypeResultImpl>
    implements _$$CourseTypeResultImplCopyWith<$Res> {
  __$$CourseTypeResultImplCopyWithImpl(_$CourseTypeResultImpl _value,
      $Res Function(_$CourseTypeResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$CourseTypeResultImpl(
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
              as List<Datum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseTypeResultImpl implements _CourseTypeResult {
  const _$CourseTypeResultImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required final List<Datum> data})
      : _data = data;

  factory _$CourseTypeResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseTypeResultImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<Datum> _data;
  @override
  @JsonKey(name: "data")
  List<Datum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CourseTypeResult(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTypeResultImpl &&
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
  _$$CourseTypeResultImplCopyWith<_$CourseTypeResultImpl> get copyWith =>
      __$$CourseTypeResultImplCopyWithImpl<_$CourseTypeResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseTypeResultImplToJson(
      this,
    );
  }
}

abstract class _CourseTypeResult implements CourseTypeResult {
  const factory _CourseTypeResult(
          {@JsonKey(name: "status") required final bool status,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final List<Datum> data}) =
      _$CourseTypeResultImpl;

  factory _CourseTypeResult.fromJson(Map<String, dynamic> json) =
      _$CourseTypeResultImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  List<Datum> get data;
  @override
  @JsonKey(ignore: true)
  _$$CourseTypeResultImplCopyWith<_$CourseTypeResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
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
  List<CourseTag> get courseTags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "photo") Photo photo,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "courseTags") List<CourseTag> courseTags});

  $PhotoCopyWith<$Res> get photo;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

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
              as List<CourseTag>,
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
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "photo") Photo photo,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "courseTags") List<CourseTag> courseTags});

  @override
  $PhotoCopyWith<$Res> get photo;
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
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
    return _then(_$DatumImpl(
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
              as List<CourseTag>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "photo") required this.photo,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "courseTags") required final List<CourseTag> courseTags})
      : _courseTags = courseTags;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

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
  final List<CourseTag> _courseTags;
  @override
  @JsonKey(name: "courseTags")
  List<CourseTag> get courseTags {
    if (_courseTags is EqualUnmodifiableListView) return _courseTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courseTags);
  }

  @override
  String toString() {
    return 'Datum(name: $name, id: $id, date: $date, photo: $photo, description: $description, courseTags: $courseTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
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
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "id") required final int id,
      @JsonKey(name: "date") required final DateTime date,
      @JsonKey(name: "photo") required final Photo photo,
      @JsonKey(name: "description") required final String description,
      @JsonKey(name: "courseTags")
      required final List<CourseTag> courseTags}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

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
  List<CourseTag> get courseTags;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseTag _$CourseTagFromJson(Map<String, dynamic> json) {
  return _CourseTag.fromJson(json);
}

/// @nodoc
mixin _$CourseTag {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseTagCopyWith<CourseTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTagCopyWith<$Res> {
  factory $CourseTagCopyWith(CourseTag value, $Res Function(CourseTag) then) =
      _$CourseTagCopyWithImpl<$Res, CourseTag>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date});
}

/// @nodoc
class _$CourseTagCopyWithImpl<$Res, $Val extends CourseTag>
    implements $CourseTagCopyWith<$Res> {
  _$CourseTagCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseTagImplCopyWith<$Res>
    implements $CourseTagCopyWith<$Res> {
  factory _$$CourseTagImplCopyWith(
          _$CourseTagImpl value, $Res Function(_$CourseTagImpl) then) =
      __$$CourseTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date});
}

/// @nodoc
class __$$CourseTagImplCopyWithImpl<$Res>
    extends _$CourseTagCopyWithImpl<$Res, _$CourseTagImpl>
    implements _$$CourseTagImplCopyWith<$Res> {
  __$$CourseTagImplCopyWithImpl(
      _$CourseTagImpl _value, $Res Function(_$CourseTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? date = null,
  }) {
    return _then(_$CourseTagImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseTagImpl implements _CourseTag {
  const _$CourseTagImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "date") required this.date});

  factory _$CourseTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseTagImplFromJson(json);

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
  String toString() {
    return 'CourseTag(name: $name, id: $id, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTagImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTagImplCopyWith<_$CourseTagImpl> get copyWith =>
      __$$CourseTagImplCopyWithImpl<_$CourseTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseTagImplToJson(
      this,
    );
  }
}

abstract class _CourseTag implements CourseTag {
  const factory _CourseTag(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "id") required final int id,
      @JsonKey(name: "date") required final DateTime date}) = _$CourseTagImpl;

  factory _CourseTag.fromJson(Map<String, dynamic> json) =
      _$CourseTagImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$CourseTagImplCopyWith<_$CourseTagImpl> get copyWith =>
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
