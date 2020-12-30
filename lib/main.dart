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
        backgroundColor: Colors.blueGrey[700],
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: null, color: Colors.white)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.pink[100],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('More'),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            ListTile(
              title: Text('About us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Connect with Guruji'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Submit your question'),
              onTap: () {
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
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        unselectedFontSize: 14,
        selectedFontSize: 14,
        currentIndex: _selectedTabIndex,
        onTap: _changeIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.queue_music),
            label: 'Bhajans',
            backgroundColor: Colors.grey[700],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Gallery',
            backgroundColor: Colors.grey[700],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.grey[700],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_sharp),
            label: 'Waani',
            backgroundColor: Colors.grey[700],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_emotions_outlined),
            label: 'Experiences',
            backgroundColor: Colors.grey[700],
          ),
        ],
      ),
    );
  }
}

