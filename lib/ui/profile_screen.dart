import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'bottom_nav.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                child: Image.network('https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/default-profile-picture-male-icon.png'),
              ),
              Divider(),
              SizedBox(height: 50,),
     Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text('Name: Md. Jakaria Ibna Azam Khan',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
         SizedBox(height: 20,),
         Text('Age: 24',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
         SizedBox(height: 20,),
         Text('Location: Jashore, Bangladesh',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
       ],
     )
            ],
          ),
        ),
      ),
    );
  }
}
