import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.close)),
            ListTile(
              minVerticalPadding: 10,
              title: Text('Name',
                  style: const TextStyle(
                    fontSize: 17,
                    height: 1.5,
                  )),
              isThreeLine: true,
              subtitle: Text(
                'details',
                style: const TextStyle(height: 1.5),
              ),
              leading: Image.network(
                'https://images.unsplash.com/photo-1657987273424-f9eb89bb9c23?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60',
              ),
              trailing: Text('29.99', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}
