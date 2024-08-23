import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  const textfield({super.key});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  GlobalKey<FormState> Phone=GlobalKey();
  String ?phone;
  String ?username;
  String ?password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text("Log in",style: TextStyle(fontSize: 30),),centerTitle: true,
          backgroundColor: Colors.grey,
          leading: Text("sign up"),
          elevation: 10.0,
          shadowColor:Colors.cyan ,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.list)),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings))
          ],

        ),
        body: Container
          (
            padding: EdgeInsets.all(10),
            child:Form(

                autovalidateMode: AutovalidateMode.always,
                key: Phone,
                child: Column(
                  children: [
                    TextFormField(
                      readOnly: true,
                      onSaved: (val){username=val;},
                      decoration: InputDecoration(
                          hintText: "Username"
                      ),
                      validator: (val)
                      {

                        if (val!.isEmpty){return "is empty";}
                        if(val.length>20){return "not allowed";}
                      },


                    )
                    ,TextFormField(
                      obscureText: true,

                      onSaved: (val){password=val;},
                      decoration: InputDecoration(
                          hintText: "password"
                      ),
                      validator: (val)
                      {

                        if (val!.isEmpty){return "is empty";}
                        if(val.length<8){return "not allowed";}
                      },
                    ), TextFormField(

                      keyboardType: TextInputType.phone,
                      onSaved: (val){phone=val;},
                      decoration: InputDecoration(
                          hintText: "Phone"
                      ),
                      validator: (val)
                      {

                        if (val!.isEmpty){return "is empty";}
                        if(val.length>11){return "not allowed";}
                        if(val.length<9){return "not allowed";}
                      },

                    )
                    ,MaterialButton(color:Colors.red ,
                      onPressed: () {
                        if(Phone.currentState!.validate())
                        {
                          Phone.currentState!.save();
                          print("done");
                          print(username);
                          print(Phone);
                        }
                        else{print("Not done");}
                      },child: Text("Vaild"),
                    )
//
                  ],
                )
            )
        )

    );
  }
}
