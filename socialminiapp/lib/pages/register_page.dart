// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:socialminiapp/components/button.dart';
import 'package:socialminiapp/components/textfield.dart';
import 'package:socialminiapp/helper/helper_functions.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // register
  void register() async {
    // show loading circle
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));

    // make sure the passwords match
    if (passwordController.text != confirmPasswordController.text) {
      // poploading circl
      Navigator.pop(context);

      // display error message to the user
      displayMessageToUser("Passwords don't match", context);
    } else {
      // try creating user
      try {
        // create the user
        UserCredential? userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);

        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        // pop loading circle
        Navigator.pop(context);

        // display error message
        displayMessageToUser(e.code, context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    hintText: "Username",
                    obscureText: false,
                    controller: usernameController),
                const SizedBox(height: 18),
                // txt field
                MyTextField(
                    hintText: "Email",
                    obscureText: false,
                    controller: emailController),
                const SizedBox(height: 18),
                // password field
                MyTextField(
                    hintText: "Password",
                    obscureText: true,
                    controller: passwordController),
                const SizedBox(height: 18),
                // confirm password field
                MyTextField(
                    hintText: "Confirm Password",
                    obscureText: true,
                    controller: confirmPasswordController),
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
                // register button
                MyButton(
                  text: "Register",
                  onTap: register,
                ),
                const SizedBox(height: 25),
                // do not have an account ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        " Login Here",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
