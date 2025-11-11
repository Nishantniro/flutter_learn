import 'package:day1/constant.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Login")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Padding(padding: EdgeInsets.only(top: 50)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            padding: EdgeInsets.only(right: 100),
          ),

          Text(
            "welcome!",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
          ),
          Text(
            "sign in to continue",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 20),
          Form(
            child: Column(
              children: [
                TextFormField(decoration: InputDecoration(hint: Text("Email"))),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(hint: Text("password")),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: PRIMARY_COLOR,
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(fontFamily: "times new roman"),
                  ),
                ),
                TextButton(onPressed: () {}, child: Text("Forgot Password?")),
                Text("social media login"),
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
    );
  }
}
