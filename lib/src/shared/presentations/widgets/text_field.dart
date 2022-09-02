import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key,
    required this.controller,
    required this.maskFormatter}) : super(key: key);

  final TextEditingController controller;
  final MaskTextInputFormatter maskFormatter;

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      inputFormatters: [maskFormatter],
      controller: controller,
    );
  }
}
