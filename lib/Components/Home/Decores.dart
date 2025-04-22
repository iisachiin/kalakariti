import 'package:flutter/material.dart';
import 'package:kalakriti/Textstyle/homeoptions.dart';

class Decores extends StatefulWidget {
  const Decores({super.key});

  @override
  State<Decores> createState() => _DecoresState();
}

class _DecoresState extends State<Decores> {
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
              "Decoraters for you",
              style: AppTextStyles.slidesToShowHeading,
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DecorCard(
                  imagePath: "assets/images/Decore.jpg",
                  title: "Yours Decore",
                  location: "Patiala",
                  price: "100 - 150",
                  onTap: () {
                    print("Tapped on Yours Decore");
                  },
                ),
                const SizedBox(width: 10),
                DecorCard(
                  imagePath: "assets/images/Decore 2.jpg",
                  title: "Decore point",
                  location: "Barnala",
                  price: "1000 -1500",
                  onTap: () {
                    print("Tapped on Decore point");
                  },
                ),
                const SizedBox(width: 10),
                DecorCard(
                  imagePath: "assets/images/Decore 3.jpg",
                  title: "Decent Decore",
                  location: "Haryana",
                  price: "2000 - 3000",
                  onTap: () {
                    print("Tapped on Decent Decore");
                  },
                ),
                const SizedBox(width: 10),
                DecorCard(
                  imagePath: "assets/images/Decore 4.jpg",
                  title: "King Decores",
                  location: "Bathinda",
                  price: "400 - 1000",
                  onTap: () {
                    print("Tapped on King Decores");
                  },
                ),
                const SizedBox(width: 10),
                DecorCard(
                  imagePath: "assets/images/Decore 5.jpg",
                  title: "Krishna Decores",
                  location: "Chandigarh",
                  price: "500 - 1000",
                  onTap: () {
                    print("Tapped on Krishna Decores");
                  },
                ),
                const SizedBox(width: 10),
                DecorCard(
                  imagePath: "assets/images/Decore 1.jpg",
                  title: "Dream Decores",
                  location: "Dabwali",
                  price: "800 - 1500",
                  onTap: () {
                    print("Tapped on Dream Decores");
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

class DecorCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final String price;
  final VoidCallback onTap;

  const DecorCard({
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
