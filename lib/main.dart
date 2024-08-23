import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firstap/Navigator.dart';
import 'package:firstap/Search.dart';
import 'package:firstap/projects/Http%20Api.dart';
import 'package:firstap/projects/Navigator.dart';
import 'package:firstap/projects/packageaesomedialog.dart';
import 'package:firstap/projects/popmenu.dart';
import 'package:firstap/projects/scroallaer.dart';
import 'package:firstap/projects/shareRefrence.dart';
import 'package:firstap/projects/snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'firebase/login.dart';
import 'firstapp/project.dart';
import 'initestate&dispos.dart';
import 'Futurebuild.dart';
import 'Navigator5.dart';
import 'droplist.dart';
import 'Showdialog.dart';
import 'locationpackage.dart';

void main()
async {

  // void main() async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   await Firebase.initializeApp();
  //   runApp(MyApp());
  // }


  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options:const FirebaseOptions(
              apiKey: "AIzaSyD5vyGJ5_zcmuGW_hlJmvt2ByIi8-FWXwA",
              appId: "1:46044194963:android:347fe8f4ec9ddc3c870566",
              messagingSenderId: "46044194963",
              projectId: "fir-course-57ec1"))
      : await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  State<MyApp> createState() => _MyAppstate();
}

class _MyAppstate extends State<MyApp> {

  @override
  void initState() {

    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('==================================User is currently signed out!');
      } else {
        print('====================================================User is signed in!');
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:FirebaseAuth.instance.currentUser==null? firebase():about(),
      routes: {
        "project":(context)=>about(),
        "log":(context)=>firebase(),
      },
      // //theme: ThemeData(
      //   // fontFamily: "Merriweather",
      //   // appBarTheme: AppBarTheme(backgroundColor: Colors.red),
      //   textTheme: TextTheme(
      //     bodySmall: TextStyle(color: Colors.blue, fontSize: 14),
      //     bodyMedium: TextStyle(color: Colors.black, fontSize: 18),
      //     bodyLarge: TextStyle(
      //         color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
      //   ),
      //  ),
      //
    );
  }
}

//example
// bottomNavigationBar: BottomNavigationBar(
//   onTap: (val){
//     setState(() {
//       selectedindex=val;
//     });
//
//   },
//   currentIndex: selectedindex,
//   selectedItemColor: Colors.white,
//   unselectedItemColor: Colors.blue,
//   selectedFontSize: 20,
//   unselectedFontSize: 14
//  , selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
//   backgroundColor:Colors.red
//     ,items: [
//   BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
//   BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting")
// ],),
//List<Widget> listwidget=[
//  Container
//
//         (
//       padding: EdgeInsets.all(20 ),
//       child:Column(
//
//
//     children: [
//     Container(
//       margin: EdgeInsets.only(bottom: 5.0),
//         width: 500,
//         height: 50,
//         decoration: BoxDecoration(
//             color: Color(0xffe6f0fa),
//             border:Border.all(
//                 color: Colors.black,
//                 width: 2
//             ,)),
//
//         padding: EdgeInsets.all(10),
//         child:Text(
//
//         "Strawberry Pavlova"
//         ,textAlign: TextAlign.center,
//          style: TextStyle(fontSize: 20,),
//
//         )),
//
//       Container(
//           margin: EdgeInsets.only(bottom: 5.0),
//           width: 500,
//           height: 150,
//           decoration: BoxDecoration(
//               color: Color(0xffe6f0fa),
//               border:Border.all(
//                 color: Colors.black,
//                 width: 2
//                 ,)),
//
//           padding: EdgeInsets.all(10),
//           child:Text(
//
//             "Praboa la vjvj mmemwmfwm based dnnnv s sinv js fsffpifwjbufwwbf ff dedssd djjdd  jfssffhfj sfisj nnan after the russian balllieb anna cruial and sial"
//             ,textAlign: TextAlign.center,
//
//           )),
//       Container(
//           width: 500,
//           height: 50,
//           decoration: BoxDecoration(
//               color: Color(0xffe6f0fa),
//               border:Border.all(
//                 color: Colors.black,
//                 width: 2
//                 ,)),
//
//           padding: EdgeInsets.all(10),
//           child:Row
//             (
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Row(
//
//                 children: [const
//
//                   Icon(Icons.star),
//                   Icon(Icons.star),
//                   Icon(Icons.star),
//                   Icon(Icons.star),
//                   Icon(Icons.star),
//                 ],
//               )
//              , Text("170 Review"
//               ,style:TextStyle(fontSize: 20,),
//               )
//             ],
//           )
//
//           ),
//       Container(
//         margin: EdgeInsets.only(top: 4),
//           width: 500,
//           height: 100,
//           decoration: BoxDecoration(
//               color: Color(0xffe6f0fa),
//               border:Border.all(
//                 color: Colors.black,
//                 width: 2
//                 ,)),
//
//           padding: EdgeInsets.all(10),
//           child:Row
//             (
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Column(
//
//                 children: [const
//                 Icon(Icons.person,color: Colors.green,),
//                 Text("PREP"),
//                   Text("25 min")
//                 ],
//               ),
//               Column(
//
//                 children: [const
//                   Icon(Icons.alarm,color: Colors.green,),
//                   Text("COOK"),
//                   Text("1 hr")
//                 ],
//               ),
//               Column(
//
//                 children: [const
//                 Icon(Icons.restaurant,color: Colors.green,),
//     Text("FEEDS"),
//                   Text("4:6")
//
//                 ],
//               )
//              ,
//
//             ],
//           )
//
//       ),
//
//     ]
//   )
//
//  ),
//   const Column(children:const [
//     ListTile(
//       subtitle: Text("Switch"),
//       trailing: Icon(Icons.compare_arrows),
//     title: Text("Acount"),
//     leading: Icon(Icons.account_balance_outlined),
//   ),
//     ListTile(
//       title: Text("Order"),
//       leading: Icon(Icons.check_box),
//     ),
//     ListTile(
//       title: Text("About us"),
//       leading: Icon(Icons.help),
//     ),
//     ListTile(
//       title: Text("contact"),
//       leading: Icon(Icons.phone_android_outlined),
//     )
//     , ListTile(
//       title: Text("settings"),
//       leading: Icon(Icons.settings),
//     )],)
// ,];

//textfield
//TextField(
//    onChanged: (val){textval=val;},
//  )
//  ,MaterialButton(color:Colors.red ,onPressed: () {print(textval);},child: Text("print"),
//  )
//  TextField(
//    controller: name),
//
//    maxLines: 7,
//    minLines: 1,
//    maxLength: 10,
//    keyboardType: TextInputType.emailAddress,
//
//
// TextField(
//   enabled: false,
//   decoration: InputDecoration(icon: Icon(Icons.person),iconColor: Colors.red
//       ,
//     border: OutlineInputBorder(),
//
//     focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(50),borderSide:BorderSide(color: Colors.red) ),
//     enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan,width: 4))
//   ),
// )
//  TextField(
//
//    decoration: InputDecoration(fillColor: Colors.cyan,filled: true,labelText: "Name"),
//
//  ),
//  TextField(
//    decoration: InputDecoration(icon:Icon(Icons.person)),
//  ),TextField(
//    decoration: InputDecoration(hintText: "gmail"),
//  )
//  ,TextField(
//    decoration: InputDecoration(
//      prefixIcon: Icon(Icons.person),
//      prefixIconColor: Colors.red,
//
//    ),
//  )

//stack
// Stack(
// alignment: Alignment.center,
//
// children: [
// Container(width: 300,height: 300,color: Colors.red,),
// Container(width: 200,height: 200,color: Colors.white,),
// Container(width: 100,height: 100,color: Colors.blue,),
// Positioned(child: Text("Yassa"),left:120,right: 0,top: 150,bottom: 100,)
// ],
// )

// class MyApp extends StatelessWidget
// {
//   List users=[
//   {
//     "name":"Yassa"
//   ,"age":16,
//   "last":"Nazeer"
//   },
//     {
//       "name":"tomas"
//       ,"age":14,
//       "last":"sabry"
//     },
//     {
//       "name":"andrew"
//       ,"age":18,
//       "last":"nabil"
//     }
//     ,{
//       "name":"andrew"
//       ,"age":18,
//       "last":"nabil"
//     }
//   ];
//   int x=1;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp
//       (
//       home: Scaffold(
//         // floatingActionButton: FloatingActionButton(
//         //   child: Icon(Icons.add),
//         //   onPressed: (){print("Yassa");},),
//         appBar: AppBar(title: const Text(""),
//
//         ),
//         body:Container
//           (
//           padding: EdgeInsets.all(10),
//           child: Column(
//
//             children: [
//
//               IconButton(onPressed: (){x++;}, icon:Icon (Icons.add)),
//
//               IconButton(onPressed: (){x--;}, icon:Icon (Icons.remove))
//               ,Text("countet $x")
//             //   )
//             ],
//           )
//         )
//
//
//       ),
//     );
//     throw UnimplementedError();
//   }
//
//
// }
// IconButton(onPressed: (){print("Yassa");}, icon: Icon(Icons.person))

//   MaterialButton(
// color: Colors.cyan,textColor: Colors.black,
// // padding: EdgeInsets.all( 100),
//     padding: EdgeInsets.symmetric(horizontal: 10,vertical: 50),
// onLongPress: (){print("Yassa");}
// ,onPressed: (){print("YASSA NAZEE");},
//     child: Icon(Icons.account_box_sharp),

//example
// Container
//
//       (
//     padding: EdgeInsets.all(20 ),
//     child:Column(
//
//
//   children: [
//   Container(
//     margin: EdgeInsets.only(bottom: 5.0),
//       width: 500,
//       height: 50,
//       decoration: BoxDecoration(
//           color: Color(0xffe6f0fa),
//           border:Border.all(
//               color: Colors.black,
//               width: 2
//           ,)),
//
//       padding: EdgeInsets.all(10),
//       child:Text(
//
//       "Strawberry Pavlova"
//       ,textAlign: TextAlign.center,
//        style: TextStyle(fontSize: 20,),
//
//       )),
//
//     Container(
//         margin: EdgeInsets.only(bottom: 5.0),
//         width: 500,
//         height: 150,
//         decoration: BoxDecoration(
//             color: Color(0xffe6f0fa),
//             border:Border.all(
//               color: Colors.black,
//               width: 2
//               ,)),
//
//         padding: EdgeInsets.all(10),
//         child:Text(
//
//           "Praboa la vjvj mmemwmfwm based dnnnv ssinv js fsffpifwjbufwwbf ff dedssd djjdd  jfssffhfj sfisj nnan after the russian balllieb anna cruial and sial"
//           ,textAlign: TextAlign.center,
//
//         )),
//     Container(
//         width: 500,
//         height: 50,
//         decoration: BoxDecoration(
//             color: Color(0xffe6f0fa),
//             border:Border.all(
//               color: Colors.black,
//               width: 2
//               ,)),
//
//         padding: EdgeInsets.all(10),
//         child:Row
//           (
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Row(
//
//               children: [const
//
//                 Icon(Icons.star),
//                 Icon(Icons.star),
//                 Icon(Icons.star),
//                 Icon(Icons.star),
//                 Icon(Icons.star),
//               ],
//             )
//            , Text("170 Review"
//             ,style:TextStyle(fontSize: 20,),
//             )
//           ],
//         )
//
//         ),
//     Container(
//       margin: EdgeInsets.only(top: 4),
//         width: 500,
//         height: 100,
//         decoration: BoxDecoration(
//             color: Color(0xffe6f0fa),
//             border:Border.all(
//               color: Colors.black,
//               width: 2
//               ,)),
//
//         padding: EdgeInsets.all(10),
//         child:Row
//           (
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Column(
//
//               children: [const
//               Icon(Icons.person,color: Colors.green,),
//               Text("PREP"),
//                 Text("25 min")
//               ],
//             ),
//             Column(
//
//               children: [const
//                 Icon(Icons.alarm,color: Colors.green,),
//                 Text("COOK"),
//                 Text("1 hr")
//               ],
//             ),
//             Column(
//
//               children: [const
//               Icon(Icons.restaurant,color: Colors.green,),
//   Text("FEEDS"),
//                 Text("4:6")
//
//               ],
//             )
//            ,
//
//           ],
//         )
//
//     ),
//
//   ]
// )
//
// ),
//Responsive and Expand
// Row
//   (
//     children: [
//       Expanded(
//           flex: 4,child: Container(height: 100,color: Colors.blue,))
//       , Expanded(
//           flex:3,child:Container(height: 100,color: Colors.orange,)),
//       Expanded(child:Container(height: 100,color: Colors.red,))
//     ]
// )

// IconButton
//     (iconSize: 100,
//     onPressed: (){print("yassa");}, icon: Icon(Icons.star))

//listview and cards
// child: ListView
//             (
//             children: [
//               Card(child: ListTile(
//                 isThreeLine: true,
//                 leading: Text("1"),
//                 title: Text("Yassa"),
//                 subtitle: Text("age:20"),
//                 trailing: Text("2022"),
//               )
//
//               ),
//       Card(child: ListTile(
//         leading: Text("2"),
//         isThreeLine: true,
//         title: Text("Yassa"),
//         subtitle: Text("age:20"),
//         trailing: Text("2022"),
//       ),
//       )
// , Card(child: ListTile(
//                 isThreeLine: true,
//       leading: Text("3"),
//       title: Text("Yassa"),
//       subtitle: Text("age:20"),
//       trailing: Text("2022"),
//     ))
//             ],
//           ),

// child:GridView.count(
//   scrollDirection: Axis.vertical,
//   reverse: false,
//     childAspectRatio: 1.5,
//     crossAxisCount: 4,
//     mainAxisSpacing: 10,
//     crossAxisSpacing:10,
// children: [
//   Container(color:Colors.cyan,child: Text("Yass"),),
//   Container(color:Colors.red,child: Text("Yass"),),
//   Container(color:Colors.blue,child: Text("Yass"),),
//   Container(color:Colors.cyan,child: Text("Yass"),),
//   Container(color:Colors.red,child: Text("Yass"),),
//   Container(color:Colors.blue,child: Text("Yass"),),
//   Container(color:Colors.cyan,child: Text("Yass"),),
//   Container(color:Colors.red,child: Text("Yass"),),
//   Container(color:Colors.blue,child: Text("Yass"),),
//   Container(color:Colors.cyan,child: Text("Yass"),),
//   Container(color:Colors.red,child: Text("Yass"),),
//   Container(color:Colors.cyan,child: Text("Yass"),),
//   Container(color:Colors.red,child: Text("Yass"),),
//   Container(color:Colors.blue,child: Text("Yass"),),
//   Container(color:Colors.cyan,child: Text("Yass"),),
//   Container(color:Colors.red,child: Text("Yass"),),
//   Container(color:Colors.blue,child: Text("Yass"),),
//   Container(color:Colors.cyan,child: Text("Yass"),),
//   Container(color:Colors.red,child: Text("Yass"),),
//   Container(color:Colors.blue,child: Text("Yass"),),
//   Container(color:Colors.cyan,child: Text("Yass"),),
//   Container(color:Colors.red,child: Text("Yass"),),
//   Container(color:Colors.blue,child: Text("yassssssssssssss"),)
// ],

// )

// GridView.builder(
//   gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing:10,crossAxisSpacing: 10,),
//               itemCount: users.length,
//               itemBuilder:(context,i)
//               {
//                return Container(
//                    color:i.isEven?Colors.red:Colors.blue,
//                    height: 100,
//
//                    child:Text(
//                      users[i]["name"],style: TextStyle(fontSize: 16,color: Colors.black, ),)
//
//
//                    ) ;
//               },
//           ),

//         ListView.separated(
//           shrinkWrap: true,
//           separatorBuilder: (context,i)
//             {
//               return Divider(height: 50,color: Colors.cyan,thickness: 2,);
//             },
//           itemCount:users.length ,
//             itemBuilder:(context,i)
//             {
//              return Container(
//                  color:i.isEven?Colors.red:Colors.blue,
//                  height: 100,
//
//                  child:Text(
//                    textAlign: TextAlign.center,
//                    users[i]["name"],style: TextStyle(fontSize: 16,color: Colors.black, ),)
//
//
//                  ) ;
//             }
//         ),
//       ),
//     ],
//   )
// ),

//   SingleChildScrollView(
//     scrollDirection: Axis.vertical,
//     child: Column(
//      children: [
//        Container(width: 100,height: 100,color: Colors.blue,)
//        ,Container(width: 100,height: 100,color: Colors.orange,),
//        Container(width: 100,height: 100,color: Colors.red,)
//        , Container(width: 100,height: 100,color: Colors.blue,)
//        ,Container(width: 100,height: 100,color: Colors.orange,),
//        Container(width: 100,height: 100,color: Colors.red,),
//        Container(width: 100,height: 100,color: Colors.blue,)
//        ,Container(width: 100,height: 100,color: Colors.orange,),
//        Container(width: 100,height: 100,color: Colors.red,)
//        , Container(width: 100,height: 100,color: Colors.blue,)
//        ,Container(width: 100,height: 100,color: Colors.orange,),
//        Container(width: 100,height: 100,color: Colors.red,)
//      ],
//     ),
//   ),

//rows and coulmne
//   mainAxisAlignment: MainAxisAlignment.end,
//   crossAxisAlignment: CrossAxisAlignment.end,
//   children:[
//
//     // Text("Yassa"),
//     Container(width: 100,height: 100,color: Colors.green,),
//     // Image.asset("images/yy.jpeg")
//      Container(width: 100,height: 400,color: Colors.blue,)
//     ,Container(width: 100,height: 100,color: Colors.orange,),
//     Container(width: 100,height: 100,color: Colors.red,)
//
//
//
// ]
//

//images
// Image.
// asset(
//   fit: BoxFit.cover,
//   :
// ,width: 400,height:400,),
//network("https://photographylife.com/wp-content/uploads/2014/09/Nikon-D750-Image-Samples-2.jpg")
