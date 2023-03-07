import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_face_api/face_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liveness Detection',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      )),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  onLiveness() {
    FaceSDK.startLiveness().then((livenessResponse) {
      var response = LivenessResponse.fromJson(jsonDecode(livenessResponse));
      // ... check response.liveness for detection result.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.amber,
        child: OutlinedButton(
          child: Text('Klik'),
          onPressed: onLiveness,
        ),
      ),
    ));
  }
}
