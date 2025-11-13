import 'package:flutter/material.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.min,

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //padding: EdgeInsets.fromLTRB(50, 200, 50, 200),
            child: Image.asset(
              "assets/onboarding/onboarding_image.png",
              //fit: BoxFit.cover,
              height: 50,
              width: 50,
            ),
          ),
        ],
      ),
    );
  }
}
