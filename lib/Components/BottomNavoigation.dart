import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kalakriti/Screens/home.dart';
import 'package:kalakriti/Screens/vendors.dart';

class Bottomnavoigation extends StatefulWidget {
  const Bottomnavoigation({super.key});

  @override
  State<Bottomnavoigation> createState() => _BottomnavoigationState();
}

class _BottomnavoigationState extends State<Bottomnavoigation> {
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
