// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // ignore: prefer_final_fields
  String _img1 =
      "https://media.istockphoto.com/photos/moraine-lake-rocky-mountains-canada-picture-id525508231?b=1&k=20&m=525508231&s=170667a&w=0&h=AgqcnKG6W8tsIepho7lvZM6iGQfqUCFTgrF_U5a0l5Y=";
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
        body: Container(
            color: Colors.purple[200],
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //aşağıdaki satırı yazmazsak ya da max yaparsak Rowda da yayılacağı  için bütün ekran kullanılacak
                  mainAxisSize: MainAxisSize.min,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("K"),
                    Text("U"),
                    Text("B"),
                    Text("R"),
                    Text("A"),
                  ],
                ),
                Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.green,
                ),
                Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.red,
                ),
              ],
            )),
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

  Widget containerLessons() {
    return Center(
      //ctrl+. ile widget ımızı sarmallayabiliyoruz
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          "Kübra ",
          style: TextStyle(fontSize: 100, color: Colors.purple),
        ),
        decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(width: 4, color: Colors.purple),
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: NetworkImage(_img1), fit: BoxFit.cover),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.green, offset: Offset(20, 20), blurRadius: 5),
              BoxShadow(
                  color: Colors.yellow, offset: Offset(-20, -20), blurRadius: 5)
            ]),
      ),
    );
  }
}
