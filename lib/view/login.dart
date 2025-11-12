import 'package:day1/constant.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                onPressed: () {},
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
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 20),
                    obscureText: true,
                    decoration: InputDecoration(prefixIcon: Icon(Icons.lock)),
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
                  Text(
                    "___________"
                    "or"
                    "___________",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "social media login",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook),
                      SizedBox(width: 5),
                      Icon(Icons.mail),
                      SizedBox(width: 5),
                      Icon(Icons.apple),
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
