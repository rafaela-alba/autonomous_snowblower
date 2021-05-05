import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:control_button/control_button.dart';
import 'package:autonomous_snowblower/weather.dart';
import 'package:autonomous_snowblower/bluetooth.dart';
import 'package:autonomous_snowblower/autonomous_page.dart';

class ManualNav extends StatefulWidget {
  @override
  _ManualNavState createState() => _ManualNavState();
}

class _ManualNavState extends State<ManualNav> {
  String text = '';
  void updateState(String showText) {
    setState(() {
      text = showText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Navigation'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'No obstacles detected.',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.green,),
            ),
            Text(
              'Forward',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Left',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,),
                  ),
                ControlButton(
                  sectionOffset: FixedAngles.Inclined45,
                  externalDiameter: 300,
                  internalDiameter: 120,
                  dividerColor: Colors.white,
                  dividerThickness: 25.0,
                  elevation: 0,
                  externalColor: Colors.black,
                  internalColor: Colors.white,
                  mainAction: () => updateState('Selected Center'),
                  sections: [
                        () => updateState('Selected 1'),
                        () => updateState('Selected 2'),
                        () => updateState('Selected 3'),
                        () => updateState('Selected 4'),
                  ],
                ),
                Text(
                  'Right',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,),
                ),
              ],
            ),
            Text(
              'Backward',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,),
            ),
            ElevatedButton(
                child: Text('Auto Mode',
                  style: TextStyle(color: Colors.black),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Autonomous()),
                  );                }
            )
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.deepOrange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.ac_unit_sharp,
              color: Colors.black87),
              onPressed: (){
                Navigator.push(
                  context,
                MaterialPageRoute(builder: (context) => Weather()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.assistant_navigation,
                  color: Colors.black87),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManualNav()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.bluetooth,
                  color: Colors.black87),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bluetooth()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.person,
                  color: Colors.black87),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManualNav()),
                );
              },
            ),
          ],
        ),
      )
    );
  }
}