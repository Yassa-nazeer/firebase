import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstap/firebase/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'Register.dart';

class firebase extends StatefulWidget {

  const firebase({super.key});

  @override
  State<firebase> createState() => _firebaseState();
}

class _firebaseState extends State<firebase> {
  final FirebaseAuth auth=FirebaseAuth.instance;
  TextEditingController emaillog=TextEditingController();
  TextEditingController passwordlog=TextEditingController();
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    List imagename = [
      {
        "name": "images/apple.jpeg",
      },
      {
        "name": "images/google.jpeg",
      },
      {
        "name": "images/facebook.jpeg",
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   actions: [
      //     Container(
      //       padding: EdgeInsets.only(right: 20),
      //       child: MaterialButton(
      //         onPressed: () {
      //           Navigator.of(context)
      //               .push(MaterialPageRoute(builder: (context) => reg()));
      //         },
      //         child: Text("Register"),
      //         shape: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(40),
      //             borderSide: BorderSide.none),
      //         color: Colors.blue,
      //         padding: EdgeInsets.only(right: 10),
      //       ),
      //     )
      //   ],
      // ),
      //appBar: AppBar(title: Text("Hello"),),
      body: ListView(
        padding: EdgeInsets.all(30),
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 70,
          ),
          Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(12),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Image.asset(
                    fit: BoxFit.cover,
                    "images/insta.jpeg",
                    width: 50,
                    height: 50,
                  )),
            ],
          ),
          Container(
            height: 20,
          ),
          Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Container(
            height: 15,
          ),
          Text(
            "login to comtain in the app",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          Container(
            height: 35,
          ),
          Text(
            "Email",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Container(
            height: 18,
          ),
          textfeild(hinttext:"Enter Your Email", mycontrollrt: emaillog,),
          Container(
            height: 18,
          ),
          Text(
            "Password",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Container(
            height: 18,
          ),
          textfeildpassword(hinttext: 'Enter Password',mycontrooler: passwordlog,),
          Text(
            "                                               Forget Password?",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            width: 50,
            child: MaterialButton(
              onPressed:(){
              auth.signInWithEmailAndPassword(email: emaillog.text, password: passwordlog.text).then((val)
              {print(val.toString());});

                }

                 , child:  Text("Login"),
              color: Colors.blue[700],
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            padding: EdgeInsets.only(bottom: 20),
          ),
          Text(
            "                                  Or Login With",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 30,
          ),
          GridView.builder(

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 50),
              //  physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: imagename.length,
              itemBuilder: (context, i) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 20,
                  //width: 20,
                  child: MaterialButton(
                    onPressed: () {

                    },
                    child: Image.asset(
                      fit: BoxFit.cover,
                      imagename[i]["name"],
                      width: 40,
                      height: 40,
                    ),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)
                    ,borderSide: BorderSide.none),
                   // color: Colors.white,
                  ),
                );
              }),
          Row(children: [
            Text("Dont HAve Account ? ",style: TextStyle(fontSize: 18),)

            , MaterialButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => reg()));
      },
      child: Text("Register",style: TextStyle(fontSize: 18,color: Colors.blue),),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none),

      padding: EdgeInsets.only(right: 10),
    ),

          ],)
        ],
      ),
    );
  }
}
class textfeild extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontrollrt;
  const textfeild({super.key, required this.hinttext, required this.mycontrollrt});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontrollrt,
      decoration: InputDecoration(
        hintText: hinttext,
        fillColor: Colors.grey[250],
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.grey)),
        filled: true,
      ),

    );
  }
}

class textfeildpassword extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontrooler;
  const textfeildpassword({super.key, required this.hinttext, required this.mycontrooler});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:mycontrooler ,
      obscureText: true,
      decoration: InputDecoration(
        hintText: hinttext,
        fillColor: Colors.grey[250],
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.grey)),
        filled: true,
      ),
    );
  }
}
