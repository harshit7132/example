import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _colors = [
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.pink,
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.pink,
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.pink
    ];
    var names = [
      'rahul',
      'mahesh',
      'nawed',
      'sohel',
      'rahul',
      'mahesh',
      'nawed',
      'sohel',
      'rahul',
      'mahesh',
      'nawed',
      'sohel',
    ];
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(30),
            height: 100,
            width: 100,
            alignment: Alignment.center,
            child: Text(
              names[index],
              style: TextStyle(color: Colors.white),
            ),
            color: _colors[index],
          );
        },
        itemCount: _colors.length,
      ),
    );
  }
}
