import 'package:farmacia_cl/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:farmacia_cl/domain/auth/i_auth_facade.dart';
import 'package:farmacia_cl/domain/auth/value_objects.dart';
import 'package:farmacia_cl/domain/auth/user.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as:IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade{
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn
  );


  // @override
  // Future<Option<User>> getSignedInUser() async => 
  //   optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAdress emailAdress, required Password password
    }) async{
      final emailAdressStr = emailAdress.getOrCrash();
      final passwordStr = password.getOrCrash();
      try{
        await _firebaseAuth.createUserWithEmailAndPassword(email: emailAdressStr, password: passwordStr);
        return right(unit);
      }on FirebaseAuthException catch(e){
        if(e.code == 'ERROR_EMAIL_ALREADY_IN_USE'){
          return left(const AuthFailure.emailAlreadyInUse());
        }else{
          return left(const AuthFailure.serverError());
        }
      }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAdress emailAdress, required Password password
    }) async{
    final emailAdressStr = emailAdress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: emailAdressStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch(e){
      if(e.code == 'ERROR_WRONG_PASSWORD' ||
        e.code == 'ERROR_USER_NOT_FOUND'){
          return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }else{
        return left(const  AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try{
      final googleUser = await _googleSignIn.signIn();
      if(googleUser == null){
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken
      );
      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch(_){
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
    _googleSignIn.signOut(),
    _firebaseAuth.signOut()
  ]);
  
  @override
  Future<Option<User>> getSignedInUser() {
    // TODO: implement getSignedInUser
    throw UnimplementedError();
  }

}