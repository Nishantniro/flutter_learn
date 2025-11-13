import 'package:flutter/material.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ListView(
          children: [Image.asset("assets/bording.png", height: 50, width: 50)],
        ),
      ),
    );
  }
}
