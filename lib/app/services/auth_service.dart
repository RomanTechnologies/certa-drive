import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../data/models/user.dart';

class AuthService{
{
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<User> signIn(String email, String password) async {
    Try {
      FirebaseUserCredential result = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return User.fromFirebase(user);
    } catch (e) {
      return null;
    }
  }

  Future<User> signUp(String email, String password) async {
    Try {
      FirebaseUserCredential result = await firebaseAuth.signUpWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return User.fromFirebase(user);
    } catch (e) {
      return null;
    }
  }
}