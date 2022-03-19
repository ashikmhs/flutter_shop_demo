// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_store/account.dart';
import 'package:flutter_store/add.dart';
import 'package:flutter_store/chat.dart';
import 'package:flutter_store/my_ads.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavControler(),
    );
  }
}

class BottomNavControler extends StatefulWidget {
  const BottomNavControler({Key? key}) : super(key: key);

  @override
  State<BottomNavControler> createState() => _BottomNavControler();
}

class _BottomNavControler extends State<BottomNavControler> {
  int _currentIndex = 0;
  final _pages = [
    HomeScreen(),
    MyAdds(),
    Add(),
    Chat(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: "My Ads",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Account",
          ),
        ],
        selectedItemColor: Color(0xFF5364f4),
        unselectedItemColor: Color(0xFFc4c4c4),
      ),
      body: _pages[_currentIndex],
    );
  }
}
