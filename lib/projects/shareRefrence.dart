import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class shered extends StatefulWidget {
  const shered({super.key});

  @override
  State<shered> createState() => _sheredState();
}

class _sheredState extends State<shered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello",style: Theme.of(context).textTheme.bodyLarge,),),
      body: ListView(
        children: [
          MaterialButton(
            onPressed: () async {
              SharedPreferences share = await SharedPreferences.getInstance();
              share.setString("Name", "Yassa");
            },
            child: Text("Set Name"),
          ),
          MaterialButton(
            onPressed: () async {
              SharedPreferences share = await SharedPreferences.getInstance();
             String Name = share.getString("Name")!;
             print(Name);
            },
            child: Text("Get Name"),
          )
        ],
      ),
    );
  }
}
