import 'package:ecommerceassignment/color_constant.dart';
import 'package:ecommerceassignment/screens/login.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Image.asset("assets/main.png"),
          Text(
            "Welcome to STStore",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
          ),
          Text("With Experience in the audio industry"),
          Text("We create best quality product"),
          Container(
              margin: EdgeInsets.all(20),
              height: 35,
              width: 300,
              color: Color(ColorConstant.brownColor),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "Get Started ",
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    ));
  }
}
