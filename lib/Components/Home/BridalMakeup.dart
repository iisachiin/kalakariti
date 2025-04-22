import 'package:flutter/material.dart';
import 'package:kalakriti/Textstyle/textStyle.dart';

class BridalMakeup extends StatefulWidget {
  const BridalMakeup({super.key});

  @override
  State<BridalMakeup> createState() => _BridalMakeupState();
}

class _BridalMakeupState extends State<BridalMakeup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              "Makeup Artist in your city",
              style: AppTextStyles.slidesToShowHeading,
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PhotographerCard(
                  imagePath: "assets/images/Bridal makeup 1.jpg",
                  title: "Glamorous makeover",
                  location: "Pachkula",
                  price: "200/face",
                  onTap: () {
                    print("Tapped on Glamorous makeover");
                  },
                ),
                const SizedBox(width: 10),
                PhotographerCard(
                  imagePath: "assets/images/Bridal makeup.jpg",
                  title: "Your makeover",
                  location: "Barnala",
                  price: "500/face",
                  onTap: () {
                    print("Tapped on Your makeover");
                  },
                ),
                const SizedBox(width: 10),
                PhotographerCard(
                  imagePath: "assets/images/Bridal makeup 2.jpg",
                  title: "Luxury makeup",
                  location: "Ludhiana",
                  price: "600/face",
                  onTap: () {
                    print("Tapped on Luxury makeup");
                  },
                ),
                const SizedBox(width: 10),
                PhotographerCard(
                  imagePath: "assets/images/Bridal makeup 3.jpg",
                  title: "Make u up",
                  location: "Bathinda",
                  price: "400/face",
                  onTap: () {
                    print("Tapped on Make u up");
                  },
                ),
                const SizedBox(width: 10),
                PhotographerCard(
                  imagePath: "assets/images/Bridal makeup 4.jpg",
                  title: "Krishna makeover",
                  location: "Chandigarh",
                  price: "150/face",
                  onTap: () {
                    print("Tapped on Krishna makeover");
                  },
                ),
                const SizedBox(width: 10),
                PhotographerCard(
                  imagePath: "assets/images/Bridal makeup 5.jpg",
                  title: "Real makeup",
                  location: "Dabwali",
                  price: "100/face",
                  onTap: () {
                    print("Tapped on Real makeup");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PhotographerCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final String price;
  final VoidCallback onTap;

  const PhotographerCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.location,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                imagePath,
                height: MediaQuery.of(context).size.height / 4.5,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                margin: const EdgeInsets.only(left: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(location),
                    Row(
                      children: [
                        const Text(
                          "\$ ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(price),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
