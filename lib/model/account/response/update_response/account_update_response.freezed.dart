// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountUpdateResponse _$AccountUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return _AccountUpdateResponse.fromJson(json);
}

/// @nodoc
mixin _$AccountUpdateResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountUpdateResponseCopyWith<AccountUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountUpdateResponseCopyWith<$Res> {
  factory $AccountUpdateResponseCopyWith(AccountUpdateResponse value,
          $Res Function(AccountUpdateResponse) then) =
      _$AccountUpdateResponseCopyWithImpl<$Res, AccountUpdateResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") dynamic data});
}

/// @nodoc
class _$AccountUpdateResponseCopyWithImpl<$Res,
        $Val extends AccountUpdateResponse>
    implements $AccountUpdateResponseCopyWith<$Res> {
  _$AccountUpdateResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$AccountUpdateResponseImplCopyWith<$Res>
    implements $AccountUpdateResponseCopyWith<$Res> {
  factory _$$AccountUpdateResponseImplCopyWith(
          _$AccountUpdateResponseImpl value,
          $Res Function(_$AccountUpdateResponseImpl) then) =
      __$$AccountUpdateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") dynamic data});
}

/// @nodoc
class __$$AccountUpdateResponseImplCopyWithImpl<$Res>
    extends _$AccountUpdateResponseCopyWithImpl<$Res,
        _$AccountUpdateResponseImpl>
    implements _$$AccountUpdateResponseImplCopyWith<$Res> {
  __$$AccountUpdateResponseImplCopyWithImpl(_$AccountUpdateResponseImpl _value,
      $Res Function(_$AccountUpdateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$AccountUpdateResponseImpl(
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
class _$AccountUpdateResponseImpl implements _AccountUpdateResponse {
  const _$AccountUpdateResponseImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") this.data});

  factory _$AccountUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountUpdateResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final dynamic data;

  @override
  String toString() {
    return 'AccountUpdateResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountUpdateResponseImpl &&
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
  _$$AccountUpdateResponseImplCopyWith<_$AccountUpdateResponseImpl>
      get copyWith => __$$AccountUpdateResponseImplCopyWithImpl<
          _$AccountUpdateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class _AccountUpdateResponse implements AccountUpdateResponse {
  const factory _AccountUpdateResponse(
      {@JsonKey(name: "status") required final bool status,
      @JsonKey(name: "message") required final String message,
      @JsonKey(name: "data") final dynamic data}) = _$AccountUpdateResponseImpl;

  factory _AccountUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$AccountUpdateResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$AccountUpdateResponseImplCopyWith<_$AccountUpdateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
