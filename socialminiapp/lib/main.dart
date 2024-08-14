// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socialminiapp/auth/auth.dart';
import 'package:socialminiapp/auth/login_or_register.dart';
import 'package:socialminiapp/firebase_options.dart';
import 'package:socialminiapp/pages/home_page.dart';
import 'package:socialminiapp/pages/profile_page.dart';
import 'package:socialminiapp/pages/users.dart';
import 'package:socialminiapp/theme/dark_mode.dart';
import 'package:socialminiapp/theme/light_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: RegisterPage(),
      home: AuthPage(),
      theme: lightMode,
      darkTheme: lightMode,

      // create some routes
      routes: {
        "/login_or_register": (context) => const LoginOrRegister(),
        "/home_page": (context) => const HomePage(),
        "/profile_page": (context) => const ProfilePage(),
        "/users": (context) => const MyUsers(),
      },
    );
  }
}
