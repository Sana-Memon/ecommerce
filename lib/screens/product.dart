import 'package:ecommerceassignment/screens/single_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../color_constant.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customerAppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Browse By Categories",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Item("../assets/p1.png"),
                    Item("../assets/p2.png"),
                    Item("../assets/p3.png"),
                    Item("../assets/p4.png"),
                    Item("../assets/p5.png"),
                    Item("../assets/p6.png"),
                  ],
                ),
              ),
              Text(
                "Reommended for you",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("../assets/p1.png"),
                        Image.asset("../assets/p2.png"),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("../assets/p1.png"),
                        Image.asset("../assets/p2.png"),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("../assets/p1.png"),
                        Image.asset("../assets/p2.png"),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  customerAppBar() {
    return AppBar(
      leading: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
    );
  }

  Item(String picture) {
    return Container(
      color: Color(ColorConstant.backgroundProduct),
      margin: EdgeInsets.all(20),
      // height: 50,
      // width: 250,
      child: Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SingalProduct()));
              },
              child: (Image.asset(picture))),
          Text(
            "Speaker",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("100+ products")
        ],
      ),
    );
  }
}
