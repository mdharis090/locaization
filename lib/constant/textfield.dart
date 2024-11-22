// lib/widgets/custom_text_field.dart

import 'package:flutter/material.dart';

class TextField extends StatelessWidget {
  String labl = "";
  String hint = "";
  bool obs;
  Widget Icon;
  var Control;
  var keyborad;

  TextField({
    super.key,
    required this.labl,
    required this.hint,
    required this.Icon,
    this.obs = false,
    this.Control,
    this.keyborad,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obs,
      controller: Control,
      keyboardType: keyborad,
      decoration: InputDecoration(
        label: Text(labl),
        hintText: hint,
        suffix: Icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}