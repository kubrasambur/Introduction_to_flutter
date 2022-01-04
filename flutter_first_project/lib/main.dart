// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange.shade200,
          child: Text(
            "D",
            style: TextStyle(
              fontSize: 55,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange.shade400,
          child: Text(
            "A",
            style: TextStyle(
              fontSize: 55,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange.shade600,
          child: Text(
            "R",
            style: TextStyle(
              fontSize: 55,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange.shade800,
          child: Text(
            "T",
            style: TextStyle(
              fontSize: 55,
            ),
          ),
        )
      ],
    );
  }

  Column dersleriColumnuOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          margin: EdgeInsets.only(top: 15),
          color: Colors.orange.shade200,
          child: Text(
            "E",
            style: TextStyle(
              fontSize: 55,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange.shade300,
          child: Text(
            "R",
            style: TextStyle(
              fontSize: 55,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange.shade400,
          child: Text(
            "S",
            style: TextStyle(
              fontSize: 55,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange.shade500,
          child: Text(
            "L",
            style: TextStyle(
              fontSize: 55,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange.shade600,
          child: Text(
            "E",
            style: TextStyle(
              fontSize: 55,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange.shade700,
          child: Text(
            "R",
            style: TextStyle(
              fontSize: 55,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange.shade800,
          child: Text(
            "İ",
            style: TextStyle(
              fontSize: 55,
            ),
          ),
        ),
      ],
    );
  }

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
          title: Text("Flutter Dersleri"),
          backgroundColor: Colors.amber[900],
        ),
        backgroundColor: Colors.indigo[100],
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              dartRowunuOlustur(),
              Expanded(child: dersleriColumnuOlustur())
            ],
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

  List<Widget> get sorunluContainer {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
    ];
  }

  List<Widget> get expandedContainer {
    return [
      Expanded(
        //flex değeri vererek bu kutunun diğerlerinden fazla alan kaplamasını sağlayabiliriz
        flex: 2,
        child: Container(
          //artık bu değerlerin bi önemi kalmadı çünkü expanded kullanıyoruz yani dahip olunan alana hepsini sığdırıyoruz.
          width: 75,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
    ];
  }

  List<Widget> get flexibleContainer {
    return [
      //flexible en fazla verilen genişlik değeri kadar büyür ama gerekirse küçülür.Expanded ise mümkün olan bütün alana yayılır
      Flexible(
        child: Container(
          width: 175,
          height: 175,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        child: Container(
          width: 175,
          height: 175,
          color: Colors.red,
        ),
      )
    ];
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
