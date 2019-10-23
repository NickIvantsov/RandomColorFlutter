import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My app',
      debugShowCheckedModeBanner: false,
      home: new MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State createState() => new _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final Random _random = new Random();
  Color _color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new GestureDetector(
          onTap: () {
            // Change the color of the container beneath
            setState(() {
              _color = new Color.fromRGBO(_random.nextInt(256),
                  _random.nextInt(256), _random.nextInt(256), 1.0);
              print('MyButton was tapped!');
            });
          },
          child: new Container(
            color: _color,
            child: Center(
              child: Text(
                'Hey there =) \n'
                    'it\'s my first color random program at flutter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),

              ),
            ),
          ),
        ),
      ),
    );
  }
}
