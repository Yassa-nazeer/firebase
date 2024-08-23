import 'package:flutter/material.dart';

class women extends StatefulWidget {
  final womens;
  const women({super.key, this.womens});

  @override
  State<women> createState() => _womenState();
}

class _womenState extends State<women> {
  @override
  Widget build(BuildContext context) {
    List Women=
    [
      { "imagename":"images/9.jpeg"},
      { "imagename":"images/10.jpeg"},
      { "imagename":"images/11.jpeg"},
      { "imagename":"images/12.jpeg"},
      { "imagename":"images/13.jpeg"},
      { "imagename":"images/14.jpeg"},
      { "imagename":"images/15.jpeg"},
      { "imagename":"images/16.jpeg"},

    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("women shoes"),
      ),
        backgroundColor: Colors.white,
        body:GridView.builder(

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 50),
          //physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: Women.length,
          itemBuilder: ( context,  i) {return
            Card(
              child: Expanded(
                child: Container(
                    color: Colors.grey[100],
                    width:300,
                    height: 350,

                    padding:EdgeInsets.only(bottom: 20),
                    child: Image.asset(Women[i]["imagename"],width: 200,fit: BoxFit.contain
                      ,height: 300,)),
              ),
            );
          }
          ,));
  }
}
