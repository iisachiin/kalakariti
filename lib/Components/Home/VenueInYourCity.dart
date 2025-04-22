import 'package:flutter/material.dart';
import 'package:kalakriti/Textstyle/homeoptions.dart';

class Venues extends StatefulWidget {
  const Venues({super.key});

  @override
  State<Venues> createState() => _VenuesState();
}

class _VenuesState extends State<Venues> {
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
              "Venues in your city",
              style: AppTextStyles.slidesToShowHeading,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            
            child: SingleChildScrollView(
              
              scrollDirection: Axis.horizontal,
              child: Row(
            
                children: [
                  VenueCard(
                    imagePath: "assets/images/Wedding venue 1.jpg",
                    title: "Richi Palace",
                    location: "Pachkula",
                    price: "200/Plate",
                    onTap: () {
                      print("Tapped on Richi Palace");
                    },
                  ),
                  const SizedBox(width: 10),
                  VenueCard(
                    imagePath: "assets/images/Wedding venue.jpg",
                    title: "Your place",
                    location: "Barnala",
                    price: "500/Plate",
                    onTap: () {
                      print("Tapped on Your place");
                    },
                  ),
                  const SizedBox(width: 10),
                  VenueCard(
                    imagePath: "assets/images/Wedding venue 2.jpg",
                    title: "Decent Venue",
                    location: "Ludhiana",
                    price: "600/Plate",
                    onTap: () {
                      print("Tapped on Decent Venue");
                    },
                  ),
                  const SizedBox(width: 10),
                  VenueCard(
                    imagePath: "assets/images/Wedding venue 3.jpg",
                    title: "Kingfisher Resort",
                    location: "Bathinda",
                    price: "400/Plate",
                    onTap: () {
                      print("Tapped on Kingfisher Resort");
                    },
                  ),
                  const SizedBox(width: 10),
                  VenueCard(
                    imagePath: "assets/images/Wedding venue 4.jpg",
                    title: "Krishna Land",
                    location: "Chandigarh",
                    price: "1000/Plate",
                    onTap: () {
                      print("Tapped on Krishna Land");
                    },
                  ),
                  const SizedBox(width: 10),
                  VenueCard(
                    imagePath: "assets/images/Wedding venue 5.jpg",
                    title: "Dreamland Resort",
                    location: "Dabwali",
                    price: "100/Plate",
                    onTap: () {
                      print("Tapped on Dreamland Resort");
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VenueCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final String price;
  final VoidCallback onTap;

  const VenueCard({
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
      // height: MediaQuery.of(context).size.height/1.5,
        width: 200,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
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
