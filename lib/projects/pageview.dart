import 'package:flutter/material.dart';

class pageview extends StatefulWidget {
  const pageview({super.key});

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: 300,
        child: PageView(
        //  physics: NeverScrollableScrollPhysics(),
          reverse: true,
          onPageChanged: (val){
            print(val);                    },
          children: [
            Image.asset("images/1.jpeg"),
            Image.asset("images/2.jpeg"),
            Image.asset("images/3.jpeg"),
            Image.asset("images/4.jpeg"),
          ],
        ),
      ),
    );
  }
}
