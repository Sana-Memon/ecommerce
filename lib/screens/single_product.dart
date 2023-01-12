import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingalProduct extends StatefulWidget {
  const SingalProduct({super.key});

  @override
  State<SingalProduct> createState() => _SingalProductState();
}

class _SingalProductState extends State<SingalProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
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
