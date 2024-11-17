import 'package:flutter/material.dart';

class WardrobeSuggestionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wardrobe Suggestions')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 10, // Placeholder for wardrobe items
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Expanded(child: Container()), // Placeholder for image
                Text('Outfit $index'),
              ],
            ),
          );
        },
      ),
    );
  }
}
