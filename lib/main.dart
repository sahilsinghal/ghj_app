import 'package:flutter/material.dart';

import 'Bhajan.dart';
import 'Bhav.dart';
import 'Gallery.dart';
import 'HomePage.dart';
import 'Waani.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectedTabIndex = 2;

  List _pages = [
    Bhajan(),
    Gallery(),
    Homepage(),
    Waani(),
    Bhav()
  ];

  void _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: _pages[_selectedTabIndex],
      appBar: AppBar(
        title: Text('God Home Journey'),
        backgroundColor: Colors.blueGrey[900],
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: null)
        ],
      ),


      drawer: Drawer(
// Add a ListView to the drawer. This ensures the user can scroll
// through the options in the drawer if there isn't enough vertical
// space to fit everything.
        child: ListView(
// Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('More'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('About us'),
              onTap: () {
// Update the state of the app
// ...
// Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Connect with Guruji'),
              onTap: () {
// Update the state of the app
// ...
// Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Submit your question'),
              onTap: () {
// Update the state of the app
// ...
// Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Contact Us'),
              onTap: () {
// Update the state of the app
// ...
// Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        unselectedFontSize: 14,
        selectedFontSize: 14,
        currentIndex: _selectedTabIndex,
        onTap: _changeIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.queue_music),
            label: 'Bhajans',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Gallery',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_sharp),
            label: 'Waani',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_emotions_outlined),
            label: 'Experiences',
            backgroundColor: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}

