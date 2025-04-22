import 'package:flutter/material.dart';

class Vendors extends StatefulWidget {
  const Vendors({super.key});

  @override
  State<Vendors> createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: SizedBox(
              height: MediaQuery.of(context).size.height/1.5,
              width: MediaQuery.of(context).size.width,
            ),
          )
        ],
      ),
    );
  }
}
