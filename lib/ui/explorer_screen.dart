import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/data.dart';
import 'ai_agent_interaction_screen.dart';

class ExplorerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
      itemCount: actor.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        Actor ac = actor[index];
        return Column(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AIAgentInteractionScreen(),
                    ),
                  );
                },
                child: Image.network(
                  ac.profile,
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                )),
            Text('Stylist ${index + 1}'),
            ElevatedButton(
                onPressed: () async {
                  final Uri _url = Uri.parse(ac.link);
                  if (!await launchUrl(_url)) {
                    throw Exception('Could not launch $_url');
                  }
                },
                child: Text('Instagram Link'))
          ],
        );
      },
    ));
    // appBar: AppBar(title: Text('Stylists')),
    // body: ListView.builder(
    //   itemCount: 10, // Placeholder for number of stylists
    //   itemBuilder: (context, index) {
    //     return ListTile(
    //       title: Text('Stylist $index'),
    //       subtitle: Text('Instagram Link'),
    //       onTap: () {
    //         Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //             builder: (context) => AIAgentInteractionScreen(),
    //           ),
    //         );
    //       },
    //     );
    //   },
    // ),
  }
}
