import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),



           drawer: Drawer(
        child:Container(

          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(width:80
                      ,height: 80,

                      child: ClipRRect
                        (borderRadius: BorderRadius.circular(70),
                        child:
                        Image.asset("images/6.jpeg",fit: BoxFit.cover,)
                        ,)

                  ),
                  Expanded(child:
                  ListTile(
                    title: Text("Lion"),
                    subtitle: Text("yasoo"),
                  )
                  )
                ],

              ),
              ListTile(
                title: Text("Acount"),
                leading: Icon(Icons.account_balance_outlined),
              ),
              ListTile(
                title: Text("Order"),
                leading: Icon(Icons.check_box),
              ),
              ListTile(
                title: Text("About us"),
                leading: Icon(Icons.help),
              ),
              ListTile(
                title: Text("contact"),
                leading: Icon(Icons.phone_android_outlined),
              )
              , ListTile(
                title: Text("settings"),
                leading: Icon(Icons.settings),
              )

              // Center(
              //     child:  MaterialButton(color:Colors.red ,
              //       onPressed: () {
              //         scaffoldkey.currentState!.openEndDrawer();
              //       }
              //       ,  child: Text("Open"), )
              // )
            ],

          ),


        )
           ),
      body:
      Container()


          );





  }
}
