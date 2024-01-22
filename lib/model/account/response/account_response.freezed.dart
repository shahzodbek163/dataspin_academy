// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountResponse _$AccountResponseFromJson(Map<String, dynamic> json) {
  return _AccountResponse.fromJson(json);
}

/// @nodoc
mixin _$AccountResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  AccountData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountResponseCopyWith<AccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountResponseCopyWith<$Res> {
  factory $AccountResponseCopyWith(
          AccountResponse value, $Res Function(AccountResponse) then) =
      _$AccountResponseCopyWithImpl<$Res, AccountResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") AccountData data});

  $AccountDataCopyWith<$Res> get data;
}

/// @nodoc
class _$AccountResponseCopyWithImpl<$Res, $Val extends AccountResponse>
    implements $AccountResponseCopyWith<$Res> {
  _$AccountResponseCopyWithImpl(this._value, this._then);

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
              as AccountData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountDataCopyWith<$Res> get data {
    return $AccountDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountResponseImplCopyWith<$Res>
    implements $AccountResponseCopyWith<$Res> {
  factory _$$AccountResponseImplCopyWith(_$AccountResponseImpl value,
          $Res Function(_$AccountResponseImpl) then) =
      __$$AccountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") AccountData data});

  @override
  $AccountDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$AccountResponseImplCopyWithImpl<$Res>
    extends _$AccountResponseCopyWithImpl<$Res, _$AccountResponseImpl>
    implements _$$AccountResponseImplCopyWith<$Res> {
  __$$AccountResponseImplCopyWithImpl(
      _$AccountResponseImpl _value, $Res Function(_$AccountResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AccountResponseImpl(
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
              as AccountData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountResponseImpl implements _AccountResponse {
  const _$AccountResponseImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required this.data});

  factory _$AccountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final AccountData data;

  @override
  String toString() {
    return 'AccountResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountResponseImpl &&
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
  _$$AccountResponseImplCopyWith<_$AccountResponseImpl> get copyWith =>
      __$$AccountResponseImplCopyWithImpl<_$AccountResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountResponseImplToJson(
      this,
    );
  }
}

abstract class _AccountResponse implements AccountResponse {
  const factory _AccountResponse(
          {@JsonKey(name: "status") required final bool status,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final AccountData data}) =
      _$AccountResponseImpl;

  factory _AccountResponse.fromJson(Map<String, dynamic> json) =
      _$AccountResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  AccountData get data;
  @override
  @JsonKey(ignore: true)
  _$$AccountResponseImplCopyWith<_$AccountResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountData _$AccountDataFromJson(Map<String, dynamic> json) {
  return _AccountData.fromJson(json);
}

/// @nodoc
mixin _$AccountData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "userData")
  ProfilePhoto get userData => throw _privateConstructorUsedError;
  @JsonKey(name: "firstname")
  String get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: "lastname")
  String get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: "middlename")
  String get middlename => throw _privateConstructorUsedError;
  @JsonKey(name: "birthday")
  DateTime get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePhoto")
  ProfilePhoto? get profilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "primaryPhone")
  String get primaryPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "secondaryPhone")
  String get secondaryPhone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountDataCopyWith<AccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDataCopyWith<$Res> {
  factory $AccountDataCopyWith(
          AccountData value, $Res Function(AccountData) then) =
      _$AccountDataCopyWithImpl<$Res, AccountData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "userData") ProfilePhoto userData,
      @JsonKey(name: "firstname") String firstname,
      @JsonKey(name: "lastname") String lastname,
      @JsonKey(name: "middlename") String middlename,
      @JsonKey(name: "birthday") DateTime birthday,
      @JsonKey(name: "profilePhoto") ProfilePhoto? profilePhoto,
      @JsonKey(name: "primaryPhone") String primaryPhone,
      @JsonKey(name: "secondaryPhone") String secondaryPhone});

  $ProfilePhotoCopyWith<$Res> get userData;
  $ProfilePhotoCopyWith<$Res>? get profilePhoto;
}

/// @nodoc
class _$AccountDataCopyWithImpl<$Res, $Val extends AccountData>
    implements $AccountDataCopyWith<$Res> {
  _$AccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? userData = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? middlename = null,
    Object? birthday = null,
    Object? profilePhoto = freezed,
    Object? primaryPhone = null,
    Object? secondaryPhone = null,
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
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as ProfilePhoto,
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
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as ProfilePhoto?,
      primaryPhone: null == primaryPhone
          ? _value.primaryPhone
          : primaryPhone // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryPhone: null == secondaryPhone
          ? _value.secondaryPhone
          : secondaryPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfilePhotoCopyWith<$Res> get userData {
    return $ProfilePhotoCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfilePhotoCopyWith<$Res>? get profilePhoto {
    if (_value.profilePhoto == null) {
      return null;
    }

    return $ProfilePhotoCopyWith<$Res>(_value.profilePhoto!, (value) {
      return _then(_value.copyWith(profilePhoto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountDataImplCopyWith<$Res>
    implements $AccountDataCopyWith<$Res> {
  factory _$$AccountDataImplCopyWith(
          _$AccountDataImpl value, $Res Function(_$AccountDataImpl) then) =
      __$$AccountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "userData") ProfilePhoto userData,
      @JsonKey(name: "firstname") String firstname,
      @JsonKey(name: "lastname") String lastname,
      @JsonKey(name: "middlename") String middlename,
      @JsonKey(name: "birthday") DateTime birthday,
      @JsonKey(name: "profilePhoto") ProfilePhoto? profilePhoto,
      @JsonKey(name: "primaryPhone") String primaryPhone,
      @JsonKey(name: "secondaryPhone") String secondaryPhone});

  @override
  $ProfilePhotoCopyWith<$Res> get userData;
  @override
  $ProfilePhotoCopyWith<$Res>? get profilePhoto;
}

/// @nodoc
class __$$AccountDataImplCopyWithImpl<$Res>
    extends _$AccountDataCopyWithImpl<$Res, _$AccountDataImpl>
    implements _$$AccountDataImplCopyWith<$Res> {
  __$$AccountDataImplCopyWithImpl(
      _$AccountDataImpl _value, $Res Function(_$AccountDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? userData = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? middlename = null,
    Object? birthday = null,
    Object? profilePhoto = freezed,
    Object? primaryPhone = null,
    Object? secondaryPhone = null,
  }) {
    return _then(_$AccountDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as ProfilePhoto,
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
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as ProfilePhoto?,
      primaryPhone: null == primaryPhone
          ? _value.primaryPhone
          : primaryPhone // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryPhone: null == secondaryPhone
          ? _value.secondaryPhone
          : secondaryPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDataImpl implements _AccountData {
  const _$AccountDataImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "userData") required this.userData,
      @JsonKey(name: "firstname") required this.firstname,
      @JsonKey(name: "lastname") required this.lastname,
      @JsonKey(name: "middlename") required this.middlename,
      @JsonKey(name: "birthday") required this.birthday,
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "primaryPhone") required this.primaryPhone,
      @JsonKey(name: "secondaryPhone") required this.secondaryPhone});

  factory _$AccountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "date")
  final DateTime date;
  @override
  @JsonKey(name: "userData")
  final ProfilePhoto userData;
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
  @JsonKey(name: "birthday")
  final DateTime birthday;
  @override
  @JsonKey(name: "profilePhoto")
  final ProfilePhoto? profilePhoto;
  @override
  @JsonKey(name: "primaryPhone")
  final String primaryPhone;
  @override
  @JsonKey(name: "secondaryPhone")
  final String secondaryPhone;

  @override
  String toString() {
    return 'AccountData(id: $id, date: $date, userData: $userData, firstname: $firstname, lastname: $lastname, middlename: $middlename, birthday: $birthday, profilePhoto: $profilePhoto, primaryPhone: $primaryPhone, secondaryPhone: $secondaryPhone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.middlename, middlename) ||
                other.middlename == middlename) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.primaryPhone, primaryPhone) ||
                other.primaryPhone == primaryPhone) &&
            (identical(other.secondaryPhone, secondaryPhone) ||
                other.secondaryPhone == secondaryPhone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      userData,
      firstname,
      lastname,
      middlename,
      birthday,
      profilePhoto,
      primaryPhone,
      secondaryPhone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDataImplCopyWith<_$AccountDataImpl> get copyWith =>
      __$$AccountDataImplCopyWithImpl<_$AccountDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDataImplToJson(
      this,
    );
  }
}

abstract class _AccountData implements AccountData {
  const factory _AccountData(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "date") required final DateTime date,
      @JsonKey(name: "userData") required final ProfilePhoto userData,
      @JsonKey(name: "firstname") required final String firstname,
      @JsonKey(name: "lastname") required final String lastname,
      @JsonKey(name: "middlename") required final String middlename,
      @JsonKey(name: "birthday") required final DateTime birthday,
      @JsonKey(name: "profilePhoto") final ProfilePhoto? profilePhoto,
      @JsonKey(name: "primaryPhone") required final String primaryPhone,
      @JsonKey(name: "secondaryPhone")
      required final String secondaryPhone}) = _$AccountDataImpl;

  factory _AccountData.fromJson(Map<String, dynamic> json) =
      _$AccountDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "date")
  DateTime get date;
  @override
  @JsonKey(name: "userData")
  ProfilePhoto get userData;
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
  @JsonKey(name: "birthday")
  DateTime get birthday;
  @override
  @JsonKey(name: "profilePhoto")
  ProfilePhoto? get profilePhoto;
  @override
  @JsonKey(name: "primaryPhone")
  String get primaryPhone;
  @override
  @JsonKey(name: "secondaryPhone")
  String get secondaryPhone;
  @override
  @JsonKey(ignore: true)
  _$$AccountDataImplCopyWith<_$AccountDataImpl> get copyWith =>
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
