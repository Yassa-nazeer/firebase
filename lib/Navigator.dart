import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstap/Showdialog.dart';
import 'package:flutter/material.dart';
import 'Navigator5.dart';
class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: ()async{
            Navigator.of(context).pushNamedAndRemoveUntil("log",(route)=>false);
            await FirebaseAuth.instance.signOut();
          }, icon: Icon(Icons.exit_to_app))
        ],
          title:Text("About")) ,
      body: ListView(
        children: [
          Text("Chat",style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,),

        Container(width: 10,
        height: 60,

        margin: EdgeInsets.all(10),
        child: MaterialButton(onPressed: (){

          Navigator.of(context).pop();

        }
          ,color: Colors.deepOrange
          ,child:Text("Back"),

          padding: EdgeInsets.all(10),),
          ),
          Container(
            child:
            MaterialButton(onPressed: (){
              Navigator.of(context).pushNamed("Homepage");

            }
              ,color: Colors.deepOrange
              ,child:Text("Go to Homepage"),

              padding: EdgeInsets.all(10),),
          ),
          Container(
            child:
            MaterialButton(onPressed: (){
              Navigator.of(context).pushNamed("Contact");

            }
              ,color: Colors.deepOrange
              ,child:Text("Go to class"),

              padding: EdgeInsets.all(10),),
          )


        ],
      ),
    );
  }
}
