import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstap/firebase/home.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class reg extends StatefulWidget {
  const reg({super.key});

  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  late final Future<UserCredential> credential;
  TextEditingController username = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conpassword = TextEditingController();
 bool isLoading=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        scrollDirection: Axis.vertical,
        children: [
        Container(
        height: 0,
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
        "Register",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      Container(
        height: 15,
      ),
      Text(
        "Register to comtain in the app",
        style: TextStyle(fontSize: 18, color: Colors.grey),
      ),
      Container(
        height: 35,
      ),
      Text(
        "Username",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      Container(
        height: 18,
      ),
      textfeild(
        hinttext: 'Enter Your Name',
        mycontrollrt: username,
      ),
      Container(
        height: 10,
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
      textfeild(
        hinttext: 'Enter Your Email',
        mycontrollrt: emailController,
      ),
      Container(
        height: 10,
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
      textfeildpassword(
        hinttext: 'Enter Password',
        mycontrooler: passwordController,
      ),
      Container(
        height: 10,
      ),
      Text(
        "Confirm Password",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      Container(
        height: 18,
      ),
      textfeildpassword(
        hinttext: 'Enter Confirm Password',
        mycontrooler: conpassword,
      ),
      Container(
        width: 50,
        padding: EdgeInsets.only(top: 30),
        child: MaterialButton(
            onPressed: ()  {
    signUp(emailController,passwordController,context);
              }
              // try {
              //   final credential = await FirebaseAuth.instance
              //       .createUserWithEmailAndPassword(
              //     email: email.text,
              //     password: password.text,
              //   );
              //
              //
              //   Navigator.of(context).pushReplacementNamed("project");
              // } on FirebaseAuthException catch (e) {
              //   String message;
              //   if (e.code == 'weak-password') {
              //     message = 'The password provided is too weak.';
              //   } else if (e.code == 'email-already-in-use') {
              //     message = 'The account already exists for that email.';
              //   } else {
              //     message = 'An error occurred. Please try again.';
              //   }
              //
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     SnackBar(content: Text(message)),
              //   );
              // } catch (e) {
              //   print(e);
              //   ScaffoldMessenger
              //       .of(context)
              //       .showSnackBar(
              //       SnackBar(content: Text('An unexpected error occurred.')));
              //
              //       }



          ,  child: Text("Register"),
        color: Colors.blue[700],
        height: 50,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
      ),
    ),
    Container(
    height: 15,
    ),
    Row(
    children: [
    Text(
    " Have Account ? ",
    style: TextStyle(fontSize: 18),
    ),
    MaterialButton(
    onPressed: () {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => const firebase()));
    },
    shape: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40),
    borderSide: BorderSide.none),
    padding: EdgeInsets.only(right: 10),
    child: Text(
    "Login",
    style: TextStyle(fontSize: 18, color: Colors.blue),
    ),
    ),
    ],
    )
    ]
    ,
    )
    ,
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


Future<void> signUp(emailController, passwordController, context) async {
  try {
    final credential =
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );

    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => homeapp(),
    ));
  } on FirebaseAuthException catch (e) {
    String message;
    if (e.code == 'weak-password') {
      message = 'The password provided is too weak.';
    } else if (e.code == 'email-already-in-use') {
      message = 'The account already exists for that email.';
    } else {
      message = 'An error occurred. Please try again.';
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  } catch (e) {
    print(e);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('An unexpected error occurred.')));
  }}