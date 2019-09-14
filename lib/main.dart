import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;
  DateTime t = DateTime.now();
  String text = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.add),
                  iconSize: 20,
                  onPressed: () => add(),
                ),
                Text(
                  "${num.toString()}",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                IconButton(
                  icon: Icon(Icons.minimize),
                  iconSize: 20,
                  onPressed: () => subtract(),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }

  add() {
      num++;

 if (num == t.day) {
      text = "you reached the day";
      Fluttertoast.showToast(msg: text ,gravity: ToastGravity.TOP);
    } else if (num == t.month) {
      text = "you reached the month";
            Fluttertoast.showToast(msg: text ,gravity: ToastGravity.TOP);
    } else {
      text = "nothing special";
    }

    setState(() {
    });
  }



  subtract() {

if (num > 0) {
        num--;
      }

     if (num == t.day) {
      text = "you reached the day";
        Fluttertoast.showToast(msg: text ,gravity: ToastGravity.TOP);

    } else if (num == t.month) {
      text = "you reached the month";
            Fluttertoast.showToast(msg: text ,gravity: ToastGravity.TOP);

    } else {
      text = "nothing special";
    }
    setState(() {
      
    });
  }

}
