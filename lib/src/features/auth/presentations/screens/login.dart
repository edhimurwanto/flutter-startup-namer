import 'package:flutter/material.dart';
import 'package:my_app/src/features/auth/presentations/screens/register.dart';
import 'package:my_app/src/shared/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authState, child) => Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    authState.setIsLoggedIn(true);
                  },
                  child: Text('Login'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterScreen();
                    }));
                  },
                  child: Text('Sign-Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
