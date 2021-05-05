import 'package:flutter/material.dart';

class Autonomous extends StatefulWidget {
  @override
  _AutonomousState createState() => _AutonomousState();
}

class _AutonomousState extends State<Autonomous> {

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
        scaffoldBackgroundColor: Colors.deepOrange,
        accentColor: Colors.black87,
    ),
    child: Scaffold(
      body: Center(
        child: Text('Auto Mode',
          style: new TextStyle(
            fontSize: 60.0,
            fontWeight: FontWeight.bold,),
          ),
        ),

      )
    );
  }
}