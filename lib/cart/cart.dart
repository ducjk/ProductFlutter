import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartStore extends StatelessWidget {
  const CartStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        Text("Cart store")
      ]),
    );
  }
}
