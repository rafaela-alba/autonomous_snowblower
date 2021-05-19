import 'package:flutter/material.dart';
import 'package:autonomous_snowblower/bluetooth.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,16.0),
                child: Text(
                  'Autonomous Snow Blower',
                  style: new TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),

                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter email'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter password'),
                  obscureText: true,
                ),
              ),
              ElevatedButton(
                child: Text('Log In'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bluetooth()),
                  );
                },
              ),
              TextButton(
                  onPressed: null,
                  child: Text('Create an Account')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
