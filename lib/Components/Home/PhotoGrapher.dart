import 'package:flutter/material.dart';
import 'package:kalakriti/Textstyle/textStyle.dart';

class PhotoGrapher extends StatefulWidget {
  const PhotoGrapher({super.key});

  @override
  State<PhotoGrapher> createState() => _PhotoGrapherState();
}

class _PhotoGrapherState extends State<PhotoGrapher> {
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
              "Photographers in your city",
              style: AppTextStyles.slidesToShowHeading,
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PhotographerCard(
                  imagePath: "assets/images/Wedding photo 1.jpg",
                  title: "Pic click",
                  location: "Pachkula",
                  price: "200/shoot",
                  onTap: () {
                    print("Tapped on Pic click");
                  },
                ),
                const SizedBox(width: 10),
                PhotographerCard(
                  imagePath: "assets/images/Wedding photo.jpg",
                  title: "Your film",
                  location: "Barnala",
                  price: "500/shoot",
                  onTap: () {
                    print("Tapped on Your film");
                  },
                ),
                const SizedBox(width: 10),
                PhotographerCard(
                  imagePath: "assets/images/Wedding photo 2.jpg",
                  title: "Decent picture",
                  location: "Ludhiana",
                  price: "600/shoot",
                  onTap: () {
                    print("Tapped on Decent picture");
                  },
                ),
                const SizedBox(width: 10),
                PhotographerCard(
                  imagePath: "assets/images/Wedding photo 3.jpg",
                  title: "Clickers",
                  location: "Bathinda",
                  price: "400/shoot",
                  onTap: () {
                    print("Tapped on Clickers");
                  },
                ),
                const SizedBox(width: 10),
                PhotographerCard(
                  imagePath: "assets/images/Wedding photo 4.jpg",
                  title: "Krishna pictures",
                  location: "Chandigarh",
                  price: "1000/shoot",
                  onTap: () {
                    print("Tapped on Krishna pictures");
                  },
                ),
                const SizedBox(width: 10),
                PhotographerCard(
                  imagePath: "assets/images/Wedding photo 5.jpg",
                  title: "Recap studio",
                  location: "Dabwali",
                  price: "100/shoot",
                  onTap: () {
                    print("Tapped on Recap studio");
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
      onTap:onTap,
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
