import "package:flutter/material.dart";

class VenuesDetails extends StatefulWidget {
  const VenuesDetails({super.key});

  @override
  State<VenuesDetails> createState() => _VenuesDetailsState();
}

class _VenuesDetailsState extends State<VenuesDetails> {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder(itemBuilder: (context, index){
      return Container(
        child: Row(
          children: [
            ClipRRect(
              child: Image.asset(name),
            )
          ],
        ),
      );
    }));
  }
}