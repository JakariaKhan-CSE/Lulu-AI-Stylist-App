import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Location')),
            TextField(decoration: InputDecoration(labelText: 'Age')),
            // Add more fields as needed
            ElevatedButton(
              onPressed: () {
                // Save user data
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
