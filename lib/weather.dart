import 'package:flutter/material.dart';
import 'package:autonomous_snowblower/manual_nav.dart';
import 'package:autonomous_snowblower/bluetooth.dart';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       automaticallyImplyLeading: false,
       title: Text('Weather Forecast and Planning'),
      ),
       body: Center( 
         child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,38.0,8.0,8.0),
              child: Container(
                  padding: const EdgeInsets.all(13.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Today',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,),
                    ),
                    Text('30°F',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,),
                    ),
                    Icon(Icons.cloud_rounded,
                      size: 38,
                      color: Colors.grey,)
                    // Image.asset('images/snow.jpg')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(13.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Tuesday',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,),
                    ),
                    Text('28°F',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,),
                    ),
                    Icon(Icons.ac_unit,
                      size: 38,
                      color: Colors.grey,)
                    // Image.asset('images/snow.jpg')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(13.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Wednesday',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,),
                    ),
                    Text('25°F',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,),
                    ),
                    Icon(Icons.ac_unit,
                      size: 38,
                      color: Colors.grey,)
                    // Image.asset('images/snow.jpg')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,20.0,8.0,8.0),
              child: Text('Snowstorm forecasts for your area, would you like to schedule a cleaning?',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black54,),
            ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0,35.0,25.0,18.0),
              child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('Schedule Cleaning',
                      style: TextStyle(
                          color: Colors.black),
                          textScaleFactor: 2,),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  onPressed: () {}
              ),
            ),
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
    ),
    );
  }
}