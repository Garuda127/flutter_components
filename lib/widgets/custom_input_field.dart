import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? counterText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool? isPassword;
  final String formProperty;
  final Map<String, String> formValues;
  const CustomInputField({
    Key? key,
    this.hintText,
    this.counterText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.labelText,
    this.keyboardType,
    this.isPassword,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
        obscureText: isPassword == null ? false : true,
        keyboardType: keyboardType,
        autofocus: true,
        textCapitalization: TextCapitalization.words,
        onChanged: (value) {
          formValues[formProperty] = value;
        },
        validator: (value) {
          if (value == '') return "este campo es requerido";
          return value!.length < 3 ? 'Minimo de 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          counterText: counterText,
          helperText: helperText,
          icon: icon == null ? null : Icon(icon),
          suffix: suffixIcon == null ? null : Icon(suffixIcon),
        ),
      ),
    );
  }
}
