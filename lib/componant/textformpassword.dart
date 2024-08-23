import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class textfeildpassword extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontrooler;
  const textfeildpassword({super.key, required this.hinttext, required this.mycontrooler});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:mycontrooler ,
      obscureText: true,
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
