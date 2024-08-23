import 'package:flutter/material.dart';

class popmenu extends StatefulWidget {
  const popmenu({super.key});

  @override
  State<popmenu> createState() => _popmenuState();
}

class _popmenuState extends State<popmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
        actions: [
        PopupMenuButton(
        iconSize: 30,
        onOpened: (){print("Open");},
        onCanceled: (){print("close");},
        onSelected: (val)
        {
          if(val=='value one'){


          }
        }
        ,
        itemBuilder:(context)=>[
          PopupMenuItem(child: Text("one"),value: "value one",onTap: (){},),
          PopupMenuItem(child: Text("two"),value: "value two",),
          PopupMenuItem(child: Text("three"),value: "value three",),
        ],
      ),

    ]
      )
    );
  }
}
