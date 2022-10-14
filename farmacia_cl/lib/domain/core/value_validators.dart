import 'package:dartz/dartz.dart';
import 'package:farmacia_cl/domain/core/failures.dart';
import 'package:farmacia_cl/presentation/resources/constant_validation.dart';

Either<ValueFailure<String>,String> validateStringNotEmpty(String input){
  print('input demasiado corto?');
  print(input.isNotEmpty);
  print('input es  vacio');
  print(input != '');
  if(input.isNotEmpty){
    return right(input);
  }else{
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>,String> validateValidEmail(String email){
  if(ConstantValidation.emailValidRegExp.hasMatch(email)){
    return right(email);
  }else{
    return left(ValueFailure.invalidEmail(failedValue: email));
  }
}

Either<ValueFailure<String>,String> validatePasswordLength(String pwd){
  if(pwd.length > ConstantValidation.minStringLengthPassword){
    return right(pwd);
  }else{
    return left(ValueFailure.passwordTooShort(failedValue: pwd,max: ConstantValidation.minStringLengthPassword));
  }
}

Either<ValueFailure<String>,String> validatePasswordCapital(String pwd){
  if(pwd.contains(ConstantValidation.containsUpperCaseRegExp)){
    return right(pwd);
  }else{
    return left(ValueFailure.passwordMustContainCapitalLetter(failedValue: pwd));
  }
}

Either<ValueFailure<String>,String> validatePasswordSpecialChar(String pwd){
  if(pwd.contains(ConstantValidation.containsSpecialCharRegExp)){
    return right(pwd);
  }else{
    return left(ValueFailure.passwordMustContainSpecialCharacter(failedValue: pwd));
  }
}

Either<ValueFailure<String>,String> validatePasswordNumber(String pwd){
  if(pwd.contains(ConstantValidation.containsNumberRegExp)){
    return right(pwd);
  }else{
    return left(ValueFailure.passwordMustContainNumber(failedValue: pwd));
  }
}