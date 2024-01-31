// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_promocode_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllPromocodeResponse _$AllPromocodeResponseFromJson(Map<String, dynamic> json) {
  return _AllPromocodeResponse.fromJson(json);
}

/// @nodoc
mixin _$AllPromocodeResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<AllPromocodeData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllPromocodeResponseCopyWith<AllPromocodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllPromocodeResponseCopyWith<$Res> {
  factory $AllPromocodeResponseCopyWith(AllPromocodeResponse value,
          $Res Function(AllPromocodeResponse) then) =
      _$AllPromocodeResponseCopyWithImpl<$Res, AllPromocodeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<AllPromocodeData> data});
}

/// @nodoc
class _$AllPromocodeResponseCopyWithImpl<$Res,
        $Val extends AllPromocodeResponse>
    implements $AllPromocodeResponseCopyWith<$Res> {
  _$AllPromocodeResponseCopyWithImpl(this._value, this._then);

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
              as List<AllPromocodeData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllPromocodeResponseImplCopyWith<$Res>
    implements $AllPromocodeResponseCopyWith<$Res> {
  factory _$$AllPromocodeResponseImplCopyWith(_$AllPromocodeResponseImpl value,
          $Res Function(_$AllPromocodeResponseImpl) then) =
      __$$AllPromocodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<AllPromocodeData> data});
}

/// @nodoc
class __$$AllPromocodeResponseImplCopyWithImpl<$Res>
    extends _$AllPromocodeResponseCopyWithImpl<$Res, _$AllPromocodeResponseImpl>
    implements _$$AllPromocodeResponseImplCopyWith<$Res> {
  __$$AllPromocodeResponseImplCopyWithImpl(_$AllPromocodeResponseImpl _value,
      $Res Function(_$AllPromocodeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AllPromocodeResponseImpl(
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
              as List<AllPromocodeData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllPromocodeResponseImpl implements _AllPromocodeResponse {
  const _$AllPromocodeResponseImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required final List<AllPromocodeData> data})
      : _data = data;

  factory _$AllPromocodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllPromocodeResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<AllPromocodeData> _data;
  @override
  @JsonKey(name: "data")
  List<AllPromocodeData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AllPromocodeResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllPromocodeResponseImpl &&
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
  _$$AllPromocodeResponseImplCopyWith<_$AllPromocodeResponseImpl>
      get copyWith =>
          __$$AllPromocodeResponseImplCopyWithImpl<_$AllPromocodeResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllPromocodeResponseImplToJson(
      this,
    );
  }
}

abstract class _AllPromocodeResponse implements AllPromocodeResponse {
  const factory _AllPromocodeResponse(
          {@JsonKey(name: "status") required final bool status,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final List<AllPromocodeData> data}) =
      _$AllPromocodeResponseImpl;

  factory _AllPromocodeResponse.fromJson(Map<String, dynamic> json) =
      _$AllPromocodeResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  List<AllPromocodeData> get data;
  @override
  @JsonKey(ignore: true)
  _$$AllPromocodeResponseImplCopyWith<_$AllPromocodeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AllPromocodeData _$AllPromocodeDataFromJson(Map<String, dynamic> json) {
  return _AllPromocodeData.fromJson(json);
}

/// @nodoc
mixin _$AllPromocodeData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userInfo")
  AccountData get userInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "activeCount")
  int get activeCount => throw _privateConstructorUsedError;
  @JsonKey(name: "totalCount")
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: "promoCode")
  String get promoCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllPromocodeDataCopyWith<AllPromocodeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllPromocodeDataCopyWith<$Res> {
  factory $AllPromocodeDataCopyWith(
          AllPromocodeData value, $Res Function(AllPromocodeData) then) =
      _$AllPromocodeDataCopyWithImpl<$Res, AllPromocodeData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "userInfo") AccountData userInfo,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "status") bool status,
      @JsonKey(name: "activeCount") int activeCount,
      @JsonKey(name: "totalCount") int totalCount,
      @JsonKey(name: "promoCode") String promoCode});

  $AccountDataCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$AllPromocodeDataCopyWithImpl<$Res, $Val extends AllPromocodeData>
    implements $AllPromocodeDataCopyWith<$Res> {
  _$AllPromocodeDataCopyWithImpl(this._value, this._then);

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
    Object? status = null,
    Object? activeCount = null,
    Object? totalCount = null,
    Object? promoCode = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      activeCount: null == activeCount
          ? _value.activeCount
          : activeCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      promoCode: null == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$AllPromocodeDataImplCopyWith<$Res>
    implements $AllPromocodeDataCopyWith<$Res> {
  factory _$$AllPromocodeDataImplCopyWith(_$AllPromocodeDataImpl value,
          $Res Function(_$AllPromocodeDataImpl) then) =
      __$$AllPromocodeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "userInfo") AccountData userInfo,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "status") bool status,
      @JsonKey(name: "activeCount") int activeCount,
      @JsonKey(name: "totalCount") int totalCount,
      @JsonKey(name: "promoCode") String promoCode});

  @override
  $AccountDataCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$AllPromocodeDataImplCopyWithImpl<$Res>
    extends _$AllPromocodeDataCopyWithImpl<$Res, _$AllPromocodeDataImpl>
    implements _$$AllPromocodeDataImplCopyWith<$Res> {
  __$$AllPromocodeDataImplCopyWithImpl(_$AllPromocodeDataImpl _value,
      $Res Function(_$AllPromocodeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userInfo = null,
    Object? date = null,
    Object? status = null,
    Object? activeCount = null,
    Object? totalCount = null,
    Object? promoCode = null,
  }) {
    return _then(_$AllPromocodeDataImpl(
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      activeCount: null == activeCount
          ? _value.activeCount
          : activeCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      promoCode: null == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllPromocodeDataImpl implements _AllPromocodeData {
  const _$AllPromocodeDataImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "userInfo") required this.userInfo,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "activeCount") required this.activeCount,
      @JsonKey(name: "totalCount") required this.totalCount,
      @JsonKey(name: "promoCode") required this.promoCode});

  factory _$AllPromocodeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllPromocodeDataImplFromJson(json);

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
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "activeCount")
  final int activeCount;
  @override
  @JsonKey(name: "totalCount")
  final int totalCount;
  @override
  @JsonKey(name: "promoCode")
  final String promoCode;

  @override
  String toString() {
    return 'AllPromocodeData(id: $id, userInfo: $userInfo, date: $date, status: $status, activeCount: $activeCount, totalCount: $totalCount, promoCode: $promoCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllPromocodeDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.activeCount, activeCount) ||
                other.activeCount == activeCount) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userInfo, date, status,
      activeCount, totalCount, promoCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllPromocodeDataImplCopyWith<_$AllPromocodeDataImpl> get copyWith =>
      __$$AllPromocodeDataImplCopyWithImpl<_$AllPromocodeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllPromocodeDataImplToJson(
      this,
    );
  }
}

abstract class _AllPromocodeData implements AllPromocodeData {
  const factory _AllPromocodeData(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "userInfo") required final AccountData userInfo,
          @JsonKey(name: "date") required final DateTime date,
          @JsonKey(name: "status") required final bool status,
          @JsonKey(name: "activeCount") required final int activeCount,
          @JsonKey(name: "totalCount") required final int totalCount,
          @JsonKey(name: "promoCode") required final String promoCode}) =
      _$AllPromocodeDataImpl;

  factory _AllPromocodeData.fromJson(Map<String, dynamic> json) =
      _$AllPromocodeDataImpl.fromJson;

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
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "activeCount")
  int get activeCount;
  @override
  @JsonKey(name: "totalCount")
  int get totalCount;
  @override
  @JsonKey(name: "promoCode")
  String get promoCode;
  @override
  @JsonKey(ignore: true)
  _$$AllPromocodeDataImplCopyWith<_$AllPromocodeDataImpl> get copyWith =>
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
