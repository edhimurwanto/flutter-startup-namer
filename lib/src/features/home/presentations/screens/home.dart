import 'package:flutter/material.dart';
import 'package:my_app/src/shared/presentations/widgets/app_bar.dart';
import 'package:my_app/src/shared/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, appState, child) => Scaffold(
          appBar: myAppBar(
            rightIcon: Icon(Icons.menu),
            title: 'Detran.SP',
          ),
          body: Column(children: [
            TextButton(
                onPressed: () {
                  appState.setIsLoggedIn(false);
                },
                child: Text('Logout'))
          ])),
    );
  }
}
