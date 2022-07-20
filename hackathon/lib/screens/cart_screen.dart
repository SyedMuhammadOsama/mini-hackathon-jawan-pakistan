import 'package:flutter/material.dart';
import 'package:hackathon/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
          title: Text(
            'Cart',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
        body: ListView.builder(
            itemCount: 10, itemBuilder: (context, index) => CartItem()));
  }
}
