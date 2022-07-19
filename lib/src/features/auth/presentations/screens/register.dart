import 'package:flutter/material.dart';
import 'package:my_app/src/shared/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authState, child) => Scaffold(
        appBar: AppBar(title: Text('Register')),
        body: Container(
            child: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Login')),
        )),
      ),
    );
  }
}
