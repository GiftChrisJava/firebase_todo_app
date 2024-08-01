// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:socialminiapp/components/textfield.dart';

class LoginPage extends StatelessWidget {
  // text controllers
  TextEditingController emailController = TextEditingController();

  TextEditingController password = TextEditingController();

  LoginPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // logo
            Icon(
              Icons.person,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),

            // app name
            Text(
              'M  I N I M A L',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            // txt field

            MyTextField(
                hintText: "Email",
                obscureText: false,
                controller: emailController),
          ]),
        ));
  }
}
