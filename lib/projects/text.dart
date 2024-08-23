import 'package:flutter/material.dart';

class text extends StatelessWidget {
  const text({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Name"),
        ),
        body: Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(4000)),
                border: Border.all(color: Colors.black, width: 10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue,
                      offset: Offset(1, 1),
                      spreadRadius: 1,
                      blurRadius: 10)
                ]),
            width: 400,
            height: 400,
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: const Text(
              "Yassa",
              style: TextStyle(
                color: Colors.black,
                fontSize: 80.2,
                fontWeight: FontWeight.w500,
                backgroundColor: Colors.red,
              ),
            )));
  }
}
