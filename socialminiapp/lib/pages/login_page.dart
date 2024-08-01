// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:socialminiapp/components/button.dart';
import 'package:socialminiapp/components/textfield.dart';

class LoginPage extends StatelessWidget {
  // text controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController password = TextEditingController();

  LoginPage({super.key});

  // login
  void login() {}
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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

              const SizedBox(height: 55),

              // txt field
              MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: emailController),

              const SizedBox(height: 18),

              // txt field
              MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: emailController),

              const SizedBox(height: 18),

              // forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot password",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary)),
                ],
              ),
              const SizedBox(height: 25),

              // login button
              MyButton(
                text: "Login",
                onTap: login,
              ),
              const SizedBox(height: 25),

              // do not have an account ?
              Row(
                children: [
                  Text("Don't have an account?"),
                  Text(
                    "Register Here",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ]),
          ),
        ));
  }
}
