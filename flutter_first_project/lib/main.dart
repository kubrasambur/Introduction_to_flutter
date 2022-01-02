// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.red, accentColor: Colors.indigoAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Başlık"),
          backgroundColor: Colors.amber[900],
        ),
        backgroundColor: Colors.indigo[100],
        body: Center(
          //ctrl+. ile widget ımızı sarmallayabiliyoruz
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
            //alignment çocuklarını düzenlemeye yarar
            //alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(50),
              color: Colors.blue,
              width: 50,
              height: 50,
              child: Text("Kübra"),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("tıklandı");
          },
          child: Icon(Icons.account_circle_rounded),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
