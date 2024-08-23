import 'package:flutter/material.dart';

class radio extends StatefulWidget {
  const radio({super.key});

  @override
  State<radio> createState() => _radioState();
}

class _radioState extends State<radio> {
  String ?country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView
        (
        children: [

          Text("Chosse your country",style: TextStyle(fontSize: 20),),
          RadioListTile

            (title: Text("Dobi"),
              value: "Dobi",
              groupValue: country,
              onChanged: (val)
              {
                setState(() {
                  country=val;
                });
              }
          ),
          RadioListTile

            (title: Text("USA"),
              value: "USA",
              groupValue: country,
              onChanged: (val)
              {
                setState(() {
                  country=val;
                });
              }
          ),RadioListTile

            (title: Text("Egypt"),
              value: "Egypt",
              groupValue: country,
              onChanged: (val)
              {
                setState(() {
                  country=val;
                });
              }
          )
        ],
      ),
    );
  }
}
