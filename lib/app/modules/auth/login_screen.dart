import 'package:flutter/material.dart';
import '../../services/auth_service.dart';
import 'package:flutter_widgets/flutter_widgets.dart';

class LoginScreen extends StatelessWidget {
  @override  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'),),
      body: Center(
        child: Text('Login Screen'),
      ),
    );
  }
}