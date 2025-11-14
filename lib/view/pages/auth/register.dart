import 'package:day1/constant.dart';
import 'package:day1/view/pages/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                icon: Icon(Icons.arrow_back, size: 30),

                padding: EdgeInsets.only(right: 400),
              ),
            ),

            Text(
              "Hi!",
              style: TextStyle(fontSize: 44, fontWeight: FontWeight.w800),
            ),

            Text(
              "Create a new account",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 50),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(prefixIcon: Icon(Icons.person)),
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(prefixIcon: Icon(Icons.email)),
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 20),
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
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
                          "S I G N  U P",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
                  Text(
                    "social media Sign Up",
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
                        "Already have an account? ",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Text(
                          "Sign in",
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
