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
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: new AssetImage('images/heaven.jpg'),
              ),
            ),
          ),
          Container(
              child: Image.asset('images/guru.png'),
              alignment: Alignment.center),

    /*      Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            child: Icon(Icons.play_arrow,color: Colors.white),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 27, 28, 30),
                boxShadow: [BoxShadow(
                    color: Color.fromARGB(130, 237, 125, 58),
                    blurRadius: 15,
                    spreadRadius: 15
                )]
            ),
          ),*/
        ],
      ),
    );
  }
}
