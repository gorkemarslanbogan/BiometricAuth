

import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
   const CustomTextFieldWidget({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return  TextField(
  decoration: InputDecoration(
    hintText: hintText, 
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
);
  }
}