import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String fieldName;
  final TextEditingController fieldController;
  final TextInputType fieldType;
  final bool obscureText;

  const TextFieldWidget({
    Key? key,
    required this.fieldName,
    required this.fieldController,
    required this.fieldType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: fieldController,
      keyboardType: fieldType,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Colors.grey[200],
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        labelText: fieldName,
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}