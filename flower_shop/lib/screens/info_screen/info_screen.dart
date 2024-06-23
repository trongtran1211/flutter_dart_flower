import 'package:flutter/material.dart';
import 'package:health_care/mainpage.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});
  static String routeName = "/info";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal information"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushNamed(Mainpage.routeName);
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile_image.png'),
            ),
            SizedBox(height: 10),
            Text(
              'Nguyen Van A',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            InfoField(label: 'Full name', value: 'Nguyen Van A'),
            InfoField(label: 'Email', value: 'doanflutter@gmail.com'),
            InfoField(label: 'Phone number', value: '0989891234'),
            Row(
              children: [
                Expanded(
                  child: InfoField(label: 'Country', value: 'Ho Chi Minh'),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: InfoField(label: 'Gender', value: 'Male'),
                ),
              ],
            ),
            InfoField(
                label: 'Address',
                value: '828 Su Van Hanh, Phuong 13, Quan 10, TP.HCM'),
          ],
        ),
      ),
    );
  }
}

class InfoField extends StatelessWidget {
  final String label;
  final String value;

  const InfoField({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.grey[200],
              padding: const EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(value),
            ),
          ),
        ],
      ),
    );
  }
}
