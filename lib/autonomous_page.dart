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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/aerial.JPG',
                width:400,
                fit: BoxFit.fitWidth,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Preset Desired Path",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                ),
                onPressed: null,
                ),
            )
            ],
          )
        ),
      )
    );
  }
}