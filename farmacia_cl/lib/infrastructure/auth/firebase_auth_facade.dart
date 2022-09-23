import 'package:farmacia_cl/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:farmacia_cl/domain/auth/i_auth_facade.dart';
import 'package:farmacia_cl/domain/auth/value_objects.dart';
import 'package:farmacia_cl/domain/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as:IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade{
  @override
  Future<Option<User>> getSignedInUser() {
    // TODO: implement getSignedInUser
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({required EmailAdress emailAdress, required Password password}) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({required EmailAdress emailAdress, required Password password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

}