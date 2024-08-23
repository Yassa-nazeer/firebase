import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class textfeild extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontrollrt;
  const textfeild({super.key, required this.hinttext, required this.mycontrollrt});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontrollrt,
      decoration: InputDecoration(
        hintText: hinttext,
        fillColor: Colors.grey[250],
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.grey)),
        filled: true,
      ),

    );
  }
}
