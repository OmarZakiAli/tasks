import 'dart:convert';
import 'package:random_string/random_string.dart';
import 'dart:math' show Random;

import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String x = "s6897413";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
            body: Center(
          child: Container(
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(

                  color: Colors.red,
                  child: Text(
                    "generate",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: generateCode,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: getChildrenList())
              ],
            ),
          ),
        ),
      ),
    );
  }

  generateCode() {
    Random rnd = Random();
    int num = rnd.nextInt(7);
    String xx = randomBetween(10000000, 99999999).toString();
    x = xx.replaceRange(num, num, randomString(1));

    setState(() {});
  }

  getChildrenList() {
    List<Widget> _list = [];
    for (int i = 0; i < 8; i++) {
      _list.add(Text(x[i], style: TextStyle(color: Colors.red, fontSize: 20)));
    }

    return _list;
  }
}
