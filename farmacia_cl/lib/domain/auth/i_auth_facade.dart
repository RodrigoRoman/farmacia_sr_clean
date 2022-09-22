import 'package:dartz/dartz.dart';
import 'package:farmacia_cl/domain/auth/auth_failure.dart';
import 'package:farmacia_cl/domain/auth/user.dart';
import 'package:farmacia_cl/domain/auth/value_objects.dart';

abstract class IAuthFacade{
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure,Unit>> registerWithEmailAndPassword({
    required EmailAdress emailAdress,
    required Password password
  });
  Future<Either<AuthFailure,Unit>> signInWithEmailAndPassword({
    required EmailAdress emailAdress,
    required Password password
  });
  Future<Either<AuthFailure,Unit>> signInWithGoogle();
  Future<void> signOut();
}