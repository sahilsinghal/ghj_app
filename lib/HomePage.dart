import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: [
          Container(
              child: Image.asset('images/heaven.jpg'),
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center),
          Container(
              child: Image.asset('images/guru.png'),
              alignment: Alignment.center),
        ],
      ),
    );
  }
}