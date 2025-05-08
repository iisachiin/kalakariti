import 'package:flutter/material.dart';

class Vendors extends StatefulWidget {
  const Vendors({super.key});

  @override
  State<Vendors> createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  final List<Map<String, String>> vendorList = [
    {
      'name': 'Elegant Events',
      'service': 'Wedding Planner',
      'contact': '9876543210',
    },
    {
      'name': 'Bloom Decor',
      'service': 'Flower Decoration',
      'contact': '9123456780',
    },
    {
      'name': 'CineLens Studios',
      'service': 'Photography',
      'contact': '9988776655',
    },
    {
      'name': 'Gourmet Bites',
      'service': 'Catering',
      'contact': '8899001122',
    },
    {
      'name': 'Florida events',
      'service': 'Planner',
      'contact': '9876543210',
    },
    {
      'name': 'Decore planner',
      'service': 'Flower Decoration',
      'contact': '9123456780',
    },
    {
      'name': 'Smart Studios',
      'service': 'Photography',
      'contact': '9988776655',
    },
    {
      'name': 'Your catters',
      'service': 'Catering',
      'contact': '8899001122',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vendors',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: vendorList.length,
        itemBuilder: (context, index) {
          final vendor = vendorList[index];
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple.shade200,
                child: Text(vendor['name']![0]),
              ),
              title: Text(
                vendor['name']!,
                style: const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                vendor['service']!,
                style: const TextStyle(fontFamily: 'Poppins'),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.call, color: Colors.deepPurple),
                onPressed: () {
                  // Add call functionality or navigation
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
