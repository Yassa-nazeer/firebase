import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  StreamSubscription<Position>? positionStream;
  getCurrentlocationapp() async{
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(serviceEnabled==false){return;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();}
    if (permission == LocationPermission.denied) {
     print('Location permissions are denied');
          }
    if (permission == LocationPermission.whileInUse) {
      double distanceInMeters = Geolocator.distanceBetween(52.2165157, 6.9437819, 52.3546274, 4.8285838);
      print(distanceInMeters/1000);
      // location متحرك
      // positionStream= Geolocator.getPositionStream().listen(
      //         (Position? position) {
      //            print("======================");
      //           print(position!.longitude);
      //           print("======================");
      //           print(position!.latitude);
      //     });
      // موقع ثابت
      // Position position = await Geolocator.getCurrentPosition();
      // print(position.latitude);
      // print(position.longitude);
          }
    if (permission == LocationPermission.deniedForever) {
      print("Can Not use app");
    }

  }
  @override
  void initState() {
    getCurrentlocationapp();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello"),),
    );
  }
}
