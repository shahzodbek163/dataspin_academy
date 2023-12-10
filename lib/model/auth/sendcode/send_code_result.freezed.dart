// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_code_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendCodeResult _$SendCodeResultFromJson(Map<String, dynamic> json) {
  return _SendCodeResult.fromJson(json);
}

/// @nodoc
mixin _$SendCodeResult {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendCodeResultCopyWith<SendCodeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendCodeResultCopyWith<$Res> {
  factory $SendCodeResultCopyWith(
          SendCodeResult value, $Res Function(SendCodeResult) then) =
      _$SendCodeResultCopyWithImpl<$Res, SendCodeResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") String data});
}

/// @nodoc
class _$SendCodeResultCopyWithImpl<$Res, $Val extends SendCodeResult>
    implements $SendCodeResultCopyWith<$Res> {
  _$SendCodeResultCopyWithImpl(this._value, this._then);

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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendCodeResultImplCopyWith<$Res>
    implements $SendCodeResultCopyWith<$Res> {
  factory _$$SendCodeResultImplCopyWith(_$SendCodeResultImpl value,
          $Res Function(_$SendCodeResultImpl) then) =
      __$$SendCodeResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") String data});
}

/// @nodoc
class __$$SendCodeResultImplCopyWithImpl<$Res>
    extends _$SendCodeResultCopyWithImpl<$Res, _$SendCodeResultImpl>
    implements _$$SendCodeResultImplCopyWith<$Res> {
  __$$SendCodeResultImplCopyWithImpl(
      _$SendCodeResultImpl _value, $Res Function(_$SendCodeResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$SendCodeResultImpl(
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendCodeResultImpl implements _SendCodeResult {
  const _$SendCodeResultImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required this.data});

  factory _$SendCodeResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendCodeResultImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final String data;

  @override
  String toString() {
    return 'SendCodeResult(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCodeResultImpl &&
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
  _$$SendCodeResultImplCopyWith<_$SendCodeResultImpl> get copyWith =>
      __$$SendCodeResultImplCopyWithImpl<_$SendCodeResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendCodeResultImplToJson(
      this,
    );
  }
}

abstract class _SendCodeResult implements SendCodeResult {
  const factory _SendCodeResult(
          {@JsonKey(name: "status") required final bool status,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final String data}) =
      _$SendCodeResultImpl;

  factory _SendCodeResult.fromJson(Map<String, dynamic> json) =
      _$SendCodeResultImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$SendCodeResultImplCopyWith<_$SendCodeResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
