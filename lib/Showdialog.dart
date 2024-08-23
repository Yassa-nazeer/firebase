import 'package:firstap/Navigator.dart';
import 'package:flutter/material.dart';

import 'Navigator5.dart';
class Homepage extends StatelessWidget {
    Homepage({super.key});
GlobalKey<ScaffoldState> scaffoldkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key:scaffoldkey ,
      appBar: AppBar(
        title:Text("Home page")) ,
      body: ListView(


      children: [
        Center(
          child: MaterialButton(onPressed: (){
            showDialog(
                barrierDismissible: false,
                context: (context), builder: (context){return AlertDialog(
              shape:RoundedRectangleBorder(
                  borderRadius:   BorderRadius.circular(50)),
              title: Text("Warnning"),
              content: Text("Are you sure"),
              actions: [
                TextButton(onPressed: (){}, child: Text("OK")),
                TextButton(onPressed: ()
                {Navigator.of(context).pop();},
                    child: Text("Cancel")),
              ],
            );}
            );},
            textColor: Colors.white,
            color: Colors.cyan,
            child: Text("show"),),
        )



      ]

          ),
        );





  }
}

















