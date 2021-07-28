import 'package:flutter/material.dart';

class SomeScreen extends StatefulWidget {
  @override
  _SomeScreenState createState() => _SomeScreenState();
}

class _SomeScreenState extends State<SomeScreen> {
  String myClass = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          Text('myClass.someValue'),
          MaterialButton(onPressed: () {
            setState(() {
              myClass = "newValue";
            });
          })
        ]),
      ),
    );
  }
}
