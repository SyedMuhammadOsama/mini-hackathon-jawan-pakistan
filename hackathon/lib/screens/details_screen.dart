import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = 'DetailsScreen';
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Image.asset(
                'assets/Bitmap (3).png',
              ),
              Positioned(
                left: 5,
                top: 15,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back),
                ),
              ),
              Positioned(
                right: 40,
                top: 15,
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.favorite_outline)),
              ),
              Positioned(
                right: 5,
                top: 15,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.double_arrow),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Here all the details will come',
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '29.92',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ]),
      ),
    );
  }
}
