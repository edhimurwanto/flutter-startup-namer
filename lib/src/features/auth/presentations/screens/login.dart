import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:my_app/src/features/auth/presentations/screens/register.dart';
import 'package:my_app/src/shared/presentations/widgets/text_field.dart';
import 'package:my_app/src/shared/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var maskFormatter = MaskTextInputFormatter(
        mask: '####-####',
        filter: { "#": RegExp(r'[0-9]') },
        initialText: "123412132",
        type: MaskAutoCompletionType.eager);
    var textEditingController = TextEditingController(text: maskFormatter.getMaskedText());

    return Consumer<AuthProvider>(
      builder: (context, authState, child) => Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyTextField(controller: textEditingController, maskFormatter: maskFormatter),
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
