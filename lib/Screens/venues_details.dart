import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class VenuesDetails extends StatefulWidget {
  final String venueId;  // Pass the document ID

  const VenuesDetails({super.key, required this.venueId});

  @override
  State<VenuesDetails> createState() => _VenuesDetailsState();
}

class _VenuesDetailsState extends State<VenuesDetails> {
  DocumentSnapshot? venueData;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchVenueData();
  }

  Future<void> fetchVenueData() async {
    try {
      DocumentSnapshot doc = await FirebaseFirestore.instance
          .collection('venues')
          .doc(widget.venueId)
          .get();

      setState(() {
        venueData = doc;
        isLoading = false;
      });
    } catch (e) {
      print("Error fetching venue: $e");
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (venueData == null || !venueData!.exists) {
      return const Center(child: Text("Venue not found."));
    }

    final data = venueData!.data() as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Venue Details'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  data['imageUrl'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                data['name'] ?? 'Venue Name',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "\$${data['price']} / plate",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Description",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                data['description'] ?? 'No description available.',
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.chat_outlined, color: Colors.green),
                    iconSize: 32,
                    onPressed: () {
                      // Link from Firebase if needed: data['whatsappUrl']
                    },
                  ),
                  const SizedBox(width: 12),
                  IconButton(
                    icon: const Icon(Icons.phone, color: Colors.blueAccent),
                    iconSize: 32,
                    onPressed: () {
                      // You can fetch phone number: data['phone']
                    },
                  ),
                  const SizedBox(width: 12),
                  IconButton(
                    icon: const Icon(Icons.camera_alt, color: Colors.purple),
                    iconSize: 32,
                    onPressed: () {
                      // Instagram link: data['instagramUrl']
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
