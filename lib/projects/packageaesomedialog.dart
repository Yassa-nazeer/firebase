import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class package extends StatefulWidget {
  const package({super.key});

  @override
  State<package> createState() => _packageState();
}

class _packageState extends State<package> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
   Container(
     child: MaterialButton(
        onPressed: () {  AwesomeDialog(

          context: context,
          dialogType: DialogType.info,
          animType: AnimType.rightSlide,
          title: 'Warning',
          desc: 'Are you sure.............',
          btnCancelOnPress: () {},
          btnOkOnPress: () {},
        )..show(); },
     child: Text("show"),)
   )
        ],
      )
      ,
    );
  }
}
