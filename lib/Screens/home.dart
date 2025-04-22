// import 'dart:nativewrappers/_internal/vm/lib/mirrors_patch.dart';

import 'package:flutter/material.dart';
import 'package:kalakriti/Components/Home/BridalMakeup.dart';
import 'package:kalakriti/Components/Home/Decores.dart';
import 'package:kalakriti/Components/Home/PhotoGrapher.dart';
import 'package:kalakriti/Components/Home/SliderOfOption.dart';
import 'package:kalakriti/Components/Home/UpperBar.dart';
import 'package:kalakriti/Components/Home/VenueInYourCity.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
            child: Scaffold(
          // extendBody:
          //     true, //this will hide the back color of the navigation bar
          body: Column(
            children: [
              SizedBox(height: 60, child: Upperbar()),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 7,
                          child: Sliderofoption(),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 2.5,
                          child: Venues(),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 2.5,
                          child: Decores(),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 2.5,
                          child: PhotoGrapher(),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 2.5,
                          child: BridalMakeup(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: _currentIndex,
          //   onTap: (int newIndex) {
          //     setState(() {
          //       _currentIndex = newIndex;
          //     });
          //   },
          //   items: const [
          //     BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          //     BottomNavigationBarItem(label: 'Menu', icon: Icon(Icons.menu)),
          //     BottomNavigationBarItem(
          //         label: 'Profile', icon: Icon(Icons.person)),
          //   ],
          // ),
        )));
  }
}
