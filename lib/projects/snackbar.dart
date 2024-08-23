import 'package:flutter/material.dart';

class snack extends StatefulWidget {
  const snack({super.key});

  @override
  State<snack> createState() => _snackState();
}

class _snackState extends State<snack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
        color: Colors.black,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              action: SnackBarAction(onPressed: () {
                print("Done");
              }, label: "Ok",),
              duration: Duration(days: 3),
              content: Text("Copy Done")));
        }
      ),
    )
    );
  }
}

      //   showBottomSheet
      //   scaffoldkey.currentState!.showBottomSheet((context)=>Container(
      //
      //     child: Column
      //       (
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //
      //         Text("Choose imag",style: TextStyle(fontSize: 20,),),
      //         Text("From Galary",style: TextStyle(fontSize: 20,color: Colors.white),),
      //         Text("From Camera",style: TextStyle(fontSize: 20,color: Colors.white),),
      //       ],
      //     ),
      //     height: 100,
      //     width: 1000,
      //     color: Colors.red,
      //   ));
      //
      // },
      // child:  Text("Copy",style: TextStyle(color: Colors.lightBlueAccent),),
      //
      // ,


