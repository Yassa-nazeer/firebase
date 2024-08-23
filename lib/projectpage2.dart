import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iteamdeatils extends StatefulWidget {
  final data;
  const iteamdeatils({super.key, this.data});

  @override
  State<iteamdeatils> createState() => _iteamdeatilsState();
}

class _iteamdeatilsState extends State<iteamdeatils> {
  @override
  Widget build(BuildContext context) {
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
      endDrawer: Drawer(),
      appBar: AppBar(title:
      const Row(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shop_outlined,color: Colors.black,),
          Text("  Ecommerce  "),Text("Yassa",style: TextStyle(color: Colors.orange),)],)
        ,backgroundColor: Colors.grey[200],elevation: 0.0,iconTheme: IconThemeData(color: Colors.grey[800]),
      ),

      body: ListView(
        children: [
         Image.asset(widget.data['image'])
          ,Container(
            margin: EdgeInsets.only(bottom: 10),

              child:Text(widget.data['name'],textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),))
          ,Container(
              margin: EdgeInsets.only(bottom: 15),
              child:Text(widget.data['descrption'],textAlign: TextAlign.center,style: TextStyle(fontSize: 10,),))
          ,Container(
            margin: EdgeInsets.only(bottom: 18),

              child:Text(widget.data['price'],textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange),))
           ,Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Colors :",style: TextStyle(color: Colors.black,fontSize: 18),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                width: 20,height: 20,decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.grey[500]),)
             , Text("Gray",style: TextStyle(color: Colors.grey),),
              Container(

                margin: EdgeInsets.symmetric(horizontal: 16),

                width: 20,height: 20,decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange),
                  borderRadius: BorderRadius.circular(40),color: Colors.black),)
              , Text("Black"),
            ],
          )
        ,Container(

            padding: EdgeInsets.symmetric(vertical: 25),
          child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Size    : ",style: TextStyle(fontSize: 20)),
              Text("38",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
              ,Text("   45   32   52",style: TextStyle(fontSize: 20,color: Colors.grey),)
            ],
          ),
        ),
        Container(
        margin: EdgeInsets.symmetric(horizontal: 105),
          height: 45,
          child: MaterialButton(
            color: Colors.black,
            textColor:Colors.white ,
            onPressed: (){},child: Text("Add To Cart"),),
        )
        ],
      ),
    );
  }
}
