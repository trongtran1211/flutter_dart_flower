import 'package:flutter/material.dart';
import 'package:health_care/mainpage.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});
  static String routeName = "/setting";

  @override
  // ignore: library_private_types_in_public_api
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool notificationsOn = true; // Example state for notifications
  String language = 'English'; // Example state for language
  String theme = 'Light mode'; // Example state for theme

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting and Information"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushNamed(Mainpage.routeName);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Information
            const Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      'assets/images/profile_image.png'), // Placeholder image
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nguyen Van A',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('doanflutter@gmail.com | 0898891234'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Settings Options
            Expanded(
              child: ListView(
                children: [
                  buildListTile(
                      context, Icons.person, 'Edit profile information'),
                  buildListTile(context, Icons.notifications, 'Notifications',
                      trailing: Text(notificationsOn ? 'ON' : 'OFF')),
                  buildListTile(context, Icons.language, 'Language',
                      trailing: Text(language)),
                  buildListTile(context, Icons.security, 'Security'),
                  buildListTile(context, Icons.brightness_6, 'Theme',
                      trailing: Text(theme)),
                  const Divider(),
                  buildListTile(context, Icons.help, 'Help & Support'),
                  buildListTile(context, Icons.contact_mail, 'Contact us'),
                  buildListTile(context, Icons.privacy_tip, 'Privacy policy'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(BuildContext context, IconData icon, String title,
      {Widget? trailing}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: trailing ?? const Icon(Icons.arrow_forward_ios),
      onTap: () {
        // Handle on tap if needed
        // For example, you can use setState to update the state
        if (title == 'Notifications') {
          setState(() {
            notificationsOn = !notificationsOn;
          });
        }
        // Add similar logic for other options if needed
      },
    );
  }
}
