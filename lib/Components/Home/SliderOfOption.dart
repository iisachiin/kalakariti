import 'package:flutter/material.dart';
import 'package:kalakriti/Textstyle/homeoptions.dart';

class Sliderofoption extends StatefulWidget {
  const Sliderofoption({super.key});

  @override
  State<Sliderofoption> createState() => _SliderofoptionState();
}

class _SliderofoptionState extends State<Sliderofoption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(99, 171, 171, 171),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildOption("assets/images/Bridal makeup 1.jpg", "Bridal Makeup\nArtist"),
              const SizedBox(width: 10),
              buildOption("assets/images/Wedding venue 4.jpg", "Wedding\nVenues"),
              const SizedBox(width: 10),
              buildOption("assets/images/Decore 3.jpg", "Wedding\nDecoraters"),
              const SizedBox(width: 10),
              buildOption("assets/images/Wedding photo.jpg", "Wedding\nPhotographer"),
              const SizedBox(width: 10),
              buildOption("assets/images/Decore 5.jpg", "Wedding\nPlanner"),
              const SizedBox(width: 10),
              buildMoreOption(),
            ],
          ),
        ),
      ),
    );
  }

  // Function for Image + Label item
  Widget buildOption(String imagePath, String label) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(4),
          height: 70,
          width: 70,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: AppTextStyles.slidesTextForOp,
        ),
      ],
    );
  }

  // Function for "+10 / Many more..." block
  Widget buildMoreOption() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(4),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.orange.shade300,
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Text(
              "+10",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Text(
          "Many more...",
          style: AppTextStyles.slidesTextForOp,
        ),
      ],
    );
  }
}
