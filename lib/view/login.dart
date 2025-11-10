import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          color: Colors.amber,
          width: double.maxFinite,

          height: double.maxFinite,
          child: Container(
            margin: EdgeInsets.all(30),
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
