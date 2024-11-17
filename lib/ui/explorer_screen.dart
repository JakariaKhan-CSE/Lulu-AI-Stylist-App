import 'package:flutter/material.dart';

import 'ai_agent_interaction_screen.dart';

class ExplorerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Stylists')),
      body: ListView.builder(
        itemCount: 10, // Placeholder for number of stylists
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Stylist $index'),
            subtitle: Text('Instagram Link'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AIAgentInteractionScreen(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
