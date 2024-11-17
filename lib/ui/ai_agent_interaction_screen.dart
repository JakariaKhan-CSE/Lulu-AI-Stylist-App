import 'package:flutter/material.dart';

class AIAgentInteractionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AI Stylist')),
      body: Column(
        children: [
          Expanded(child: Container()), // Placeholder for chat interface
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Ask your stylist...',
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Handle sending message
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
