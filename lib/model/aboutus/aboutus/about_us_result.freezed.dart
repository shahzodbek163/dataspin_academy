// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_us_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AboutUsResult _$AboutUsResultFromJson(Map<String, dynamic> json) {
  return _AboutUsResult.fromJson(json);
}

/// @nodoc
mixin _$AboutUsResult {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutUsResultCopyWith<AboutUsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutUsResultCopyWith<$Res> {
  factory $AboutUsResultCopyWith(
          AboutUsResult value, $Res Function(AboutUsResult) then) =
      _$AboutUsResultCopyWithImpl<$Res, AboutUsResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$AboutUsResultCopyWithImpl<$Res, $Val extends AboutUsResult>
    implements $AboutUsResultCopyWith<$Res> {
  _$AboutUsResultCopyWithImpl(this._value, this._then);

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
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AboutUsResultImplCopyWith<$Res>
    implements $AboutUsResultCopyWith<$Res> {
  factory _$$AboutUsResultImplCopyWith(
          _$AboutUsResultImpl value, $Res Function(_$AboutUsResultImpl) then) =
      __$$AboutUsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$AboutUsResultImplCopyWithImpl<$Res>
    extends _$AboutUsResultCopyWithImpl<$Res, _$AboutUsResultImpl>
    implements _$$AboutUsResultImplCopyWith<$Res> {
  __$$AboutUsResultImplCopyWithImpl(
      _$AboutUsResultImpl _value, $Res Function(_$AboutUsResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AboutUsResultImpl(
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
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutUsResultImpl implements _AboutUsResult {
  const _$AboutUsResultImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required this.data});

  factory _$AboutUsResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutUsResultImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final Data data;

  @override
  String toString() {
    return 'AboutUsResult(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutUsResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutUsResultImplCopyWith<_$AboutUsResultImpl> get copyWith =>
      __$$AboutUsResultImplCopyWithImpl<_$AboutUsResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutUsResultImplToJson(
      this,
    );
  }
}

abstract class _AboutUsResult implements AboutUsResult {
  const factory _AboutUsResult(
      {@JsonKey(name: "status") required final bool status,
      @JsonKey(name: "message") required final String message,
      @JsonKey(name: "data") required final Data data}) = _$AboutUsResultImpl;

  factory _AboutUsResult.fromJson(Map<String, dynamic> json) =
      _$AboutUsResultImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$AboutUsResultImplCopyWith<_$AboutUsResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "additionalPhoto")
  List<Photo> get additionalPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "licensePhotos")
  List<Photo> get licensePhotos => throw _privateConstructorUsedError;
  @JsonKey(name: "mainPhoto")
  Photo get mainPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "youTubeLinks")
  String get youTubeLinks => throw _privateConstructorUsedError;
  @JsonKey(name: "ourLocation")
  String get ourLocation => throw _privateConstructorUsedError;
  @JsonKey(name: "activityDesc")
  String get activityDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "fullAboutUs")
  String get fullAboutUs => throw _privateConstructorUsedError;
  @JsonKey(name: "academyName")
  String get academyName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "additionalPhoto") List<Photo> additionalPhoto,
      @JsonKey(name: "licensePhotos") List<Photo> licensePhotos,
      @JsonKey(name: "mainPhoto") Photo mainPhoto,
      @JsonKey(name: "youTubeLinks") String youTubeLinks,
      @JsonKey(name: "ourLocation") String ourLocation,
      @JsonKey(name: "activityDesc") String activityDesc,
      @JsonKey(name: "fullAboutUs") String fullAboutUs,
      @JsonKey(name: "academyName") String academyName});

  $PhotoCopyWith<$Res> get mainPhoto;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? additionalPhoto = null,
    Object? licensePhotos = null,
    Object? mainPhoto = null,
    Object? youTubeLinks = null,
    Object? ourLocation = null,
    Object? activityDesc = null,
    Object? fullAboutUs = null,
    Object? academyName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      additionalPhoto: null == additionalPhoto
          ? _value.additionalPhoto
          : additionalPhoto // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      licensePhotos: null == licensePhotos
          ? _value.licensePhotos
          : licensePhotos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      mainPhoto: null == mainPhoto
          ? _value.mainPhoto
          : mainPhoto // ignore: cast_nullable_to_non_nullable
              as Photo,
      youTubeLinks: null == youTubeLinks
          ? _value.youTubeLinks
          : youTubeLinks // ignore: cast_nullable_to_non_nullable
              as String,
      ourLocation: null == ourLocation
          ? _value.ourLocation
          : ourLocation // ignore: cast_nullable_to_non_nullable
              as String,
      activityDesc: null == activityDesc
          ? _value.activityDesc
          : activityDesc // ignore: cast_nullable_to_non_nullable
              as String,
      fullAboutUs: null == fullAboutUs
          ? _value.fullAboutUs
          : fullAboutUs // ignore: cast_nullable_to_non_nullable
              as String,
      academyName: null == academyName
          ? _value.academyName
          : academyName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res> get mainPhoto {
    return $PhotoCopyWith<$Res>(_value.mainPhoto, (value) {
      return _then(_value.copyWith(mainPhoto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "additionalPhoto") List<Photo> additionalPhoto,
      @JsonKey(name: "licensePhotos") List<Photo> licensePhotos,
      @JsonKey(name: "mainPhoto") Photo mainPhoto,
      @JsonKey(name: "youTubeLinks") String youTubeLinks,
      @JsonKey(name: "ourLocation") String ourLocation,
      @JsonKey(name: "activityDesc") String activityDesc,
      @JsonKey(name: "fullAboutUs") String fullAboutUs,
      @JsonKey(name: "academyName") String academyName});

  @override
  $PhotoCopyWith<$Res> get mainPhoto;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? additionalPhoto = null,
    Object? licensePhotos = null,
    Object? mainPhoto = null,
    Object? youTubeLinks = null,
    Object? ourLocation = null,
    Object? activityDesc = null,
    Object? fullAboutUs = null,
    Object? academyName = null,
  }) {
    return _then(_$DataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      additionalPhoto: null == additionalPhoto
          ? _value._additionalPhoto
          : additionalPhoto // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      licensePhotos: null == licensePhotos
          ? _value._licensePhotos
          : licensePhotos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      mainPhoto: null == mainPhoto
          ? _value.mainPhoto
          : mainPhoto // ignore: cast_nullable_to_non_nullable
              as Photo,
      youTubeLinks: null == youTubeLinks
          ? _value.youTubeLinks
          : youTubeLinks // ignore: cast_nullable_to_non_nullable
              as String,
      ourLocation: null == ourLocation
          ? _value.ourLocation
          : ourLocation // ignore: cast_nullable_to_non_nullable
              as String,
      activityDesc: null == activityDesc
          ? _value.activityDesc
          : activityDesc // ignore: cast_nullable_to_non_nullable
              as String,
      fullAboutUs: null == fullAboutUs
          ? _value.fullAboutUs
          : fullAboutUs // ignore: cast_nullable_to_non_nullable
              as String,
      academyName: null == academyName
          ? _value.academyName
          : academyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "additionalPhoto")
      required final List<Photo> additionalPhoto,
      @JsonKey(name: "licensePhotos") required final List<Photo> licensePhotos,
      @JsonKey(name: "mainPhoto") required this.mainPhoto,
      @JsonKey(name: "youTubeLinks") required this.youTubeLinks,
      @JsonKey(name: "ourLocation") required this.ourLocation,
      @JsonKey(name: "activityDesc") required this.activityDesc,
      @JsonKey(name: "fullAboutUs") required this.fullAboutUs,
      @JsonKey(name: "academyName") required this.academyName})
      : _additionalPhoto = additionalPhoto,
        _licensePhotos = licensePhotos;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  final List<Photo> _additionalPhoto;
  @override
  @JsonKey(name: "additionalPhoto")
  List<Photo> get additionalPhoto {
    if (_additionalPhoto is EqualUnmodifiableListView) return _additionalPhoto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalPhoto);
  }

  final List<Photo> _licensePhotos;
  @override
  @JsonKey(name: "licensePhotos")
  List<Photo> get licensePhotos {
    if (_licensePhotos is EqualUnmodifiableListView) return _licensePhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_licensePhotos);
  }

  @override
  @JsonKey(name: "mainPhoto")
  final Photo mainPhoto;
  @override
  @JsonKey(name: "youTubeLinks")
  final String youTubeLinks;
  @override
  @JsonKey(name: "ourLocation")
  final String ourLocation;
  @override
  @JsonKey(name: "activityDesc")
  final String activityDesc;
  @override
  @JsonKey(name: "fullAboutUs")
  final String fullAboutUs;
  @override
  @JsonKey(name: "academyName")
  final String academyName;

  @override
  String toString() {
    return 'Data(id: $id, additionalPhoto: $additionalPhoto, licensePhotos: $licensePhotos, mainPhoto: $mainPhoto, youTubeLinks: $youTubeLinks, ourLocation: $ourLocation, activityDesc: $activityDesc, fullAboutUs: $fullAboutUs, academyName: $academyName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._additionalPhoto, _additionalPhoto) &&
            const DeepCollectionEquality()
                .equals(other._licensePhotos, _licensePhotos) &&
            (identical(other.mainPhoto, mainPhoto) ||
                other.mainPhoto == mainPhoto) &&
            (identical(other.youTubeLinks, youTubeLinks) ||
                other.youTubeLinks == youTubeLinks) &&
            (identical(other.ourLocation, ourLocation) ||
                other.ourLocation == ourLocation) &&
            (identical(other.activityDesc, activityDesc) ||
                other.activityDesc == activityDesc) &&
            (identical(other.fullAboutUs, fullAboutUs) ||
                other.fullAboutUs == fullAboutUs) &&
            (identical(other.academyName, academyName) ||
                other.academyName == academyName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_additionalPhoto),
      const DeepCollectionEquality().hash(_licensePhotos),
      mainPhoto,
      youTubeLinks,
      ourLocation,
      activityDesc,
      fullAboutUs,
      academyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "additionalPhoto")
      required final List<Photo> additionalPhoto,
      @JsonKey(name: "licensePhotos") required final List<Photo> licensePhotos,
      @JsonKey(name: "mainPhoto") required final Photo mainPhoto,
      @JsonKey(name: "youTubeLinks") required final String youTubeLinks,
      @JsonKey(name: "ourLocation") required final String ourLocation,
      @JsonKey(name: "activityDesc") required final String activityDesc,
      @JsonKey(name: "fullAboutUs") required final String fullAboutUs,
      @JsonKey(name: "academyName")
      required final String academyName}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "additionalPhoto")
  List<Photo> get additionalPhoto;
  @override
  @JsonKey(name: "licensePhotos")
  List<Photo> get licensePhotos;
  @override
  @JsonKey(name: "mainPhoto")
  Photo get mainPhoto;
  @override
  @JsonKey(name: "youTubeLinks")
  String get youTubeLinks;
  @override
  @JsonKey(name: "ourLocation")
  String get ourLocation;
  @override
  @JsonKey(name: "activityDesc")
  String get activityDesc;
  @override
  @JsonKey(name: "fullAboutUs")
  String get fullAboutUs;
  @override
  @JsonKey(name: "academyName")
  String get academyName;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
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
