import 'package:dartz/dartz.dart';
import 'package:farmacia_cl/domain/core/failures.dart';
import 'package:farmacia_cl/domain/core/value_objects.dart';
import 'package:farmacia_cl/domain/core/value_validators.dart';

class EmailAdress extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>,String> value;
  factory EmailAdress(String input){
    assert(input != null);
    return EmailAdress._(
      validateStringNotEmpty(input)
        .flatMap(validateValidEmail)
    );
  }
  const EmailAdress._(this.value);
}

class Password extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>,String> value;
  factory Password(String input){
    assert(input != null);
    return Password._(
      validateStringNotEmpty(input)
        .flatMap(validatePasswordLength)
        .flatMap(validatePasswordNumber)
        .flatMap(validateStringNotEmpty)
        .flatMap(validatePasswordCapital)
      );
  }
  const Password._(this.value);
}