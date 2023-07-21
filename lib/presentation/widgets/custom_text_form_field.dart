import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.controller,
    required this.keyboardType,
    this.validator,
    this.decoration,
    this.onChange,
    this.onSaved,
    this.maxLines=1,
    this.onFieldSubmitted,
    this.obscureText=false,
  }) : super(key: key);
  final TextEditingController?controller;
  final TextInputType keyboardType;
  FormFieldValidator<String>?validator;
  InputDecoration?decoration;
  ValueChanged<String>?onChange;
  FormFieldSetter<String>?onSaved;
  ValueChanged<String>?onFieldSubmitted;
  int maxLines;
  bool obscureText;
  @override
  Widget build(BuildContext context){
    return TextFormField(
      obscureText:obscureText,
      controller:controller,
      keyboardType:keyboardType,
      onChanged:onChange,
      // onTap:onTap,
      onSaved:onSaved,
      maxLines:maxLines,
      decoration:decoration,
      onFieldSubmitted: onFieldSubmitted,
      validator:validator,
    );
  }
}