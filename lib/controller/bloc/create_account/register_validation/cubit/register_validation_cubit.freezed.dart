// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_validation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterValidationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ValidationStateData validationStateData) data,
    required TResult Function() sending,
    required TResult Function(CreateAccountResponse createAccountResponse) sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ValidationStateData validationStateData)? data,
    TResult? Function()? sending,
    TResult? Function(CreateAccountResponse createAccountResponse)? sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ValidationStateData validationStateData)? data,
    TResult Function()? sending,
    TResult Function(CreateAccountResponse createAccountResponse)? sent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
    required TResult Function(_Sending value) sending,
    required TResult Function(_Sent value) sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
    TResult? Function(_Sending value)? sending,
    TResult? Function(_Sent value)? sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    TResult Function(_Sending value)? sending,
    TResult Function(_Sent value)? sent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterValidationStateCopyWith<$Res> {
  factory $RegisterValidationStateCopyWith(RegisterValidationState value,
          $Res Function(RegisterValidationState) then) =
      _$RegisterValidationStateCopyWithImpl<$Res, RegisterValidationState>;
}

/// @nodoc
class _$RegisterValidationStateCopyWithImpl<$Res,
        $Val extends RegisterValidationState>
    implements $RegisterValidationStateCopyWith<$Res> {
  _$RegisterValidationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RegisterValidationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RegisterValidationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ValidationStateData validationStateData) data,
    required TResult Function() sending,
    required TResult Function(CreateAccountResponse createAccountResponse) sent,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ValidationStateData validationStateData)? data,
    TResult? Function()? sending,
    TResult? Function(CreateAccountResponse createAccountResponse)? sent,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ValidationStateData validationStateData)? data,
    TResult Function()? sending,
    TResult Function(CreateAccountResponse createAccountResponse)? sent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
    required TResult Function(_Sending value) sending,
    required TResult Function(_Sent value) sent,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
    TResult? Function(_Sending value)? sending,
    TResult? Function(_Sent value)? sent,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    TResult Function(_Sending value)? sending,
    TResult Function(_Sent value)? sent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegisterValidationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ValidationStateData validationStateData});

  $ValidationStateDataCopyWith<$Res> get validationStateData;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$RegisterValidationStateCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationStateData = null,
  }) {
    return _then(_$DataImpl(
      null == validationStateData
          ? _value.validationStateData
          : validationStateData // ignore: cast_nullable_to_non_nullable
              as ValidationStateData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ValidationStateDataCopyWith<$Res> get validationStateData {
    return $ValidationStateDataCopyWith<$Res>(_value.validationStateData,
        (value) {
      return _then(_value.copyWith(validationStateData: value));
    });
  }
}

/// @nodoc

class _$DataImpl implements _Data {
  const _$DataImpl(this.validationStateData);

  @override
  final ValidationStateData validationStateData;

  @override
  String toString() {
    return 'RegisterValidationState.data(validationStateData: $validationStateData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.validationStateData, validationStateData) ||
                other.validationStateData == validationStateData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validationStateData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ValidationStateData validationStateData) data,
    required TResult Function() sending,
    required TResult Function(CreateAccountResponse createAccountResponse) sent,
  }) {
    return data(validationStateData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ValidationStateData validationStateData)? data,
    TResult? Function()? sending,
    TResult? Function(CreateAccountResponse createAccountResponse)? sent,
  }) {
    return data?.call(validationStateData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ValidationStateData validationStateData)? data,
    TResult Function()? sending,
    TResult Function(CreateAccountResponse createAccountResponse)? sent,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(validationStateData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
    required TResult Function(_Sending value) sending,
    required TResult Function(_Sent value) sent,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
    TResult? Function(_Sending value)? sending,
    TResult? Function(_Sent value)? sent,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    TResult Function(_Sending value)? sending,
    TResult Function(_Sent value)? sent,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements RegisterValidationState {
  const factory _Data(final ValidationStateData validationStateData) =
      _$DataImpl;

  ValidationStateData get validationStateData;
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendingImplCopyWith<$Res> {
  factory _$$SendingImplCopyWith(
          _$SendingImpl value, $Res Function(_$SendingImpl) then) =
      __$$SendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingImplCopyWithImpl<$Res>
    extends _$RegisterValidationStateCopyWithImpl<$Res, _$SendingImpl>
    implements _$$SendingImplCopyWith<$Res> {
  __$$SendingImplCopyWithImpl(
      _$SendingImpl _value, $Res Function(_$SendingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendingImpl implements _Sending {
  const _$SendingImpl();

  @override
  String toString() {
    return 'RegisterValidationState.sending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ValidationStateData validationStateData) data,
    required TResult Function() sending,
    required TResult Function(CreateAccountResponse createAccountResponse) sent,
  }) {
    return sending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ValidationStateData validationStateData)? data,
    TResult? Function()? sending,
    TResult? Function(CreateAccountResponse createAccountResponse)? sent,
  }) {
    return sending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ValidationStateData validationStateData)? data,
    TResult Function()? sending,
    TResult Function(CreateAccountResponse createAccountResponse)? sent,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
    required TResult Function(_Sending value) sending,
    required TResult Function(_Sent value) sent,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
    TResult? Function(_Sending value)? sending,
    TResult? Function(_Sent value)? sent,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    TResult Function(_Sending value)? sending,
    TResult Function(_Sent value)? sent,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class _Sending implements RegisterValidationState {
  const factory _Sending() = _$SendingImpl;
}

/// @nodoc
abstract class _$$SentImplCopyWith<$Res> {
  factory _$$SentImplCopyWith(
          _$SentImpl value, $Res Function(_$SentImpl) then) =
      __$$SentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateAccountResponse createAccountResponse});

  $CreateAccountResponseCopyWith<$Res> get createAccountResponse;
}

/// @nodoc
class __$$SentImplCopyWithImpl<$Res>
    extends _$RegisterValidationStateCopyWithImpl<$Res, _$SentImpl>
    implements _$$SentImplCopyWith<$Res> {
  __$$SentImplCopyWithImpl(_$SentImpl _value, $Res Function(_$SentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createAccountResponse = null,
  }) {
    return _then(_$SentImpl(
      null == createAccountResponse
          ? _value.createAccountResponse
          : createAccountResponse // ignore: cast_nullable_to_non_nullable
              as CreateAccountResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateAccountResponseCopyWith<$Res> get createAccountResponse {
    return $CreateAccountResponseCopyWith<$Res>(_value.createAccountResponse,
        (value) {
      return _then(_value.copyWith(createAccountResponse: value));
    });
  }
}

/// @nodoc

class _$SentImpl implements _Sent {
  const _$SentImpl(this.createAccountResponse);

  @override
  final CreateAccountResponse createAccountResponse;

  @override
  String toString() {
    return 'RegisterValidationState.sent(createAccountResponse: $createAccountResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentImpl &&
            (identical(other.createAccountResponse, createAccountResponse) ||
                other.createAccountResponse == createAccountResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createAccountResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SentImplCopyWith<_$SentImpl> get copyWith =>
      __$$SentImplCopyWithImpl<_$SentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ValidationStateData validationStateData) data,
    required TResult Function() sending,
    required TResult Function(CreateAccountResponse createAccountResponse) sent,
  }) {
    return sent(createAccountResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ValidationStateData validationStateData)? data,
    TResult? Function()? sending,
    TResult? Function(CreateAccountResponse createAccountResponse)? sent,
  }) {
    return sent?.call(createAccountResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ValidationStateData validationStateData)? data,
    TResult Function()? sending,
    TResult Function(CreateAccountResponse createAccountResponse)? sent,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(createAccountResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
    required TResult Function(_Sending value) sending,
    required TResult Function(_Sent value) sent,
  }) {
    return sent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
    TResult? Function(_Sending value)? sending,
    TResult? Function(_Sent value)? sent,
  }) {
    return sent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    TResult Function(_Sending value)? sending,
    TResult Function(_Sent value)? sent,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(this);
    }
    return orElse();
  }
}

abstract class _Sent implements RegisterValidationState {
  const factory _Sent(final CreateAccountResponse createAccountResponse) =
      _$SentImpl;

  CreateAccountResponse get createAccountResponse;
  @JsonKey(ignore: true)
  _$$SentImplCopyWith<_$SentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
