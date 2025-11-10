import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: ListView(
        children: [
          Text(
            "welcome!",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          Text(
            "sign in to continue",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
