import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: 300,
          height: 200,
          child: Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            color: Colors.lightBlueAccent,
            child: Image.asset("assets/icon.png"),
          ),
        ),
      ),
    );
  }
}
