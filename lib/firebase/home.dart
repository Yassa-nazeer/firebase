import 'package:flutter/material.dart';

class homeapp extends StatefulWidget {
  const homeapp({super.key});

  @override
  State<homeapp> createState() => _homeState();
}

class _homeState extends State<homeapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Welcome"),
    );
  }
}
