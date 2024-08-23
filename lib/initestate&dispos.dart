import 'package:flutter/material.dart';

class after3 extends StatefulWidget {
  const after3({super.key});

  @override
  State<after3> createState() => _afterState();
}

class _afterState extends State<after3> {
  @override
  void initState(){
    print("page 3");
    super.initState();}
  @override
  void dispose(){
    print("dispose page 3");
    super.initState();}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Hello"),),
      body:ListView(
        children: [
          MaterialButton(onPressed: (){
            Navigator.of(context).pushNamed("page2");
          },
            child: Text("go to page 2"),
            color: Colors.orange,
          )
          ,
          MaterialButton(onPressed: (){
            Navigator.of(context).pushNamed("page1");
          },
            child: Text("go to page 1"),
            color: Colors.orange,
          )

        ],
      ) ,
    );
  }
}