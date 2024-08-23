import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:http/http.dart';

class after2 extends StatefulWidget {
  const after2({super.key});

  @override
  State<after2> createState() => _afterState();
}

class _afterState extends State<after2> {
  @override
  Widget build(BuildContext context) {
    Future<List> getData() async {
      var response =
          await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      List responsebbody = jsonDecode(response.body);
      return responsebbody;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: FutureBuilder<List>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );}

              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text("Erorr");
                }

                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text("${snapshot.data![i]["title"]}"),
                        subtitle: Text("${snapshot.data![i]["body"]}"),
                      );
                    });
              }




            return Text("");
          }));
  }
}








