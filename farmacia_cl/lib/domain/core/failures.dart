import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T>{
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.multiline({
    required T failedValue,
    required int max,
  }) = Multiline<T>;
  const factory ValueFailure.invalidEmail({
    required T failedValue,
    required int max,
  }) = InvalidEmail<T>;
  const factory ValueFailure.passwordTooShort({
    required T failedValue,
    required int max,
  }) = PassWordTooShort<T>;
  const factory ValueFailure.passwordMustContainSpecialCharacter({
    required T failedValue,
  }) = PasswordMustContainSpecialCharacter<T>;
  const factory ValueFailure.passwordMustContainCapitalLetter({
    required T failedValue,
  }) = PasswordMustContainCapitalLetter<T>;
  const factory ValueFailure.passwordMustContainNumber({
    required T failedValue,
  }) = PasswordMustContainNumber<T>;


}