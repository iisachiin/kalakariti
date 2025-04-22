import 'package:flutter/material.dart';

class Upperbar extends StatefulWidget {
  const Upperbar({super.key});

  @override
  State<Upperbar> createState() => _UpperbarState();
}

class _UpperbarState extends State<Upperbar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    // color: const Color.fromARGB(82, 158, 158, 158),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.search,
                  size: 30,
                )),
            SizedBox(
              width: 10,
            ),
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    // color: const Color.fromARGB(82, 158, 158, 158),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.chat_rounded,
                  size: 25,
                )),
            SizedBox(
              width: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(82, 158, 158, 158),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.person,
                  size: 30,
                ))
          ],
        ),
      ),
    );
  }
}
