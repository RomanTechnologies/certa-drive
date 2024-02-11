import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

class User{
  final String id;
  final String email;
  final String name;
  final String role;

  User({ this.id, required this.email, required this.name, required this.role });

  factory User.fromFirebase(FirebaseUser user) => User(
    id: user.uid,
    email: user.email != null ? user.email! : '',
    name: user.displayName != null ? user.displayName! : '',
    role: '', // This will be determined based on the application's business logic
  );
}