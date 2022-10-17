// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int max) passwordTooShort,
    required TResult Function(T failedValue) passwordDoesNotMatch,
    required TResult Function(T failedValue)
        passwordMustContainSpecialCharacter,
    required TResult Function(T failedValue) passwordMustContainCapitalLetter,
    required TResult Function(T failedValue) passwordMustContainNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PassWordTooShort<T> value) passwordTooShort,
    required TResult Function(PassWordDoesNotMatch<T> value)
        passwordDoesNotMatch,
    required TResult Function(PasswordMustContainSpecialCharacter<T> value)
        passwordMustContainSpecialCharacter,
    required TResult Function(PasswordMustContainCapitalLetter<T> value)
        passwordMustContainCapitalLetter,
    required TResult Function(PasswordMustContainNumber<T> value)
        passwordMustContainNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$$ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ExceedingLengthCopyWith(_$ExceedingLength<T> value,
          $Res Function(_$ExceedingLength<T>) then) =
      __$$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ExceedingLengthCopyWith<T, $Res> {
  __$$ExceedingLengthCopyWithImpl(
      _$ExceedingLength<T> _value, $Res Function(_$ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as _$ExceedingLength<T>));

  @override
  _$ExceedingLength<T> get _value => super._value as _$ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_$ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      __$$ExceedingLengthCopyWithImpl<T, _$ExceedingLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int max) passwordTooShort,
    required TResult Function(T failedValue) passwordDoesNotMatch,
    required TResult Function(T failedValue)
        passwordMustContainSpecialCharacter,
    required TResult Function(T failedValue) passwordMustContainCapitalLetter,
    required TResult Function(T failedValue) passwordMustContainNumber,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
  }) {
    return exceedingLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PassWordTooShort<T> value) passwordTooShort,
    required TResult Function(PassWordDoesNotMatch<T> value)
        passwordDoesNotMatch,
    required TResult Function(PasswordMustContainSpecialCharacter<T> value)
        passwordMustContainSpecialCharacter,
    required TResult Function(PasswordMustContainCapitalLetter<T> value)
        passwordMustContainCapitalLetter,
    required TResult Function(PasswordMustContainNumber<T> value)
        passwordMustContainNumber,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {required final T failedValue,
      required final int max}) = _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyCopyWith(_$Empty<T> value, $Res Function(_$Empty<T>) then) =
      __$$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$EmptyCopyWith<T, $Res> {
  __$$EmptyCopyWithImpl(_$Empty<T> _value, $Res Function(_$Empty<T>) _then)
      : super(_value, (v) => _then(v as _$Empty<T>));

  @override
  _$Empty<T> get _value => super._value as _$Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      __$$EmptyCopyWithImpl<T, _$Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int max) passwordTooShort,
    required TResult Function(T failedValue) passwordDoesNotMatch,
    required TResult Function(T failedValue)
        passwordMustContainSpecialCharacter,
    required TResult Function(T failedValue) passwordMustContainCapitalLetter,
    required TResult Function(T failedValue) passwordMustContainNumber,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PassWordTooShort<T> value) passwordTooShort,
    required TResult Function(PassWordDoesNotMatch<T> value)
        passwordDoesNotMatch,
    required TResult Function(PasswordMustContainSpecialCharacter<T> value)
        passwordMustContainSpecialCharacter,
    required TResult Function(PasswordMustContainCapitalLetter<T> value)
        passwordMustContainCapitalLetter,
    required TResult Function(PasswordMustContainNumber<T> value)
        passwordMustContainNumber,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultilineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MultilineCopyWith(
          _$Multiline<T> value, $Res Function(_$Multiline<T>) then) =
      __$$MultilineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$MultilineCopyWith<T, $Res> {
  __$$MultilineCopyWithImpl(
      _$Multiline<T> _value, $Res Function(_$Multiline<T>) _then)
      : super(_value, (v) => _then(v as _$Multiline<T>));

  @override
  _$Multiline<T> get _value => super._value as _$Multiline<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_$Multiline<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Multiline<T> implements Multiline<T> {
  const _$Multiline({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Multiline<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$$MultilineCopyWith<T, _$Multiline<T>> get copyWith =>
      __$$MultilineCopyWithImpl<T, _$Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int max) passwordTooShort,
    required TResult Function(T failedValue) passwordDoesNotMatch,
    required TResult Function(T failedValue)
        passwordMustContainSpecialCharacter,
    required TResult Function(T failedValue) passwordMustContainCapitalLetter,
    required TResult Function(T failedValue) passwordMustContainNumber,
  }) {
    return multiline(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
  }) {
    return multiline?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PassWordTooShort<T> value) passwordTooShort,
    required TResult Function(PassWordDoesNotMatch<T> value)
        passwordDoesNotMatch,
    required TResult Function(PasswordMustContainSpecialCharacter<T> value)
        passwordMustContainSpecialCharacter,
    required TResult Function(PasswordMustContainCapitalLetter<T> value)
        passwordMustContainCapitalLetter,
    required TResult Function(PasswordMustContainNumber<T> value)
        passwordMustContainNumber,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
  }) {
    return multiline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline(
      {required final T failedValue, required final int max}) = _$Multiline<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$MultilineCopyWith<T, _$Multiline<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidEmail<T>));

  @override
  _$InvalidEmail<T> get _value => super._value as _$InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<T, _$InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int max) passwordTooShort,
    required TResult Function(T failedValue) passwordDoesNotMatch,
    required TResult Function(T failedValue)
        passwordMustContainSpecialCharacter,
    required TResult Function(T failedValue) passwordMustContainCapitalLetter,
    required TResult Function(T failedValue) passwordMustContainNumber,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PassWordTooShort<T> value) passwordTooShort,
    required TResult Function(PassWordDoesNotMatch<T> value)
        passwordDoesNotMatch,
    required TResult Function(PasswordMustContainSpecialCharacter<T> value)
        passwordMustContainSpecialCharacter,
    required TResult Function(PasswordMustContainCapitalLetter<T> value)
        passwordMustContainCapitalLetter,
    required TResult Function(PasswordMustContainNumber<T> value)
        passwordMustContainNumber,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T failedValue}) =
      _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PassWordTooShortCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$PassWordTooShortCopyWith(_$PassWordTooShort<T> value,
          $Res Function(_$PassWordTooShort<T>) then) =
      __$$PassWordTooShortCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$PassWordTooShortCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$PassWordTooShortCopyWith<T, $Res> {
  __$$PassWordTooShortCopyWithImpl(
      _$PassWordTooShort<T> _value, $Res Function(_$PassWordTooShort<T>) _then)
      : super(_value, (v) => _then(v as _$PassWordTooShort<T>));

  @override
  _$PassWordTooShort<T> get _value => super._value as _$PassWordTooShort<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_$PassWordTooShort<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PassWordTooShort<T> implements PassWordTooShort<T> {
  const _$PassWordTooShort({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordTooShort(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassWordTooShort<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$$PassWordTooShortCopyWith<T, _$PassWordTooShort<T>> get copyWith =>
      __$$PassWordTooShortCopyWithImpl<T, _$PassWordTooShort<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int max) passwordTooShort,
    required TResult Function(T failedValue) passwordDoesNotMatch,
    required TResult Function(T failedValue)
        passwordMustContainSpecialCharacter,
    required TResult Function(T failedValue) passwordMustContainCapitalLetter,
    required TResult Function(T failedValue) passwordMustContainNumber,
  }) {
    return passwordTooShort(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
  }) {
    return passwordTooShort?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (passwordTooShort != null) {
      return passwordTooShort(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PassWordTooShort<T> value) passwordTooShort,
    required TResult Function(PassWordDoesNotMatch<T> value)
        passwordDoesNotMatch,
    required TResult Function(PasswordMustContainSpecialCharacter<T> value)
        passwordMustContainSpecialCharacter,
    required TResult Function(PasswordMustContainCapitalLetter<T> value)
        passwordMustContainCapitalLetter,
    required TResult Function(PasswordMustContainNumber<T> value)
        passwordMustContainNumber,
  }) {
    return passwordTooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
  }) {
    return passwordTooShort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (passwordTooShort != null) {
      return passwordTooShort(this);
    }
    return orElse();
  }
}

abstract class PassWordTooShort<T> implements ValueFailure<T> {
  const factory PassWordTooShort(
      {required final T failedValue,
      required final int max}) = _$PassWordTooShort<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$PassWordTooShortCopyWith<T, _$PassWordTooShort<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PassWordDoesNotMatchCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$PassWordDoesNotMatchCopyWith(_$PassWordDoesNotMatch<T> value,
          $Res Function(_$PassWordDoesNotMatch<T>) then) =
      __$$PassWordDoesNotMatchCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$PassWordDoesNotMatchCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$PassWordDoesNotMatchCopyWith<T, $Res> {
  __$$PassWordDoesNotMatchCopyWithImpl(_$PassWordDoesNotMatch<T> _value,
      $Res Function(_$PassWordDoesNotMatch<T>) _then)
      : super(_value, (v) => _then(v as _$PassWordDoesNotMatch<T>));

  @override
  _$PassWordDoesNotMatch<T> get _value =>
      super._value as _$PassWordDoesNotMatch<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$PassWordDoesNotMatch<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PassWordDoesNotMatch<T> implements PassWordDoesNotMatch<T> {
  const _$PassWordDoesNotMatch({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordDoesNotMatch(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassWordDoesNotMatch<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$PassWordDoesNotMatchCopyWith<T, _$PassWordDoesNotMatch<T>> get copyWith =>
      __$$PassWordDoesNotMatchCopyWithImpl<T, _$PassWordDoesNotMatch<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int max) passwordTooShort,
    required TResult Function(T failedValue) passwordDoesNotMatch,
    required TResult Function(T failedValue)
        passwordMustContainSpecialCharacter,
    required TResult Function(T failedValue) passwordMustContainCapitalLetter,
    required TResult Function(T failedValue) passwordMustContainNumber,
  }) {
    return passwordDoesNotMatch(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
  }) {
    return passwordDoesNotMatch?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (passwordDoesNotMatch != null) {
      return passwordDoesNotMatch(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PassWordTooShort<T> value) passwordTooShort,
    required TResult Function(PassWordDoesNotMatch<T> value)
        passwordDoesNotMatch,
    required TResult Function(PasswordMustContainSpecialCharacter<T> value)
        passwordMustContainSpecialCharacter,
    required TResult Function(PasswordMustContainCapitalLetter<T> value)
        passwordMustContainCapitalLetter,
    required TResult Function(PasswordMustContainNumber<T> value)
        passwordMustContainNumber,
  }) {
    return passwordDoesNotMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
  }) {
    return passwordDoesNotMatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (passwordDoesNotMatch != null) {
      return passwordDoesNotMatch(this);
    }
    return orElse();
  }
}

abstract class PassWordDoesNotMatch<T> implements ValueFailure<T> {
  const factory PassWordDoesNotMatch({required final T failedValue}) =
      _$PassWordDoesNotMatch<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$PassWordDoesNotMatchCopyWith<T, _$PassWordDoesNotMatch<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordMustContainSpecialCharacterCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$PasswordMustContainSpecialCharacterCopyWith(
          _$PasswordMustContainSpecialCharacter<T> value,
          $Res Function(_$PasswordMustContainSpecialCharacter<T>) then) =
      __$$PasswordMustContainSpecialCharacterCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$PasswordMustContainSpecialCharacterCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$PasswordMustContainSpecialCharacterCopyWith<T, $Res> {
  __$$PasswordMustContainSpecialCharacterCopyWithImpl(
      _$PasswordMustContainSpecialCharacter<T> _value,
      $Res Function(_$PasswordMustContainSpecialCharacter<T>) _then)
      : super(_value,
            (v) => _then(v as _$PasswordMustContainSpecialCharacter<T>));

  @override
  _$PasswordMustContainSpecialCharacter<T> get _value =>
      super._value as _$PasswordMustContainSpecialCharacter<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$PasswordMustContainSpecialCharacter<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PasswordMustContainSpecialCharacter<T>
    implements PasswordMustContainSpecialCharacter<T> {
  const _$PasswordMustContainSpecialCharacter({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordMustContainSpecialCharacter(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordMustContainSpecialCharacter<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$PasswordMustContainSpecialCharacterCopyWith<T,
          _$PasswordMustContainSpecialCharacter<T>>
      get copyWith => __$$PasswordMustContainSpecialCharacterCopyWithImpl<T,
          _$PasswordMustContainSpecialCharacter<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int max) passwordTooShort,
    required TResult Function(T failedValue) passwordDoesNotMatch,
    required TResult Function(T failedValue)
        passwordMustContainSpecialCharacter,
    required TResult Function(T failedValue) passwordMustContainCapitalLetter,
    required TResult Function(T failedValue) passwordMustContainNumber,
  }) {
    return passwordMustContainSpecialCharacter(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
  }) {
    return passwordMustContainSpecialCharacter?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (passwordMustContainSpecialCharacter != null) {
      return passwordMustContainSpecialCharacter(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PassWordTooShort<T> value) passwordTooShort,
    required TResult Function(PassWordDoesNotMatch<T> value)
        passwordDoesNotMatch,
    required TResult Function(PasswordMustContainSpecialCharacter<T> value)
        passwordMustContainSpecialCharacter,
    required TResult Function(PasswordMustContainCapitalLetter<T> value)
        passwordMustContainCapitalLetter,
    required TResult Function(PasswordMustContainNumber<T> value)
        passwordMustContainNumber,
  }) {
    return passwordMustContainSpecialCharacter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
  }) {
    return passwordMustContainSpecialCharacter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (passwordMustContainSpecialCharacter != null) {
      return passwordMustContainSpecialCharacter(this);
    }
    return orElse();
  }
}

abstract class PasswordMustContainSpecialCharacter<T>
    implements ValueFailure<T> {
  const factory PasswordMustContainSpecialCharacter(
          {required final T failedValue}) =
      _$PasswordMustContainSpecialCharacter<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$PasswordMustContainSpecialCharacterCopyWith<T,
          _$PasswordMustContainSpecialCharacter<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordMustContainCapitalLetterCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$PasswordMustContainCapitalLetterCopyWith(
          _$PasswordMustContainCapitalLetter<T> value,
          $Res Function(_$PasswordMustContainCapitalLetter<T>) then) =
      __$$PasswordMustContainCapitalLetterCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$PasswordMustContainCapitalLetterCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$PasswordMustContainCapitalLetterCopyWith<T, $Res> {
  __$$PasswordMustContainCapitalLetterCopyWithImpl(
      _$PasswordMustContainCapitalLetter<T> _value,
      $Res Function(_$PasswordMustContainCapitalLetter<T>) _then)
      : super(_value, (v) => _then(v as _$PasswordMustContainCapitalLetter<T>));

  @override
  _$PasswordMustContainCapitalLetter<T> get _value =>
      super._value as _$PasswordMustContainCapitalLetter<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$PasswordMustContainCapitalLetter<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PasswordMustContainCapitalLetter<T>
    implements PasswordMustContainCapitalLetter<T> {
  const _$PasswordMustContainCapitalLetter({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordMustContainCapitalLetter(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordMustContainCapitalLetter<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$PasswordMustContainCapitalLetterCopyWith<T,
          _$PasswordMustContainCapitalLetter<T>>
      get copyWith => __$$PasswordMustContainCapitalLetterCopyWithImpl<T,
          _$PasswordMustContainCapitalLetter<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int max) passwordTooShort,
    required TResult Function(T failedValue) passwordDoesNotMatch,
    required TResult Function(T failedValue)
        passwordMustContainSpecialCharacter,
    required TResult Function(T failedValue) passwordMustContainCapitalLetter,
    required TResult Function(T failedValue) passwordMustContainNumber,
  }) {
    return passwordMustContainCapitalLetter(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
  }) {
    return passwordMustContainCapitalLetter?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (passwordMustContainCapitalLetter != null) {
      return passwordMustContainCapitalLetter(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PassWordTooShort<T> value) passwordTooShort,
    required TResult Function(PassWordDoesNotMatch<T> value)
        passwordDoesNotMatch,
    required TResult Function(PasswordMustContainSpecialCharacter<T> value)
        passwordMustContainSpecialCharacter,
    required TResult Function(PasswordMustContainCapitalLetter<T> value)
        passwordMustContainCapitalLetter,
    required TResult Function(PasswordMustContainNumber<T> value)
        passwordMustContainNumber,
  }) {
    return passwordMustContainCapitalLetter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
  }) {
    return passwordMustContainCapitalLetter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (passwordMustContainCapitalLetter != null) {
      return passwordMustContainCapitalLetter(this);
    }
    return orElse();
  }
}

abstract class PasswordMustContainCapitalLetter<T> implements ValueFailure<T> {
  const factory PasswordMustContainCapitalLetter(
      {required final T failedValue}) = _$PasswordMustContainCapitalLetter<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$PasswordMustContainCapitalLetterCopyWith<T,
          _$PasswordMustContainCapitalLetter<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordMustContainNumberCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$PasswordMustContainNumberCopyWith(
          _$PasswordMustContainNumber<T> value,
          $Res Function(_$PasswordMustContainNumber<T>) then) =
      __$$PasswordMustContainNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$PasswordMustContainNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$PasswordMustContainNumberCopyWith<T, $Res> {
  __$$PasswordMustContainNumberCopyWithImpl(
      _$PasswordMustContainNumber<T> _value,
      $Res Function(_$PasswordMustContainNumber<T>) _then)
      : super(_value, (v) => _then(v as _$PasswordMustContainNumber<T>));

  @override
  _$PasswordMustContainNumber<T> get _value =>
      super._value as _$PasswordMustContainNumber<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$PasswordMustContainNumber<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PasswordMustContainNumber<T> implements PasswordMustContainNumber<T> {
  const _$PasswordMustContainNumber({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordMustContainNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordMustContainNumber<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$PasswordMustContainNumberCopyWith<T, _$PasswordMustContainNumber<T>>
      get copyWith => __$$PasswordMustContainNumberCopyWithImpl<T,
          _$PasswordMustContainNumber<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue, int max) passwordTooShort,
    required TResult Function(T failedValue) passwordDoesNotMatch,
    required TResult Function(T failedValue)
        passwordMustContainSpecialCharacter,
    required TResult Function(T failedValue) passwordMustContainCapitalLetter,
    required TResult Function(T failedValue) passwordMustContainNumber,
  }) {
    return passwordMustContainNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
  }) {
    return passwordMustContainNumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue, int max)? passwordTooShort,
    TResult Function(T failedValue)? passwordDoesNotMatch,
    TResult Function(T failedValue)? passwordMustContainSpecialCharacter,
    TResult Function(T failedValue)? passwordMustContainCapitalLetter,
    TResult Function(T failedValue)? passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (passwordMustContainNumber != null) {
      return passwordMustContainNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(PassWordTooShort<T> value) passwordTooShort,
    required TResult Function(PassWordDoesNotMatch<T> value)
        passwordDoesNotMatch,
    required TResult Function(PasswordMustContainSpecialCharacter<T> value)
        passwordMustContainSpecialCharacter,
    required TResult Function(PasswordMustContainCapitalLetter<T> value)
        passwordMustContainCapitalLetter,
    required TResult Function(PasswordMustContainNumber<T> value)
        passwordMustContainNumber,
  }) {
    return passwordMustContainNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
  }) {
    return passwordMustContainNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(PassWordTooShort<T> value)? passwordTooShort,
    TResult Function(PassWordDoesNotMatch<T> value)? passwordDoesNotMatch,
    TResult Function(PasswordMustContainSpecialCharacter<T> value)?
        passwordMustContainSpecialCharacter,
    TResult Function(PasswordMustContainCapitalLetter<T> value)?
        passwordMustContainCapitalLetter,
    TResult Function(PasswordMustContainNumber<T> value)?
        passwordMustContainNumber,
    required TResult orElse(),
  }) {
    if (passwordMustContainNumber != null) {
      return passwordMustContainNumber(this);
    }
    return orElse();
  }
}

abstract class PasswordMustContainNumber<T> implements ValueFailure<T> {
  const factory PasswordMustContainNumber({required final T failedValue}) =
      _$PasswordMustContainNumber<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$PasswordMustContainNumberCopyWith<T, _$PasswordMustContainNumber<T>>
      get copyWith => throw _privateConstructorUsedError;
}
