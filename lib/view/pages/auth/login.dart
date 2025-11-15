//import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

import 'package:day1/constant.dart';
import 'package:day1/view/pages/auth/register.dart';
import 'package:day1/view/pages/onboarding/first_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:developer';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible = false;

  TextEditingController emailController = TextEditingController(
    text: "demo mail",
  );
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 50,
              //width: 30,
              //padding: EdgeInsets.only(right: 200),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstOnboarding()),
                  );
                },
                icon: Icon(Icons.arrow_back, size: 30),

                padding: EdgeInsets.only(right: 400),
              ),
            ),

            Text(
              "welcome!",
              style: TextStyle(fontSize: 44, fontWeight: FontWeight.w800),
            ),

            Text(
              "sign in to continue",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 50),
            Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(prefixIcon: Icon(Icons.email)),

                    controller: emailController,
                    onChanged: (value) {
                      log(value);
                    },
                    onSaved: (newValue) => log(newValue ?? "j"),
                    onFieldSubmitted: (value) {
                      log("called from on field submitted $value");
                    },
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 20),
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Padding(
                        padding: EdgeInsetsGeometry.fromLTRB(0, 0, 5, 0),
                        child: GestureDetector(
                          onTap: _togglePasswordVisibility,
                          child: Icon(
                            _passwordVisible
                                ? Icons.visibility_rounded
                                : Icons.visibility_off_rounded,
                          ),
                        ),
                      ),
                    ),
                    controller: passwordController,
                    obscuringCharacter: "*",
                  ),

                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: PRIMARY_COLOR,
                          foregroundColor: Colors.white,
                          minimumSize: Size(double.infinity, 45),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text(
                          "L O G I N",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(endIndent: 5, indent: 5, thickness: 3),
                      ),
                      Text("OR"),
                      Expanded(
                        child: Divider(endIndent: 5, indent: 5, thickness: 3),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "social media login",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/google.svg', // Path to your SVG file
                        width: 35, // Desired width for the icon
                        height: 35, // Desired height for the icon
                      ),
                      // Icon(Icons.facebook),
                      SizedBox(width: 20),
                      SvgPicture.asset(
                        'assets/facebook.svg', // Path to your SVG file
                        width: 35, // Desired width for the icon
                        height: 35, // Desired height for the icon
                      ),
                      SizedBox(width: 20),
                      SvgPicture.asset(
                        'assets/apple.svg', // Path to your SVG file
                        width: 35, // Desired width for the icon
                        height: 35, // Desired height for the icon
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 18, color: PRIMARY_COLOR),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
