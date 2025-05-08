import 'package:flutter/material.dart';

class Masseges extends StatefulWidget {
  const Masseges({super.key});

  @override
  State<Masseges> createState() => _MassegesState();
}

class _MassegesState extends State<Masseges> {
  final List<Map<String, String>> messages = [
    {
      'name': 'Event Planner',
      'message': 'Your booking is confirmed!',
      'time': '10:30 AM'
    },
    {
      'name': 'Florist',
      'message': 'We need confirmation on color theme.',
      'time': '9:15 AM'
    },
    {
      'name': 'Catering',
      'message': 'Menu finalized. Ready for service.',
      'time': 'Yesterday'
    },
    {
      'name': 'Venue Manager',
      'message': 'Please arrive for inspection by 2 PM.',
      'time': 'Mon'
    },
    {
      'name': 'Event executer',
      'message': 'Your booking is not valid!',
      'time': '10:30 AM'
    },
    {
      'name': 'Your event manager',
      'message': 'We need confirmation on color theme.',
      'time': '9:15 AM'
    },
    {
      'name': 'DJ',
      'message': 'We need a large wooffers',
      'time': 'Yesterday'
    },
    {
      'name': 'Venue manager',
      'message': 'Please arrive for inspection by 2 PM.',
      'time': 'Tue'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Messages',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final msg = messages[index];
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple[200],
                child: Text(msg['name']![0]),
              ),
              title: Text(
                msg['name']!,
                style: const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                msg['message']!,
                style: const TextStyle(fontFamily: 'Poppins'),
              ),
              trailing: Text(
                msg['time']!,
                style: const TextStyle(fontSize: 12, fontFamily: 'Poppins'),
              ),
              onTap: () {
                // You can navigate to chat details screen here
              },
            ),
          );
        },
      ),
    );
  }
}
