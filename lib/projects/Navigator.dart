import 'package:flutter/material.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Center(
            child: Text("Home page",style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,),
          )
          ,
          TextField(
            decoration:InputDecoration(label:Text( "Username")),
          ),TextField(
            obscureText: true,
            decoration:InputDecoration(label: Text("Password")),
          )
          ,  Container(width: 10,
              height: 60,

              margin: EdgeInsets.all(10),
              child: MaterialButton(onPressed: (){
                Navigator.of(context).pushNamed("about");

              }
                ,color: Colors.deepOrange
                ,child:Text("Go to about"),

                padding: EdgeInsets.all(10),)


          )
          ,  Container(width: 10,
            height: 60,

            margin: EdgeInsets.all(10),
            child: MaterialButton(onPressed: (){
              Navigator.of(context).pushNamed("Contact");


            }
              ,color: Colors.deepOrange
              ,child:Text("Go to Contact"),

              padding: EdgeInsets.all(10),),
          )
        ],
      ),
    );
  }
}
