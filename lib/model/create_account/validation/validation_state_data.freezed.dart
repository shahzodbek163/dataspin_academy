// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_state_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ValidationStateData _$ValidationStateDataFromJson(Map<String, dynamic> json) {
  return _ValidationStateData.fromJson(json);
}

/// @nodoc
mixin _$ValidationStateData {
  @JsonKey(name: "firstname_empty")
  bool get firstnameEmpty => throw _privateConstructorUsedError;
  @JsonKey(name: "lastname_empty")
  bool get lastnameEmpty => throw _privateConstructorUsedError;
  @JsonKey(name: "birhtday_valid")
  bool get birhtdayValid => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  Phone get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_phone_valid")
  bool get additionalPhoneValid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidationStateDataCopyWith<ValidationStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationStateDataCopyWith<$Res> {
  factory $ValidationStateDataCopyWith(
          ValidationStateData value, $Res Function(ValidationStateData) then) =
      _$ValidationStateDataCopyWithImpl<$Res, ValidationStateData>;
  @useResult
  $Res call(
      {@JsonKey(name: "firstname_empty") bool firstnameEmpty,
      @JsonKey(name: "lastname_empty") bool lastnameEmpty,
      @JsonKey(name: "birhtday_valid") bool birhtdayValid,
      @JsonKey(name: "phone") Phone phone,
      @JsonKey(name: "additional_phone_valid") bool additionalPhoneValid});

  $PhoneCopyWith<$Res> get phone;
}

/// @nodoc
class _$ValidationStateDataCopyWithImpl<$Res, $Val extends ValidationStateData>
    implements $ValidationStateDataCopyWith<$Res> {
  _$ValidationStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstnameEmpty = null,
    Object? lastnameEmpty = null,
    Object? birhtdayValid = null,
    Object? phone = null,
    Object? additionalPhoneValid = null,
  }) {
    return _then(_value.copyWith(
      firstnameEmpty: null == firstnameEmpty
          ? _value.firstnameEmpty
          : firstnameEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      lastnameEmpty: null == lastnameEmpty
          ? _value.lastnameEmpty
          : lastnameEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      birhtdayValid: null == birhtdayValid
          ? _value.birhtdayValid
          : birhtdayValid // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      additionalPhoneValid: null == additionalPhoneValid
          ? _value.additionalPhoneValid
          : additionalPhoneValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PhoneCopyWith<$Res> get phone {
    return $PhoneCopyWith<$Res>(_value.phone, (value) {
      return _then(_value.copyWith(phone: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValidationStateDataImplCopyWith<$Res>
    implements $ValidationStateDataCopyWith<$Res> {
  factory _$$ValidationStateDataImplCopyWith(_$ValidationStateDataImpl value,
          $Res Function(_$ValidationStateDataImpl) then) =
      __$$ValidationStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "firstname_empty") bool firstnameEmpty,
      @JsonKey(name: "lastname_empty") bool lastnameEmpty,
      @JsonKey(name: "birhtday_valid") bool birhtdayValid,
      @JsonKey(name: "phone") Phone phone,
      @JsonKey(name: "additional_phone_valid") bool additionalPhoneValid});

  @override
  $PhoneCopyWith<$Res> get phone;
}

/// @nodoc
class __$$ValidationStateDataImplCopyWithImpl<$Res>
    extends _$ValidationStateDataCopyWithImpl<$Res, _$ValidationStateDataImpl>
    implements _$$ValidationStateDataImplCopyWith<$Res> {
  __$$ValidationStateDataImplCopyWithImpl(_$ValidationStateDataImpl _value,
      $Res Function(_$ValidationStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstnameEmpty = null,
    Object? lastnameEmpty = null,
    Object? birhtdayValid = null,
    Object? phone = null,
    Object? additionalPhoneValid = null,
  }) {
    return _then(_$ValidationStateDataImpl(
      firstnameEmpty: null == firstnameEmpty
          ? _value.firstnameEmpty
          : firstnameEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      lastnameEmpty: null == lastnameEmpty
          ? _value.lastnameEmpty
          : lastnameEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      birhtdayValid: null == birhtdayValid
          ? _value.birhtdayValid
          : birhtdayValid // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      additionalPhoneValid: null == additionalPhoneValid
          ? _value.additionalPhoneValid
          : additionalPhoneValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationStateDataImpl implements _ValidationStateData {
  const _$ValidationStateDataImpl(
      {@JsonKey(name: "firstname_empty") required this.firstnameEmpty,
      @JsonKey(name: "lastname_empty") required this.lastnameEmpty,
      @JsonKey(name: "birhtday_valid") required this.birhtdayValid,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "additional_phone_valid")
      required this.additionalPhoneValid});

  factory _$ValidationStateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationStateDataImplFromJson(json);

  @override
  @JsonKey(name: "firstname_empty")
  final bool firstnameEmpty;
  @override
  @JsonKey(name: "lastname_empty")
  final bool lastnameEmpty;
  @override
  @JsonKey(name: "birhtday_valid")
  final bool birhtdayValid;
  @override
  @JsonKey(name: "phone")
  final Phone phone;
  @override
  @JsonKey(name: "additional_phone_valid")
  final bool additionalPhoneValid;

  @override
  String toString() {
    return 'ValidationStateData(firstnameEmpty: $firstnameEmpty, lastnameEmpty: $lastnameEmpty, birhtdayValid: $birhtdayValid, phone: $phone, additionalPhoneValid: $additionalPhoneValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationStateDataImpl &&
            (identical(other.firstnameEmpty, firstnameEmpty) ||
                other.firstnameEmpty == firstnameEmpty) &&
            (identical(other.lastnameEmpty, lastnameEmpty) ||
                other.lastnameEmpty == lastnameEmpty) &&
            (identical(other.birhtdayValid, birhtdayValid) ||
                other.birhtdayValid == birhtdayValid) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.additionalPhoneValid, additionalPhoneValid) ||
                other.additionalPhoneValid == additionalPhoneValid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstnameEmpty, lastnameEmpty,
      birhtdayValid, phone, additionalPhoneValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationStateDataImplCopyWith<_$ValidationStateDataImpl> get copyWith =>
      __$$ValidationStateDataImplCopyWithImpl<_$ValidationStateDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationStateDataImplToJson(
      this,
    );
  }
}

abstract class _ValidationStateData implements ValidationStateData {
  const factory _ValidationStateData(
      {@JsonKey(name: "firstname_empty") required final bool firstnameEmpty,
      @JsonKey(name: "lastname_empty") required final bool lastnameEmpty,
      @JsonKey(name: "birhtday_valid") required final bool birhtdayValid,
      @JsonKey(name: "phone") required final Phone phone,
      @JsonKey(name: "additional_phone_valid")
      required final bool additionalPhoneValid}) = _$ValidationStateDataImpl;

  factory _ValidationStateData.fromJson(Map<String, dynamic> json) =
      _$ValidationStateDataImpl.fromJson;

  @override
  @JsonKey(name: "firstname_empty")
  bool get firstnameEmpty;
  @override
  @JsonKey(name: "lastname_empty")
  bool get lastnameEmpty;
  @override
  @JsonKey(name: "birhtday_valid")
  bool get birhtdayValid;
  @override
  @JsonKey(name: "phone")
  Phone get phone;
  @override
  @JsonKey(name: "additional_phone_valid")
  bool get additionalPhoneValid;
  @override
  @JsonKey(ignore: true)
  _$$ValidationStateDataImplCopyWith<_$ValidationStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Phone _$PhoneFromJson(Map<String, dynamic> json) {
  return _Phone.fromJson(json);
}

/// @nodoc
mixin _$Phone {
  @JsonKey(name: "is_empty")
  bool get isEmpty => throw _privateConstructorUsedError;
  @JsonKey(name: "is_valid")
  bool get isValid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneCopyWith<Phone> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneCopyWith<$Res> {
  factory $PhoneCopyWith(Phone value, $Res Function(Phone) then) =
      _$PhoneCopyWithImpl<$Res, Phone>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_empty") bool isEmpty,
      @JsonKey(name: "is_valid") bool isValid});
}

/// @nodoc
class _$PhoneCopyWithImpl<$Res, $Val extends Phone>
    implements $PhoneCopyWith<$Res> {
  _$PhoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEmpty = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhoneImplCopyWith<$Res> implements $PhoneCopyWith<$Res> {
  factory _$$PhoneImplCopyWith(
          _$PhoneImpl value, $Res Function(_$PhoneImpl) then) =
      __$$PhoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_empty") bool isEmpty,
      @JsonKey(name: "is_valid") bool isValid});
}

/// @nodoc
class __$$PhoneImplCopyWithImpl<$Res>
    extends _$PhoneCopyWithImpl<$Res, _$PhoneImpl>
    implements _$$PhoneImplCopyWith<$Res> {
  __$$PhoneImplCopyWithImpl(
      _$PhoneImpl _value, $Res Function(_$PhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEmpty = null,
    Object? isValid = null,
  }) {
    return _then(_$PhoneImpl(
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhoneImpl implements _Phone {
  const _$PhoneImpl(
      {@JsonKey(name: "is_empty") required this.isEmpty,
      @JsonKey(name: "is_valid") required this.isValid});

  factory _$PhoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhoneImplFromJson(json);

  @override
  @JsonKey(name: "is_empty")
  final bool isEmpty;
  @override
  @JsonKey(name: "is_valid")
  final bool isValid;

  @override
  String toString() {
    return 'Phone(isEmpty: $isEmpty, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneImpl &&
            (identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isEmpty, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneImplCopyWith<_$PhoneImpl> get copyWith =>
      __$$PhoneImplCopyWithImpl<_$PhoneImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhoneImplToJson(
      this,
    );
  }
}

abstract class _Phone implements Phone {
  const factory _Phone(
      {@JsonKey(name: "is_empty") required final bool isEmpty,
      @JsonKey(name: "is_valid") required final bool isValid}) = _$PhoneImpl;

  factory _Phone.fromJson(Map<String, dynamic> json) = _$PhoneImpl.fromJson;

  @override
  @JsonKey(name: "is_empty")
  bool get isEmpty;
  @override
  @JsonKey(name: "is_valid")
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$PhoneImplCopyWith<_$PhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
