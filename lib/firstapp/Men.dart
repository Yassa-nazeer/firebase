import 'package:flutter/material.dart';

class men extends StatefulWidget {
  final mans;
  const men({super.key, this.mans});

  @override
  State<men> createState() => _menState();
}

class _menState extends State<men> {
  @override
  Widget build(BuildContext context) {
    List Men=
        [
         { "imagename":"images/1.jpeg"},
         { "imagename":"images/2.jpeg"},
         { "imagename":"images/3.jpeg"},
         { "imagename":"images/4.jpeg"},
         { "imagename":"images/5.jpeg"},
         { "imagename":"images/6.jpeg"},
         { "imagename":"images/7.jpeg"},
         { "imagename":"images/8.jpeg"},

        ];
    return Scaffold(
      appBar: AppBar(title: Text("Shoes Men"),),
      backgroundColor: Colors.white,
     body:GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 50),
    //physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: Men.length,
    itemBuilder: ( context,  i) {return
    Card(
      child: Expanded(
      child: Container(
      color: Colors.grey[100],
      width:300,
      height: 350,

      padding:EdgeInsets.only(bottom: 20),
      child: Image.asset(Men[i]["imagename"],width: 200,fit: BoxFit.contain
      ,height: 300,)),
      ),
    );
    }
     ,));

  }
}
