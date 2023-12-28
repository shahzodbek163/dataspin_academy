// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_filter_by_type_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseFilterByTypeEvent {
  CourseWithPriceResponse get courses => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CourseWithPriceResponse courses) all,
    required TResult Function(
            CourseWithPriceResponse courses, int courseTypeId, String name)
        byId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CourseWithPriceResponse courses)? all,
    TResult? Function(
            CourseWithPriceResponse courses, int courseTypeId, String name)?
        byId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CourseWithPriceResponse courses)? all,
    TResult Function(
            CourseWithPriceResponse courses, int courseTypeId, String name)?
        byId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_All value) all,
    required TResult Function(_ById value) byId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_All value)? all,
    TResult? Function(_ById value)? byId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_All value)? all,
    TResult Function(_ById value)? byId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseFilterByTypeEventCopyWith<CourseFilterByTypeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseFilterByTypeEventCopyWith<$Res> {
  factory $CourseFilterByTypeEventCopyWith(CourseFilterByTypeEvent value,
          $Res Function(CourseFilterByTypeEvent) then) =
      _$CourseFilterByTypeEventCopyWithImpl<$Res, CourseFilterByTypeEvent>;
  @useResult
  $Res call({CourseWithPriceResponse courses});

  $CourseWithPriceResponseCopyWith<$Res> get courses;
}

/// @nodoc
class _$CourseFilterByTypeEventCopyWithImpl<$Res,
        $Val extends CourseFilterByTypeEvent>
    implements $CourseFilterByTypeEventCopyWith<$Res> {
  _$CourseFilterByTypeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as CourseWithPriceResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseWithPriceResponseCopyWith<$Res> get courses {
    return $CourseWithPriceResponseCopyWith<$Res>(_value.courses, (value) {
      return _then(_value.copyWith(courses: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllImplCopyWith<$Res>
    implements $CourseFilterByTypeEventCopyWith<$Res> {
  factory _$$AllImplCopyWith(_$AllImpl value, $Res Function(_$AllImpl) then) =
      __$$AllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CourseWithPriceResponse courses});

  @override
  $CourseWithPriceResponseCopyWith<$Res> get courses;
}

/// @nodoc
class __$$AllImplCopyWithImpl<$Res>
    extends _$CourseFilterByTypeEventCopyWithImpl<$Res, _$AllImpl>
    implements _$$AllImplCopyWith<$Res> {
  __$$AllImplCopyWithImpl(_$AllImpl _value, $Res Function(_$AllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_$AllImpl(
      null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as CourseWithPriceResponse,
    ));
  }
}

/// @nodoc

class _$AllImpl implements _All {
  const _$AllImpl(this.courses);

  @override
  final CourseWithPriceResponse courses;

  @override
  String toString() {
    return 'CourseFilterByTypeEvent.all(courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllImpl &&
            (identical(other.courses, courses) || other.courses == courses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllImplCopyWith<_$AllImpl> get copyWith =>
      __$$AllImplCopyWithImpl<_$AllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CourseWithPriceResponse courses) all,
    required TResult Function(
            CourseWithPriceResponse courses, int courseTypeId, String name)
        byId,
  }) {
    return all(courses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CourseWithPriceResponse courses)? all,
    TResult? Function(
            CourseWithPriceResponse courses, int courseTypeId, String name)?
        byId,
  }) {
    return all?.call(courses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CourseWithPriceResponse courses)? all,
    TResult Function(
            CourseWithPriceResponse courses, int courseTypeId, String name)?
        byId,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(courses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_All value) all,
    required TResult Function(_ById value) byId,
  }) {
    return all(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_All value)? all,
    TResult? Function(_ById value)? byId,
  }) {
    return all?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_All value)? all,
    TResult Function(_ById value)? byId,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(this);
    }
    return orElse();
  }
}

abstract class _All implements CourseFilterByTypeEvent {
  const factory _All(final CourseWithPriceResponse courses) = _$AllImpl;

  @override
  CourseWithPriceResponse get courses;
  @override
  @JsonKey(ignore: true)
  _$$AllImplCopyWith<_$AllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ByIdImplCopyWith<$Res>
    implements $CourseFilterByTypeEventCopyWith<$Res> {
  factory _$$ByIdImplCopyWith(
          _$ByIdImpl value, $Res Function(_$ByIdImpl) then) =
      __$$ByIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CourseWithPriceResponse courses, int courseTypeId, String name});

  @override
  $CourseWithPriceResponseCopyWith<$Res> get courses;
}

/// @nodoc
class __$$ByIdImplCopyWithImpl<$Res>
    extends _$CourseFilterByTypeEventCopyWithImpl<$Res, _$ByIdImpl>
    implements _$$ByIdImplCopyWith<$Res> {
  __$$ByIdImplCopyWithImpl(_$ByIdImpl _value, $Res Function(_$ByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? courseTypeId = null,
    Object? name = null,
  }) {
    return _then(_$ByIdImpl(
      null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as CourseWithPriceResponse,
      null == courseTypeId
          ? _value.courseTypeId
          : courseTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ByIdImpl implements _ById {
  const _$ByIdImpl(this.courses, this.courseTypeId, this.name);

  @override
  final CourseWithPriceResponse courses;
  @override
  final int courseTypeId;
  @override
  final String name;

  @override
  String toString() {
    return 'CourseFilterByTypeEvent.byId(courses: $courses, courseTypeId: $courseTypeId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ByIdImpl &&
            (identical(other.courses, courses) || other.courses == courses) &&
            (identical(other.courseTypeId, courseTypeId) ||
                other.courseTypeId == courseTypeId) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courses, courseTypeId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ByIdImplCopyWith<_$ByIdImpl> get copyWith =>
      __$$ByIdImplCopyWithImpl<_$ByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CourseWithPriceResponse courses) all,
    required TResult Function(
            CourseWithPriceResponse courses, int courseTypeId, String name)
        byId,
  }) {
    return byId(courses, courseTypeId, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CourseWithPriceResponse courses)? all,
    TResult? Function(
            CourseWithPriceResponse courses, int courseTypeId, String name)?
        byId,
  }) {
    return byId?.call(courses, courseTypeId, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CourseWithPriceResponse courses)? all,
    TResult Function(
            CourseWithPriceResponse courses, int courseTypeId, String name)?
        byId,
    required TResult orElse(),
  }) {
    if (byId != null) {
      return byId(courses, courseTypeId, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_All value) all,
    required TResult Function(_ById value) byId,
  }) {
    return byId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_All value)? all,
    TResult? Function(_ById value)? byId,
  }) {
    return byId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_All value)? all,
    TResult Function(_ById value)? byId,
    required TResult orElse(),
  }) {
    if (byId != null) {
      return byId(this);
    }
    return orElse();
  }
}

abstract class _ById implements CourseFilterByTypeEvent {
  const factory _ById(final CourseWithPriceResponse courses,
      final int courseTypeId, final String name) = _$ByIdImpl;

  @override
  CourseWithPriceResponse get courses;
  int get courseTypeId;
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ByIdImplCopyWith<_$ByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CourseFilterByTypeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CourseWithPriceResponse courses, String name)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CourseWithPriceResponse courses, String name)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CourseWithPriceResponse courses, String name)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseFilterByTypeStateCopyWith<$Res> {
  factory $CourseFilterByTypeStateCopyWith(CourseFilterByTypeState value,
          $Res Function(CourseFilterByTypeState) then) =
      _$CourseFilterByTypeStateCopyWithImpl<$Res, CourseFilterByTypeState>;
}

/// @nodoc
class _$CourseFilterByTypeStateCopyWithImpl<$Res,
        $Val extends CourseFilterByTypeState>
    implements $CourseFilterByTypeStateCopyWith<$Res> {
  _$CourseFilterByTypeStateCopyWithImpl(this._value, this._then);

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
    extends _$CourseFilterByTypeStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CourseFilterByTypeState.initial()';
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
    required TResult Function(CourseWithPriceResponse courses, String name)
        data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CourseWithPriceResponse courses, String name)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CourseWithPriceResponse courses, String name)? data,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CourseFilterByTypeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CourseWithPriceResponse courses, String name});

  $CourseWithPriceResponseCopyWith<$Res> get courses;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$CourseFilterByTypeStateCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? name = null,
  }) {
    return _then(_$DataImpl(
      null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as CourseWithPriceResponse,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseWithPriceResponseCopyWith<$Res> get courses {
    return $CourseWithPriceResponseCopyWith<$Res>(_value.courses, (value) {
      return _then(_value.copyWith(courses: value));
    });
  }
}

/// @nodoc

class _$DataImpl implements _Data {
  const _$DataImpl(this.courses, this.name);

  @override
  final CourseWithPriceResponse courses;
  @override
  final String name;

  @override
  String toString() {
    return 'CourseFilterByTypeState.data(courses: $courses, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.courses, courses) || other.courses == courses) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courses, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CourseWithPriceResponse courses, String name)
        data,
  }) {
    return data(courses, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CourseWithPriceResponse courses, String name)? data,
  }) {
    return data?.call(courses, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CourseWithPriceResponse courses, String name)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(courses, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements CourseFilterByTypeState {
  const factory _Data(
      final CourseWithPriceResponse courses, final String name) = _$DataImpl;

  CourseWithPriceResponse get courses;
  String get name;
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
