// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAccountResponse _$CreateAccountResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateAccountResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateAccountResponse {
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAccountResponseCopyWith<CreateAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountResponseCopyWith<$Res> {
  factory $CreateAccountResponseCopyWith(CreateAccountResponse value,
          $Res Function(CreateAccountResponse) then) =
      _$CreateAccountResponseCopyWithImpl<$Res, CreateAccountResponse>;
  @useResult
  $Res call({bool status, String message, dynamic data});
}

/// @nodoc
class _$CreateAccountResponseCopyWithImpl<$Res,
        $Val extends CreateAccountResponse>
    implements $CreateAccountResponseCopyWith<$Res> {
  _$CreateAccountResponseCopyWithImpl(this._value, this._then);

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
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAccountResponseImplCopyWith<$Res>
    implements $CreateAccountResponseCopyWith<$Res> {
  factory _$$CreateAccountResponseImplCopyWith(
          _$CreateAccountResponseImpl value,
          $Res Function(_$CreateAccountResponseImpl) then) =
      __$$CreateAccountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String message, dynamic data});
}

/// @nodoc
class __$$CreateAccountResponseImplCopyWithImpl<$Res>
    extends _$CreateAccountResponseCopyWithImpl<$Res,
        _$CreateAccountResponseImpl>
    implements _$$CreateAccountResponseImplCopyWith<$Res> {
  __$$CreateAccountResponseImplCopyWithImpl(_$CreateAccountResponseImpl _value,
      $Res Function(_$CreateAccountResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$CreateAccountResponseImpl(
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
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAccountResponseImpl implements _CreateAccountResponse {
  const _$CreateAccountResponseImpl(
      {required this.status, required this.message, required this.data});

  factory _$CreateAccountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAccountResponseImplFromJson(json);

  @override
  final bool status;
  @override
  final String message;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'CreateAccountResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountResponseImplCopyWith<_$CreateAccountResponseImpl>
      get copyWith => __$$CreateAccountResponseImplCopyWithImpl<
          _$CreateAccountResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAccountResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateAccountResponse implements CreateAccountResponse {
  const factory _CreateAccountResponse(
      {required final bool status,
      required final String message,
      required final dynamic data}) = _$CreateAccountResponseImpl;

  factory _CreateAccountResponse.fromJson(Map<String, dynamic> json) =
      _$CreateAccountResponseImpl.fromJson;

  @override
  bool get status;
  @override
  String get message;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateAccountResponseImplCopyWith<_$CreateAccountResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
