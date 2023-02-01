import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  TextFormWidget({
    Key? key,
    required this.name,
    this.keyboardType,
    this.onChanged,
    obscureText,
    this.icon,
    this.suffixIcon,
    this.validator,
  }) : super(key: key);

  String name;
  bool obscureText = false;
  ValueChanged<String>? onChanged;
  TextInputType? keyboardType;
  Widget? icon;
  Widget? suffixIcon;
  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: icon,
        labelText: name,
        suffixIcon: suffixIcon,
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
