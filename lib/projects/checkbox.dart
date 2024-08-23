import 'package:flutter/material.dart';

class check extends StatefulWidget {
  const check({super.key});

  @override
  State<check> createState() => _checkState();
}

class _checkState extends State<check> {
  bool state1=false;
  bool state2=false;
  bool state3=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView
        (
        children: [
          CheckboxListTile(
              title: Text("football"),
              value :state1 , onChanged: (val){
            setState(() {
              state1=val!;
            });
          })
          ,CheckboxListTile(
              title: Text("vollyball"),
              value :state2 , onChanged: (val){
            setState(() {
              state2=val!;
            });
          })
          , CheckboxListTile(
              title: Text("tennns"),
              value :state3 , onChanged: (val){
            setState(() {
              state3=val!;
            });
          })
        ],
      ),
    );
  }
}
