// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckCodeResponse _$CheckCodeResponseFromJson(Map<String, dynamic> json) {
  return _CheckCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckCodeResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckCodeResponseCopyWith<CheckCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckCodeResponseCopyWith<$Res> {
  factory $CheckCodeResponseCopyWith(
          CheckCodeResponse value, $Res Function(CheckCodeResponse) then) =
      _$CheckCodeResponseCopyWithImpl<$Res, CheckCodeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") String? data});
}

/// @nodoc
class _$CheckCodeResponseCopyWithImpl<$Res, $Val extends CheckCodeResponse>
    implements $CheckCodeResponseCopyWith<$Res> {
  _$CheckCodeResponseCopyWithImpl(this._value, this._then);

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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckCodeResponseImplCopyWith<$Res>
    implements $CheckCodeResponseCopyWith<$Res> {
  factory _$$CheckCodeResponseImplCopyWith(_$CheckCodeResponseImpl value,
          $Res Function(_$CheckCodeResponseImpl) then) =
      __$$CheckCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") String? data});
}

/// @nodoc
class __$$CheckCodeResponseImplCopyWithImpl<$Res>
    extends _$CheckCodeResponseCopyWithImpl<$Res, _$CheckCodeResponseImpl>
    implements _$$CheckCodeResponseImplCopyWith<$Res> {
  __$$CheckCodeResponseImplCopyWithImpl(_$CheckCodeResponseImpl _value,
      $Res Function(_$CheckCodeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$CheckCodeResponseImpl(
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckCodeResponseImpl implements _CheckCodeResponse {
  const _$CheckCodeResponseImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required this.data});

  factory _$CheckCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckCodeResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final String? data;

  @override
  String toString() {
    return 'CheckCodeResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckCodeResponseImpl &&
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
  _$$CheckCodeResponseImplCopyWith<_$CheckCodeResponseImpl> get copyWith =>
      __$$CheckCodeResponseImplCopyWithImpl<_$CheckCodeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckCodeResponseImplToJson(
      this,
    );
  }
}

abstract class _CheckCodeResponse implements CheckCodeResponse {
  const factory _CheckCodeResponse(
          {@JsonKey(name: "status") required final bool status,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final String? data}) =
      _$CheckCodeResponseImpl;

  factory _CheckCodeResponse.fromJson(Map<String, dynamic> json) =
      _$CheckCodeResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$CheckCodeResponseImplCopyWith<_$CheckCodeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
