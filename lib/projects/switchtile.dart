import 'package:flutter/material.dart';

class switchlist extends StatefulWidget {
  const switchlist({super.key});

  @override
  State<switchlist> createState() => _switchState();
}

class _switchState extends State<switchlist> {
  bool state=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: ListView
      (
      children: [
        SwitchListTile(
            title: Text("state",style: TextStyle(fontSize:19 ),),
            activeColor: Colors.green,
            inactiveThumbColor: Colors.grey,
            inactiveTrackColor: Colors.black,
            value: state, onChanged: (val) {

          print("onchange");
          setState(() {
            state = val;
          }  );
        })
      ],
    ),
    );
  }
}
