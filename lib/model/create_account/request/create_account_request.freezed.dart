// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAccountRequest _$CreateAccountRequestFromJson(Map<String, dynamic> json) {
  return _CreateAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateAccountRequest {
  String? get birthday => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String? get middlename => throw _privateConstructorUsedError;
  String get tel1 => throw _privateConstructorUsedError;
  String? get tel2 => throw _privateConstructorUsedError;
  String? get tg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAccountRequestCopyWith<CreateAccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountRequestCopyWith<$Res> {
  factory $CreateAccountRequestCopyWith(CreateAccountRequest value,
          $Res Function(CreateAccountRequest) then) =
      _$CreateAccountRequestCopyWithImpl<$Res, CreateAccountRequest>;
  @useResult
  $Res call(
      {String? birthday,
      String firstname,
      String lastname,
      String? middlename,
      String tel1,
      String? tel2,
      String? tg});
}

/// @nodoc
class _$CreateAccountRequestCopyWithImpl<$Res,
        $Val extends CreateAccountRequest>
    implements $CreateAccountRequestCopyWith<$Res> {
  _$CreateAccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthday = freezed,
    Object? firstname = null,
    Object? lastname = null,
    Object? middlename = freezed,
    Object? tel1 = null,
    Object? tel2 = freezed,
    Object? tg = freezed,
  }) {
    return _then(_value.copyWith(
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
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
      tel1: null == tel1
          ? _value.tel1
          : tel1 // ignore: cast_nullable_to_non_nullable
              as String,
      tel2: freezed == tel2
          ? _value.tel2
          : tel2 // ignore: cast_nullable_to_non_nullable
              as String?,
      tg: freezed == tg
          ? _value.tg
          : tg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAccountRequestImplCopyWith<$Res>
    implements $CreateAccountRequestCopyWith<$Res> {
  factory _$$CreateAccountRequestImplCopyWith(_$CreateAccountRequestImpl value,
          $Res Function(_$CreateAccountRequestImpl) then) =
      __$$CreateAccountRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? birthday,
      String firstname,
      String lastname,
      String? middlename,
      String tel1,
      String? tel2,
      String? tg});
}

/// @nodoc
class __$$CreateAccountRequestImplCopyWithImpl<$Res>
    extends _$CreateAccountRequestCopyWithImpl<$Res, _$CreateAccountRequestImpl>
    implements _$$CreateAccountRequestImplCopyWith<$Res> {
  __$$CreateAccountRequestImplCopyWithImpl(_$CreateAccountRequestImpl _value,
      $Res Function(_$CreateAccountRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthday = freezed,
    Object? firstname = null,
    Object? lastname = null,
    Object? middlename = freezed,
    Object? tel1 = null,
    Object? tel2 = freezed,
    Object? tg = freezed,
  }) {
    return _then(_$CreateAccountRequestImpl(
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
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
      tel1: null == tel1
          ? _value.tel1
          : tel1 // ignore: cast_nullable_to_non_nullable
              as String,
      tel2: freezed == tel2
          ? _value.tel2
          : tel2 // ignore: cast_nullable_to_non_nullable
              as String?,
      tg: freezed == tg
          ? _value.tg
          : tg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAccountRequestImpl implements _CreateAccountRequest {
  const _$CreateAccountRequestImpl(
      {this.birthday,
      required this.firstname,
      required this.lastname,
      this.middlename,
      required this.tel1,
      this.tel2,
      this.tg});

  factory _$CreateAccountRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAccountRequestImplFromJson(json);

  @override
  final String? birthday;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String? middlename;
  @override
  final String tel1;
  @override
  final String? tel2;
  @override
  final String? tg;

  @override
  String toString() {
    return 'CreateAccountRequest(birthday: $birthday, firstname: $firstname, lastname: $lastname, middlename: $middlename, tel1: $tel1, tel2: $tel2, tg: $tg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountRequestImpl &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.middlename, middlename) ||
                other.middlename == middlename) &&
            (identical(other.tel1, tel1) || other.tel1 == tel1) &&
            (identical(other.tel2, tel2) || other.tel2 == tel2) &&
            (identical(other.tg, tg) || other.tg == tg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, birthday, firstname, lastname, middlename, tel1, tel2, tg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountRequestImplCopyWith<_$CreateAccountRequestImpl>
      get copyWith =>
          __$$CreateAccountRequestImplCopyWithImpl<_$CreateAccountRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAccountRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateAccountRequest implements CreateAccountRequest {
  const factory _CreateAccountRequest(
      {final String? birthday,
      required final String firstname,
      required final String lastname,
      final String? middlename,
      required final String tel1,
      final String? tel2,
      final String? tg}) = _$CreateAccountRequestImpl;

  factory _CreateAccountRequest.fromJson(Map<String, dynamic> json) =
      _$CreateAccountRequestImpl.fromJson;

  @override
  String? get birthday;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String? get middlename;
  @override
  String get tel1;
  @override
  String? get tel2;
  @override
  String? get tg;
  @override
  @JsonKey(ignore: true)
  _$$CreateAccountRequestImplCopyWith<_$CreateAccountRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
