import 'package:firstap/Navigator.dart';
import 'package:firstap/project.dart';
import 'package:firstap/projectpage2.dart';
import 'package:firstap/women.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Men.dart';
import 'Navigator5.dart';
class Project extends StatelessWidget {
  Project({super.key});
  @override
  Widget build(BuildContext context) {
    List categris=[
      {"imagename":"images/men.jpeg","name":"Men"},
      {"imagename":"images/women.jpeg","name":"Women"},
      {"imagename":"images/elc.jpeg","name":"Electrical"},
      {"imagename":"images/hobb.jpeg","name":"Hobbies"},
      {"imagename":"images/clo.jpeg","name":"Clothes"},
    ];
    List bestsil=[
      {"image":"images/gg.jpeg",
        "name":"Logitech G 533",
        "descrption":"PC Gaming Headset jhlv",
        "price":"\$ 356"},
      {"image":"images/watch.jpeg",
        "name":"Apple Watch S5",
        "descrption":"Pc Gaming Heads",
        "price":"\$ 400"},
      {"image":"images/phone.jpeg"
        ,"name":"iphone 15 Pro"
        ,"descrption":"Its beatful phone "
        ,"price":"\$ 5000"},
      {"image":"images/men.jpeg"
        ,"name":"Sportive shoes"
        ,"descrption":"Its beatful Shose "
        ,"price":"\$ 50"},

    ];
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        backgroundColor: Colors.grey[20], items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
      ],
        selectedFontSize: 20,
        unselectedFontSize: 16,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
      ),


backgroundColor: Colors.white,
      body: Container(

        padding: EdgeInsets.all(25),
        child: ListView(
        children: [
          ////////////////////////////////////////////////////////
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Search"

                      ,border: InputBorder.none,
                      filled: true
                      ,
                  fillColor:Colors.grey[250],
                prefixIcon: Icon(Icons.search,size: 32,color: Colors.blue,)
                  ),

                  ),
              ),

              Padding(
                padding:EdgeInsets.only(left:15),
                child: Icon(Icons.menu,size: 40,),
              )

            ],
          ),
          ///////////////////////////////////////////////////////////
          Container(
              padding: EdgeInsets.only(top: 30),
              child: Text("Categories",style: TextStyle(fontSize:23,fontWeight: FontWeight.bold),)),

//////////////////////////////////////////////////////////

          Expanded(
            child: Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                itemCount: categris.length,
                itemBuilder: ( context,  i) {return
                  InkWell(
                    onTap: (){
                      if(categris[i]["imagename"]=="images/men.jpeg")
                     { Navigator.of(context).push(MaterialPageRoute(builder: (context) =>men()));}
                      else if (categris[i]["imagename"]=="images/women.jpeg"){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>women()));

                      };
                       },
                  child:
                  Container(

                  padding: EdgeInsets.only(right: 28),
                  child: Column(
                    children: [

                      Image.asset(categris[i]["imagename"],width: 70,height: 70,alignment: Alignment.center,)
                      , Text(categris[i]["name"])
                    ],
                  ),
                )); },

                      ),
            ),
          ),
        ///////////////////////////////////////////////////////
        Container(
          padding: EdgeInsets.only(top: 40,bottom: 20),
            child:

        Text("Best Selling",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
        

       ////////////////////////////////////////////////////////////////////////
    GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 50),
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: bestsil.length,
    itemBuilder: ( context,  i) {return
             InkWell(
               onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>iteamdeatils(data: bestsil[i],)));},
               child: Card(

                 color: Colors.white,
                          child:   Column(

                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [

                                 Expanded(
                                   child: Container(
                                    color: Colors.grey[100],
                                     width:300,
                                       height: 350,

                                       padding:EdgeInsets.only(bottom: 20),
                                       child: Image.asset(bestsil[i]["image"],width: 200,fit: BoxFit.contain
                                         ,height: 300,)),
                                 ),
                                 Text(bestsil[i]["name"],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                 Container(height: 2,)
                                 ,Text(bestsil[i]["descrption"],style:TextStyle(fontSize: 12),),
                                 Container(height: 7,),
                                 Text(bestsil[i]["price"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.orange),)
                               ],
                             ),



                   ),
             );},

         ),

       ]),
      ),
    );





  }
}

