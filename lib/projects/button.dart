import 'package:flutter/material.dart';

class button extends StatefulWidget {
  const button({super.key});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  bool state=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          IconButton(onPressed: () {
            setState(() {
              state=true;
            });
          }, icon: Icon(Icons.add)),

          state? Icon(Icons.star) :Icon(Icons.star_border_outlined)
,
           IconButton(onPressed: () {
            setState(() {
              state=false;
            });

            }, icon: Icon(Icons.remove))
        ],
      ),
    );
  }
}
