import 'package:flutter/material.dart';
import 'package:lulu_ai_stylist/ui/profile_screen.dart';

import 'explorer_screen.dart';

class BottomNavController extends StatefulWidget {

  const BottomNavController({super.key,});

  @override
  State<BottomNavController> createState() => _HomePageState();
}

class _HomePageState extends State<BottomNavController> {
  int x=0;

  final _pages = [ExplorerScreen(),ProfileScreen()];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text("E-Commerce"),centerTitle: true,),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: x,
        elevation: 5,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.white),

          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile",backgroundColor: Colors.white),
        ],
        onTap: (index){
          setState(() {
            x = index;
          });
        },
      ),
      body: _pages[x],
    );
  }
}