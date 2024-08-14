// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class MyUsers extends StatelessWidget {
  const MyUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Users")),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
    );
  }
}
