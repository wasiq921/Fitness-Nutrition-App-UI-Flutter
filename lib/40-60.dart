import 'package:flutter/material.dart';


class Less60 extends StatefulWidget {
  @override
  _Less60State createState() => _Less60State();
}

class _Less60State extends State<Less60> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Diet Plan'),
          backgroundColor: Colors.yellow[700],
        ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Text('Diet Plan for Age 40 - 60', style: TextStyle(
          fontSize: 25.0),
        ),
      ),
    );
  }
}
