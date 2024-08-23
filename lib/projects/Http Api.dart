import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../main.dart';
void main() {
  runApp(MyApp());
}
class Http extends StatefulWidget {
  const Http({super.key});

  @override
  State<Http> createState() => _HttpState();
}

class _HttpState extends State<Http> {
  List data=[];
var loading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView
        (
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: MaterialButton(onPressed: ()
            async {

              loading=true;
              setState(() {

              });
              var response=await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
              var responsebbody=jsonDecode(response.body);
              data.addAll(responsebbody);
              loading=false;
              setState(() {

              });
              print(responsebbody[1]['id']);
            },
              color: Colors.red,
              child: Text("Http Request"),
            ),
          ),
          if(loading==true)Center(child: CircularProgressIndicator(),),
          ...List.generate(data.length, (i)=>
              Card(
                child: ListTile(title: Text("${data[i]['title']}"),),
              ))

        ],
      ),
    );
  }
}
