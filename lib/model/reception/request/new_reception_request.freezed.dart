// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_reception_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewReceptionRequest _$NewReceptionRequestFromJson(Map<String, dynamic> json) {
  return _NewReceptionRequest.fromJson(json);
}

/// @nodoc
mixin _$NewReceptionRequest {
  @JsonKey(name: "courseID")
  int get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "promo_code")
  String? get promoCode => throw _privateConstructorUsedError;
  @JsonKey(name: "receptionNumber")
  String get receptionNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewReceptionRequestCopyWith<NewReceptionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewReceptionRequestCopyWith<$Res> {
  factory $NewReceptionRequestCopyWith(
          NewReceptionRequest value, $Res Function(NewReceptionRequest) then) =
      _$NewReceptionRequestCopyWithImpl<$Res, NewReceptionRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "courseID") int courseId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "promo_code") String? promoCode,
      @JsonKey(name: "receptionNumber") String receptionNumber});
}

/// @nodoc
class _$NewReceptionRequestCopyWithImpl<$Res, $Val extends NewReceptionRequest>
    implements $NewReceptionRequestCopyWith<$Res> {
  _$NewReceptionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? description = freezed,
    Object? promoCode = freezed,
    Object? receptionNumber = null,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      receptionNumber: null == receptionNumber
          ? _value.receptionNumber
          : receptionNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewReceptionRequestImplCopyWith<$Res>
    implements $NewReceptionRequestCopyWith<$Res> {
  factory _$$NewReceptionRequestImplCopyWith(_$NewReceptionRequestImpl value,
          $Res Function(_$NewReceptionRequestImpl) then) =
      __$$NewReceptionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "courseID") int courseId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "promo_code") String? promoCode,
      @JsonKey(name: "receptionNumber") String receptionNumber});
}

/// @nodoc
class __$$NewReceptionRequestImplCopyWithImpl<$Res>
    extends _$NewReceptionRequestCopyWithImpl<$Res, _$NewReceptionRequestImpl>
    implements _$$NewReceptionRequestImplCopyWith<$Res> {
  __$$NewReceptionRequestImplCopyWithImpl(_$NewReceptionRequestImpl _value,
      $Res Function(_$NewReceptionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? description = freezed,
    Object? promoCode = freezed,
    Object? receptionNumber = null,
  }) {
    return _then(_$NewReceptionRequestImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      receptionNumber: null == receptionNumber
          ? _value.receptionNumber
          : receptionNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewReceptionRequestImpl implements _NewReceptionRequest {
  const _$NewReceptionRequestImpl(
      {@JsonKey(name: "courseID") required this.courseId,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "promo_code") this.promoCode,
      @JsonKey(name: "receptionNumber") required this.receptionNumber});

  factory _$NewReceptionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewReceptionRequestImplFromJson(json);

  @override
  @JsonKey(name: "courseID")
  final int courseId;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "promo_code")
  final String? promoCode;
  @override
  @JsonKey(name: "receptionNumber")
  final String receptionNumber;

  @override
  String toString() {
    return 'NewReceptionRequest(courseId: $courseId, description: $description, promoCode: $promoCode, receptionNumber: $receptionNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewReceptionRequestImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            (identical(other.receptionNumber, receptionNumber) ||
                other.receptionNumber == receptionNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, courseId, description, promoCode, receptionNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewReceptionRequestImplCopyWith<_$NewReceptionRequestImpl> get copyWith =>
      __$$NewReceptionRequestImplCopyWithImpl<_$NewReceptionRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewReceptionRequestImplToJson(
      this,
    );
  }
}

abstract class _NewReceptionRequest implements NewReceptionRequest {
  const factory _NewReceptionRequest(
      {@JsonKey(name: "courseID") required final int courseId,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "promo_code") final String? promoCode,
      @JsonKey(name: "receptionNumber")
      required final String receptionNumber}) = _$NewReceptionRequestImpl;

  factory _NewReceptionRequest.fromJson(Map<String, dynamic> json) =
      _$NewReceptionRequestImpl.fromJson;

  @override
  @JsonKey(name: "courseID")
  int get courseId;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "promo_code")
  String? get promoCode;
  @override
  @JsonKey(name: "receptionNumber")
  String get receptionNumber;
  @override
  @JsonKey(ignore: true)
  _$$NewReceptionRequestImplCopyWith<_$NewReceptionRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
