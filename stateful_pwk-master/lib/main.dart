import 'dart:ffi';

import 'package:flutter/material.dart';

// nama : siti salma z
// npm : 20552011189

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //disini tempat untuk bisa membuat method
  int number = 1;
  void tekantombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("latihan statefulwidget"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(number.toString()),
            MaterialButton(
                color: Colors.blue[100],
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
                child: Text("Tambah"),
                onPressed: tekantombol),
          ],
        )),
      ),
    );
  }
}
