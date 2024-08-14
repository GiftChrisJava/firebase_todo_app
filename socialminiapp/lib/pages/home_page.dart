// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:socialminiapp/components/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // logout user
  void logout() {
    // Implement logout logic here
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Page")),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          // logout button
          IconButton(
              onPressed: logout, icon: Icon(Icons.logout, color: Colors.white)),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
