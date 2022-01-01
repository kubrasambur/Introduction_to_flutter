import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.amber),
      home: Scaffold(
        // ignore: prefer_const_constructors
        body: Text(
          "Merhaba Dünya",
          // ignore: prefer_const_constructors
          style: TextStyle(
              color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        appBar: AppBar(
          title: Text("Başlık"),
          backgroundColor: Colors.green,
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
