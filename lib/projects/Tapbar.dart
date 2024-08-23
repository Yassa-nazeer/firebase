import 'package:flutter/material.dart';

class tapbar extends StatefulWidget {
  const tapbar({super.key});

  @override
  State<tapbar> createState() => _tapbarState();
}

class _tapbarState extends State<tapbar> with SingleTickerProviderStateMixin{
  TabController ?tabcontroller;
  void initState() {
    tabcontroller = TabController(length: 3, vsync: this);
    super.initState();}
  @override
  Widget build(BuildContext context) {



   return Scaffold(
          appBar: AppBar(bottom:
          TabBar(
              controller: tabcontroller,
              indicatorColor: Colors.cyan,
              indicatorWeight: 4,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.blue,
              unselectedLabelStyle: TextStyle(fontSize: 12),
              labelStyle: TextStyle(fontSize: 18),
              tabs:
              [
                Tab(
      //  iconMargin:EdgeInsets.all(10),
                  icon: Icon(Icons.keyboard), text: ("Keyboard"),),
                Tab(icon: Icon(Icons.person), text: ("contact"),),
                Tab(icon: Icon(Icons.phone), text: ("Phone"),),
              ]),
            title: Text("Tabbar", style: TextStyle(fontSize: 30),)
            , centerTitle: true,
          ),
          body: Container
            (
            padding: EdgeInsets.all(10),
            child: TabBarView(
              controller: tabcontroller,
              children: [
                Column(children: [
                  Text("01201026562"),
                  Text("01201026562"),
                  Text("01201026562"),
                  Text("01201026562"),
                  Text("01201026562"),
                  Text("01201026562"),
                  Text("01201026562"),
                  Text("01201026562"),
                  Text("01201026562"),
                  Text("01201026562"),
                  Text("01201026562"),

                ],),
                Column(
                  children: [
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                    Text("Yassa"),
                  ],
                ),
                Column(
                  children: [
                    MaterialButton(onPressed: () {
                      tabcontroller!.animateTo(1);
                    },
                      child: Text("Go To Contact"),),
                    MaterialButton(onPressed: () {
                      tabcontroller!.animateTo(0);
                    },
                      child: Text("Go To Keboard"),)
                  ],
                ),
              ],
            ),


          )
      );


  }
}
