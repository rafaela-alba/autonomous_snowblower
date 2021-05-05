import 'package:flutter/material.dart';
import 'package:autonomous_snowblower/manual_nav.dart';
import 'package:autonomous_snowblower/weather.dart';

class Bluetooth extends StatefulWidget {
  @override
  _BluetoothState createState() => _BluetoothState();
}

class _BluetoothState extends State<Bluetooth> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
    );
  }
}