import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../color_constant.dart';

class SingalProduct extends StatefulWidget {
  const SingalProduct({super.key});

  @override
  State<SingalProduct> createState() => _SingalProductState();
}

class _SingalProductState extends State<SingalProduct> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: myAppBar(),
        body: Item("../assets/p1.png"),
      ),
    );
  }

  Item(String picture) {
    return Center(
      child: Container(
        color: Color(ColorConstant.backgroundProduct),
        margin: EdgeInsets.all(20),
        // height: 50,
        // width: 250,
        child: Column(
          children: [
            GestureDetector(onTap: () {}, child: (Image.asset(picture))),
            Text(
              "Speaker",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("100+ products")
          ],
        ),
      ),
    );
  }

  myAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      title: Text(
        'Speaker',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        Icon(
          Icons.menu,
          color: Colors.black,
        )
      ],
    );
  }
}
