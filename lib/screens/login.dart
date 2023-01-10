import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Image.asset("../assets/location.png"),
              Text(
                "Perth, Western Austrailia",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                (Text(
                  "Let's Sign You in",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )),
                Text("Welcome back, You've been missed")
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                TextField(
                    controller: username,
                    decoration: InputDecoration(
                      labelText: "Username",
                      icon: Icon(
                        Icons.people,
                        color: Colors.black,
                      ), //icon at head of input
                    )),
                TextField(
                    controller: password,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock), //icon at head of input
                        //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too.
                        labelText: "Password",
                        suffixIcon:
                            Icon(Icons.remove_red_eye) //icon at tail of input
                        )),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                      side: BorderSide(width: 90, color: Colors.brown),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                Text(
                  "Sign up",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Continue with Facebook"),
            ),
          )
        ],
      ),
    );
  }
}
