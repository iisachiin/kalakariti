import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kalakriti/Screens/Settings.dart';
import 'package:kalakriti/Screens/home.dart';
import 'package:kalakriti/Screens/masseges.dart';
import 'package:kalakriti/Screens/vendors.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavoigationState();
}

class _BottomnavoigationState extends State<Bottomnavigation> {
  int _currentIndex = 0; //Index of the navigation bar
  final items = <Widget>[
    Icon(Icons.home,color: Colors.white,),
    Icon(Icons.store, color: Colors.white),
    Icon(Icons.inbox, color: Colors.white),
    Icon(Icons.settings, color: Colors.white)
  ];
  final Screens = [
    MyHomePage(),
    Vendors(),
    Masseges(),
    Settings(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
          color: Colors.black,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeIn,
          animationDuration: Duration(milliseconds: 400),
          index: _currentIndex,
          items: items,
          height: 60,
          onTap: (index) => setState(
                () => _currentIndex = index,
              )),
    );
  }
}
