import 'package:flutter/material.dart';
//import 'package:sony_liv_3/widgets/previews.dart';

class ContentList extends StatelessWidget {
  const ContentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'IPL-2022 ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    Container(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        scrollDirection: Axis.horizontal,
        children: [
          // Container(
          //   width: 80,
          //   height: 80,
          //   decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/31.jpg'))),
          // )

          Pree(image: 'assets/images/31.jpg'),
          Pree(image: 'assets/images/32.jpg'),
          Pree(image: 'assets/images/33.jpg'),
          Pree(image: 'assets/images/1.jpg'),
          Pree(image: 'assets/images/35.jpg'),
          Pree(image: 'assets/images/31.jpg'),
          // return GestureDetector()
        ],
      ),
    );
  }
}


class Pree extends StatelessWidget {
 final String image;

  const Pree({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
     width: 10,
     height: 10,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image))),
    );
  }
}