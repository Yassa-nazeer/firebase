import 'package:firstap/project.dart';
import 'package:flutter/material.dart';

class after extends StatefulWidget {
  const after({super.key});

  @override
  State<after> createState() => _afterState();
}

class _afterState extends State<after> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            showSearch(context: context, delegate: Search());
          }, icon: Icon(Icons.search))
        ],
        title: Text("Hello"),),
      body:ListView(
        children: const [
        ],
      ) ,
    );
  }
}

class Search extends SearchDelegate
{
  List names=
      [
        "yassa",
        "mohamed",
        "mahmoud",
        "youssef",
        "yasser",
        "thomas",
        "wael",
        "gergs",
      ];
  List ?filter;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
        query="";
      }, icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return
      IconButton(onPressed: (){
        close(context, null);
      }
          ,icon: Icon(Icons.arrow_back));

  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Results: $filter");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if(query==""){
      return ListView.builder(
          itemCount: names.length,
          itemBuilder: (context,i)
          {
            return InkWell(
              onTap: (){showResults(context);},
              child: Card(child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(names[i],style: TextStyle(fontSize: 18),),
              )),
            );
          }

      );
    }

   else{
     filter=names.where((element)=> element.contains(query)).toList();
      return ListView.builder(
          itemCount: filter!.length,
          itemBuilder: (context,i)
          {
            return InkWell(
              onTap: (){showResults(context);},
              child: Card(child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(filter![i],style: TextStyle(fontSize: 18),),
              )),
            );
          }

      );
    }
  }

}