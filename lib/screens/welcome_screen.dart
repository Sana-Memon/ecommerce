import 'package:ecommerceassignment/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              child: Image.asset("../assets/main.png")),
          Text(
            "Welcome to STStore",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
          ),
          Text("With Experience in the audio industry"),
          Text("We create best quality product"),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
            onPressed: () {},
            child: Text(
              "Get started",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    ));
  }
}
