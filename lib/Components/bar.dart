import 'package:flutter/material.dart';

import 'package:loginpage/chats.dart';

import 'package:loginpage/home.dart';
import 'package:loginpage/page1.dart';
import 'package:loginpage/products.dart';
import 'package:loginpage/profille.dart';

class bar extends StatefulWidget {
  int index;

  bar({Key? key, required this.index}) : super(key: key);

  @override
  State<bar> createState() => _barState();
}

class _barState extends State<bar> {
  List<Widget> screens = [
    Home(),
    const page1(),
    const chats(),
    const profille(),
    const products(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[widget.index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.index,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
            backgroundColor: Color(0xFFBE191C),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'favourites',
            backgroundColor: Color(0xFFBE191C),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'chats',
              backgroundColor: Color(0xFFBE191C)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile',
              backgroundColor: Color(0xFFBE191C)),
        ],
        onTap: (index) {
          setState(() {
            widget.index = index;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
