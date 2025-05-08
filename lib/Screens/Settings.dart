import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          SettingsOption(
            icon: Icons.info_outline,
            title: 'Basic Event Info',
          ),
          SizedBox(height: 16),
          SettingsOption(
            icon: Icons.lock_outline,
            title: 'Privacy Settings',
          ),
          SizedBox(height: 16),
          SettingsOption(
            icon: Icons.color_lens_outlined,
            title: 'Theme & Personalization',
          ),
          SizedBox(height: 16),
          SettingsOption(
            icon: Icons.event_note_outlined,
            title: 'Event Schedule',
          ),
          SizedBox(height: 16),
          SettingsOption(
            icon: Icons.attach_money_outlined,
            title: 'Budget Tracking',
          ),
          SizedBox(height: 16),
          SettingsOption(
            icon: Icons.notifications_none,
            title: 'Notification Settings',
          ),
        ],
      ),
    );
  }
}

class SettingsOption extends StatelessWidget {
  final IconData icon;
  final String title;

  const SettingsOption({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(12),
      child: ListTile(
        leading: Icon(icon, color: Colors.deepPurple),
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // TODO: Implement onTap navigation or functionality
        },
      ),
    );
  }
}
