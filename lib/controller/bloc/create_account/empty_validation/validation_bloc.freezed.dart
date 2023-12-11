// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValidationEvent {
  String get text => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) empty,
    required TResult Function(ValidationType validationType, String text)
        format,
    required TResult Function(ValidationType validationType, String text)
        accept,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? empty,
    TResult? Function(ValidationType validationType, String text)? format,
    TResult? Function(ValidationType validationType, String text)? accept,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? empty,
    TResult Function(ValidationType validationType, String text)? format,
    TResult Function(ValidationType validationType, String text)? accept,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Format value) format,
    required TResult Function(_Accept value) accept,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Format value)? format,
    TResult? Function(_Accept value)? accept,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Format value)? format,
    TResult Function(_Accept value)? accept,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidationEventCopyWith<ValidationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationEventCopyWith<$Res> {
  factory $ValidationEventCopyWith(
          ValidationEvent value, $Res Function(ValidationEvent) then) =
      _$ValidationEventCopyWithImpl<$Res, ValidationEvent>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$ValidationEventCopyWithImpl<$Res, $Val extends ValidationEvent>
    implements $ValidationEventCopyWith<$Res> {
  _$ValidationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res>
    implements $ValidationEventCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$ValidationEventCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$EmptyImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ValidationEvent.empty(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      __$$EmptyImplCopyWithImpl<_$EmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) empty,
    required TResult Function(ValidationType validationType, String text)
        format,
    required TResult Function(ValidationType validationType, String text)
        accept,
  }) {
    return empty(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? empty,
    TResult? Function(ValidationType validationType, String text)? format,
    TResult? Function(ValidationType validationType, String text)? accept,
  }) {
    return empty?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? empty,
    TResult Function(ValidationType validationType, String text)? format,
    TResult Function(ValidationType validationType, String text)? accept,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Format value) format,
    required TResult Function(_Accept value) accept,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Format value)? format,
    TResult? Function(_Accept value)? accept,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Format value)? format,
    TResult Function(_Accept value)? accept,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements ValidationEvent {
  const factory _Empty(final String text) = _$EmptyImpl;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormatImplCopyWith<$Res>
    implements $ValidationEventCopyWith<$Res> {
  factory _$$FormatImplCopyWith(
          _$FormatImpl value, $Res Function(_$FormatImpl) then) =
      __$$FormatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ValidationType validationType, String text});
}

/// @nodoc
class __$$FormatImplCopyWithImpl<$Res>
    extends _$ValidationEventCopyWithImpl<$Res, _$FormatImpl>
    implements _$$FormatImplCopyWith<$Res> {
  __$$FormatImplCopyWithImpl(
      _$FormatImpl _value, $Res Function(_$FormatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationType = null,
    Object? text = null,
  }) {
    return _then(_$FormatImpl(
      null == validationType
          ? _value.validationType
          : validationType // ignore: cast_nullable_to_non_nullable
              as ValidationType,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FormatImpl implements _Format {
  const _$FormatImpl(this.validationType, this.text);

  @override
  final ValidationType validationType;
  @override
  final String text;

  @override
  String toString() {
    return 'ValidationEvent.format(validationType: $validationType, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormatImpl &&
            (identical(other.validationType, validationType) ||
                other.validationType == validationType) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validationType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormatImplCopyWith<_$FormatImpl> get copyWith =>
      __$$FormatImplCopyWithImpl<_$FormatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) empty,
    required TResult Function(ValidationType validationType, String text)
        format,
    required TResult Function(ValidationType validationType, String text)
        accept,
  }) {
    return format(validationType, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? empty,
    TResult? Function(ValidationType validationType, String text)? format,
    TResult? Function(ValidationType validationType, String text)? accept,
  }) {
    return format?.call(validationType, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? empty,
    TResult Function(ValidationType validationType, String text)? format,
    TResult Function(ValidationType validationType, String text)? accept,
    required TResult orElse(),
  }) {
    if (format != null) {
      return format(validationType, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Format value) format,
    required TResult Function(_Accept value) accept,
  }) {
    return format(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Format value)? format,
    TResult? Function(_Accept value)? accept,
  }) {
    return format?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Format value)? format,
    TResult Function(_Accept value)? accept,
    required TResult orElse(),
  }) {
    if (format != null) {
      return format(this);
    }
    return orElse();
  }
}

abstract class _Format implements ValidationEvent {
  const factory _Format(
      final ValidationType validationType, final String text) = _$FormatImpl;

  ValidationType get validationType;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$FormatImplCopyWith<_$FormatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AcceptImplCopyWith<$Res>
    implements $ValidationEventCopyWith<$Res> {
  factory _$$AcceptImplCopyWith(
          _$AcceptImpl value, $Res Function(_$AcceptImpl) then) =
      __$$AcceptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ValidationType validationType, String text});
}

/// @nodoc
class __$$AcceptImplCopyWithImpl<$Res>
    extends _$ValidationEventCopyWithImpl<$Res, _$AcceptImpl>
    implements _$$AcceptImplCopyWith<$Res> {
  __$$AcceptImplCopyWithImpl(
      _$AcceptImpl _value, $Res Function(_$AcceptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationType = null,
    Object? text = null,
  }) {
    return _then(_$AcceptImpl(
      null == validationType
          ? _value.validationType
          : validationType // ignore: cast_nullable_to_non_nullable
              as ValidationType,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AcceptImpl implements _Accept {
  const _$AcceptImpl(this.validationType, this.text);

  @override
  final ValidationType validationType;
  @override
  final String text;

  @override
  String toString() {
    return 'ValidationEvent.accept(validationType: $validationType, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptImpl &&
            (identical(other.validationType, validationType) ||
                other.validationType == validationType) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validationType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptImplCopyWith<_$AcceptImpl> get copyWith =>
      __$$AcceptImplCopyWithImpl<_$AcceptImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) empty,
    required TResult Function(ValidationType validationType, String text)
        format,
    required TResult Function(ValidationType validationType, String text)
        accept,
  }) {
    return accept(validationType, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? empty,
    TResult? Function(ValidationType validationType, String text)? format,
    TResult? Function(ValidationType validationType, String text)? accept,
  }) {
    return accept?.call(validationType, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? empty,
    TResult Function(ValidationType validationType, String text)? format,
    TResult Function(ValidationType validationType, String text)? accept,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept(validationType, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Format value) format,
    required TResult Function(_Accept value) accept,
  }) {
    return accept(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Format value)? format,
    TResult? Function(_Accept value)? accept,
  }) {
    return accept?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Format value)? format,
    TResult Function(_Accept value)? accept,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept(this);
    }
    return orElse();
  }
}

abstract class _Accept implements ValidationEvent {
  const factory _Accept(
      final ValidationType validationType, final String text) = _$AcceptImpl;

  ValidationType get validationType;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$AcceptImplCopyWith<_$AcceptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ValidationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEmpty) emptyState,
    required TResult Function(bool isValid) formatState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEmpty)? emptyState,
    TResult? Function(bool isValid)? formatState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmpty)? emptyState,
    TResult Function(bool isValid)? formatState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyState value) emptyState,
    required TResult Function(_FormatState value) formatState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? emptyState,
    TResult? Function(_FormatState value)? formatState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? emptyState,
    TResult Function(_FormatState value)? formatState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationStateCopyWith<$Res> {
  factory $ValidationStateCopyWith(
          ValidationState value, $Res Function(ValidationState) then) =
      _$ValidationStateCopyWithImpl<$Res, ValidationState>;
}

/// @nodoc
class _$ValidationStateCopyWithImpl<$Res, $Val extends ValidationState>
    implements $ValidationStateCopyWith<$Res> {
  _$ValidationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyStateImplCopyWith<$Res> {
  factory _$$EmptyStateImplCopyWith(
          _$EmptyStateImpl value, $Res Function(_$EmptyStateImpl) then) =
      __$$EmptyStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEmpty});
}

/// @nodoc
class __$$EmptyStateImplCopyWithImpl<$Res>
    extends _$ValidationStateCopyWithImpl<$Res, _$EmptyStateImpl>
    implements _$$EmptyStateImplCopyWith<$Res> {
  __$$EmptyStateImplCopyWithImpl(
      _$EmptyStateImpl _value, $Res Function(_$EmptyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEmpty = null,
  }) {
    return _then(_$EmptyStateImpl(
      null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EmptyStateImpl implements _EmptyState {
  const _$EmptyStateImpl(this.isEmpty);

  @override
  final bool isEmpty;

  @override
  String toString() {
    return 'ValidationState.emptyState(isEmpty: $isEmpty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyStateImpl &&
            (identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEmpty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyStateImplCopyWith<_$EmptyStateImpl> get copyWith =>
      __$$EmptyStateImplCopyWithImpl<_$EmptyStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEmpty) emptyState,
    required TResult Function(bool isValid) formatState,
  }) {
    return emptyState(isEmpty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEmpty)? emptyState,
    TResult? Function(bool isValid)? formatState,
  }) {
    return emptyState?.call(isEmpty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmpty)? emptyState,
    TResult Function(bool isValid)? formatState,
    required TResult orElse(),
  }) {
    if (emptyState != null) {
      return emptyState(isEmpty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyState value) emptyState,
    required TResult Function(_FormatState value) formatState,
  }) {
    return emptyState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? emptyState,
    TResult? Function(_FormatState value)? formatState,
  }) {
    return emptyState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? emptyState,
    TResult Function(_FormatState value)? formatState,
    required TResult orElse(),
  }) {
    if (emptyState != null) {
      return emptyState(this);
    }
    return orElse();
  }
}

abstract class _EmptyState implements ValidationState {
  const factory _EmptyState(final bool isEmpty) = _$EmptyStateImpl;

  bool get isEmpty;
  @JsonKey(ignore: true)
  _$$EmptyStateImplCopyWith<_$EmptyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormatStateImplCopyWith<$Res> {
  factory _$$FormatStateImplCopyWith(
          _$FormatStateImpl value, $Res Function(_$FormatStateImpl) then) =
      __$$FormatStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isValid});
}

/// @nodoc
class __$$FormatStateImplCopyWithImpl<$Res>
    extends _$ValidationStateCopyWithImpl<$Res, _$FormatStateImpl>
    implements _$$FormatStateImplCopyWith<$Res> {
  __$$FormatStateImplCopyWithImpl(
      _$FormatStateImpl _value, $Res Function(_$FormatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
  }) {
    return _then(_$FormatStateImpl(
      null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FormatStateImpl implements _FormatState {
  const _$FormatStateImpl(this.isValid);

  @override
  final bool isValid;

  @override
  String toString() {
    return 'ValidationState.formatState(isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormatStateImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormatStateImplCopyWith<_$FormatStateImpl> get copyWith =>
      __$$FormatStateImplCopyWithImpl<_$FormatStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEmpty) emptyState,
    required TResult Function(bool isValid) formatState,
  }) {
    return formatState(isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEmpty)? emptyState,
    TResult? Function(bool isValid)? formatState,
  }) {
    return formatState?.call(isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmpty)? emptyState,
    TResult Function(bool isValid)? formatState,
    required TResult orElse(),
  }) {
    if (formatState != null) {
      return formatState(isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyState value) emptyState,
    required TResult Function(_FormatState value) formatState,
  }) {
    return formatState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? emptyState,
    TResult? Function(_FormatState value)? formatState,
  }) {
    return formatState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? emptyState,
    TResult Function(_FormatState value)? formatState,
    required TResult orElse(),
  }) {
    if (formatState != null) {
      return formatState(this);
    }
    return orElse();
  }
}

abstract class _FormatState implements ValidationState {
  const factory _FormatState(final bool isValid) = _$FormatStateImpl;

  bool get isValid;
  @JsonKey(ignore: true)
  _$$FormatStateImplCopyWith<_$FormatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
