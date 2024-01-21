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
  AccountResponseData? get data => throw _privateConstructorUsedError;

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
      @JsonKey(name: "data") AccountResponseData? data});

  $AccountResponseDataCopyWith<$Res>? get data;
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
              as AccountResponseData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AccountResponseDataCopyWith<$Res>(_value.data!, (value) {
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
      @JsonKey(name: "data") AccountResponseData? data});

  @override
  $AccountResponseDataCopyWith<$Res>? get data;
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
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountResponseData?,
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
  final AccountResponseData? data;

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
          @JsonKey(name: "data") required final AccountResponseData? data}) =
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
  AccountResponseData? get data;
  @override
  @JsonKey(ignore: true)
  _$$AccountResponseImplCopyWith<_$AccountResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountResponseData _$AccountResponseDataFromJson(Map<String, dynamic> json) {
  return _AccountResponseData.fromJson(json);
}

/// @nodoc
mixin _$AccountResponseData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePhoto")
  dynamic get profilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "primaryPhone")
  String get primaryPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "secondaryPhone")
  dynamic get secondaryPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "firstname")
  String get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: "lastname")
  String get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: "middlename")
  String get middlename => throw _privateConstructorUsedError;
  @JsonKey(name: "birthday")
  DateTime get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: "userData")
  UserData get userData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountResponseDataCopyWith<AccountResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountResponseDataCopyWith<$Res> {
  factory $AccountResponseDataCopyWith(
          AccountResponseData value, $Res Function(AccountResponseData) then) =
      _$AccountResponseDataCopyWithImpl<$Res, AccountResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "profilePhoto") dynamic profilePhoto,
      @JsonKey(name: "primaryPhone") String primaryPhone,
      @JsonKey(name: "secondaryPhone") dynamic secondaryPhone,
      @JsonKey(name: "firstname") String firstname,
      @JsonKey(name: "lastname") String lastname,
      @JsonKey(name: "middlename") String middlename,
      @JsonKey(name: "birthday") DateTime birthday,
      @JsonKey(name: "userData") UserData userData});

  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class _$AccountResponseDataCopyWithImpl<$Res, $Val extends AccountResponseData>
    implements $AccountResponseDataCopyWith<$Res> {
  _$AccountResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? profilePhoto = freezed,
    Object? primaryPhone = null,
    Object? secondaryPhone = freezed,
    Object? firstname = null,
    Object? lastname = null,
    Object? middlename = null,
    Object? birthday = null,
    Object? userData = null,
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
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
      primaryPhone: null == primaryPhone
          ? _value.primaryPhone
          : primaryPhone // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryPhone: freezed == secondaryPhone
          ? _value.secondaryPhone
          : secondaryPhone // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountResponseDataImplCopyWith<$Res>
    implements $AccountResponseDataCopyWith<$Res> {
  factory _$$AccountResponseDataImplCopyWith(_$AccountResponseDataImpl value,
          $Res Function(_$AccountResponseDataImpl) then) =
      __$$AccountResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "profilePhoto") dynamic profilePhoto,
      @JsonKey(name: "primaryPhone") String primaryPhone,
      @JsonKey(name: "secondaryPhone") dynamic secondaryPhone,
      @JsonKey(name: "firstname") String firstname,
      @JsonKey(name: "lastname") String lastname,
      @JsonKey(name: "middlename") String middlename,
      @JsonKey(name: "birthday") DateTime birthday,
      @JsonKey(name: "userData") UserData userData});

  @override
  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$$AccountResponseDataImplCopyWithImpl<$Res>
    extends _$AccountResponseDataCopyWithImpl<$Res, _$AccountResponseDataImpl>
    implements _$$AccountResponseDataImplCopyWith<$Res> {
  __$$AccountResponseDataImplCopyWithImpl(_$AccountResponseDataImpl _value,
      $Res Function(_$AccountResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? profilePhoto = freezed,
    Object? primaryPhone = null,
    Object? secondaryPhone = freezed,
    Object? firstname = null,
    Object? lastname = null,
    Object? middlename = null,
    Object? birthday = null,
    Object? userData = null,
  }) {
    return _then(_$AccountResponseDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
      primaryPhone: null == primaryPhone
          ? _value.primaryPhone
          : primaryPhone // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryPhone: freezed == secondaryPhone
          ? _value.secondaryPhone
          : secondaryPhone // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountResponseDataImpl implements _AccountResponseData {
  const _$AccountResponseDataImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "primaryPhone") required this.primaryPhone,
      @JsonKey(name: "secondaryPhone") this.secondaryPhone,
      @JsonKey(name: "firstname") required this.firstname,
      @JsonKey(name: "lastname") required this.lastname,
      @JsonKey(name: "middlename") required this.middlename,
      @JsonKey(name: "birthday") required this.birthday,
      @JsonKey(name: "userData") required this.userData});

  factory _$AccountResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountResponseDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "date")
  final DateTime date;
  @override
  @JsonKey(name: "profilePhoto")
  final dynamic profilePhoto;
  @override
  @JsonKey(name: "primaryPhone")
  final String primaryPhone;
  @override
  @JsonKey(name: "secondaryPhone")
  final dynamic secondaryPhone;
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
  @JsonKey(name: "userData")
  final UserData userData;

  @override
  String toString() {
    return 'AccountResponseData(id: $id, date: $date, profilePhoto: $profilePhoto, primaryPhone: $primaryPhone, secondaryPhone: $secondaryPhone, firstname: $firstname, lastname: $lastname, middlename: $middlename, birthday: $birthday, userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountResponseDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other.profilePhoto, profilePhoto) &&
            (identical(other.primaryPhone, primaryPhone) ||
                other.primaryPhone == primaryPhone) &&
            const DeepCollectionEquality()
                .equals(other.secondaryPhone, secondaryPhone) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.middlename, middlename) ||
                other.middlename == middlename) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      const DeepCollectionEquality().hash(profilePhoto),
      primaryPhone,
      const DeepCollectionEquality().hash(secondaryPhone),
      firstname,
      lastname,
      middlename,
      birthday,
      userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountResponseDataImplCopyWith<_$AccountResponseDataImpl> get copyWith =>
      __$$AccountResponseDataImplCopyWithImpl<_$AccountResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountResponseDataImplToJson(
      this,
    );
  }
}

abstract class _AccountResponseData implements AccountResponseData {
  const factory _AccountResponseData(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "date") required final DateTime date,
          @JsonKey(name: "profilePhoto") final dynamic profilePhoto,
          @JsonKey(name: "primaryPhone") required final String primaryPhone,
          @JsonKey(name: "secondaryPhone") final dynamic secondaryPhone,
          @JsonKey(name: "firstname") required final String firstname,
          @JsonKey(name: "lastname") required final String lastname,
          @JsonKey(name: "middlename") required final String middlename,
          @JsonKey(name: "birthday") required final DateTime birthday,
          @JsonKey(name: "userData") required final UserData userData}) =
      _$AccountResponseDataImpl;

  factory _AccountResponseData.fromJson(Map<String, dynamic> json) =
      _$AccountResponseDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "date")
  DateTime get date;
  @override
  @JsonKey(name: "profilePhoto")
  dynamic get profilePhoto;
  @override
  @JsonKey(name: "primaryPhone")
  String get primaryPhone;
  @override
  @JsonKey(name: "secondaryPhone")
  dynamic get secondaryPhone;
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
  @JsonKey(name: "userData")
  UserData get userData;
  @override
  @JsonKey(ignore: true)
  _$$AccountResponseDataImplCopyWith<_$AccountResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call({@JsonKey(name: "id") int id});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

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
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") int id});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UserDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl({@JsonKey(name: "id") required this.id});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;

  @override
  String toString() {
    return 'UserData(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData({@JsonKey(name: "id") required final int id}) =
      _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
