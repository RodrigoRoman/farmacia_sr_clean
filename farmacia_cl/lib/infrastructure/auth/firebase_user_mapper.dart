import 'package:farmacia_cl/domain/auth/user.dart';
import 'package:farmacia_cl/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;


extension FirebaseUserDomainX on firebase.User{
  User toDomain(){
    return User(
      id: UniqueId.fromUniqueString(uid)
    );
  }
}