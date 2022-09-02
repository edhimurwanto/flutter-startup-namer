import 'package:flutter/material.dart';
import 'package:my_app/src/features/auth/presentations/screens/login.dart';
import 'package:my_app/src/features/home/presentations/screens/home.dart';
import 'package:my_app/src/shared/providers/auth_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AuthProvider>(
      child: MyApp(),
      create: (BuildContext context) => AuthProvider(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen()
    );
  }
}
