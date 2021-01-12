import 'package:flutter/material.dart';


class Less40 extends StatefulWidget {
  @override
  _Less40State createState() => _Less40State();
}

class _Less40State extends State<Less40> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Diet Plan'),
          backgroundColor: Colors.yellow[700],
        ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Text('Diet Plan for Age 20 - 40', style: TextStyle(
          fontSize: 25.0
        )),
      )
    );
  }
}
