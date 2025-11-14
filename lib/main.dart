//import 'package:day1/view/pages/auth/login.dart';
import 'package:day1/view/pages/auth/register.dart';
//import 'package:day1/view/pages/onboarding/first_onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter practice",
      home: Register(),
    );
  }
}
