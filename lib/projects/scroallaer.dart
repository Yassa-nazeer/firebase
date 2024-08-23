import 'package:flutter/material.dart';

class scrol extends StatefulWidget {
  const scrol({super.key});

  @override
  State<scrol> createState() => _scrolState();
}

class _scrolState extends State<scrol> {
  ScrollController sccontroller=ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView
        (
        controller:sccontroller ,
        children: [
          MaterialButton(onPressed: (){
            sccontroller!.jumpTo(9433);
          },child: Text("go to buttom"),color: Colors.cyan,),
          ...List.generate(100, (index)=>Container(
              height: 100
              ,alignment: Alignment.center,
              child: Text("$index",style: TextStyle(fontSize: 20),)

              ,color:index.isEven?Colors.orange:Colors.red)
            ,
          )
          ,MaterialButton(onPressed: (){
            sccontroller?.jumpTo(0);
          },child: Text("go to top"),color: Colors.cyan,),

        ],
      ),
    );
  }
}
