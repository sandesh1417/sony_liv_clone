import 'package:flutter/material.dart';

class Previewsss extends StatelessWidget {
  const Previewsss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 10),
          child: Text(
            'LIV Originals',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 160,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            scrollDirection: Axis.horizontal,
            children: const [
              // Container(
              //   width: 80,
              //   height: 80,
              //   decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/31.jpg'))),
              // )

              Preee(image: 'assets/images/41.jpg'),
              //SizedBox(width: 10,),
              Preee(image: 'assets/images/42.jpg'),
              //SizedBox(width: 10,),
              Preee(image: 'assets/images/43.jpg'),
              // SizedBox(width: 10,),
              Preee(image: 'assets/images/44.jpg'),
              //  SizedBox(width: 10,),
              Preee(image: 'assets/images/45.jpg'),
              //SizedBox(width: 10,),
              Preee(image: 'assets/images/46.jpg'),
              // return GestureDetector()
            ],
          ),
        ),
      ],
    );
  }
}

class Preee extends StatelessWidget {
  final String image;

  const Preee({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 140,
        height: 120,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.green, width: 4.0),
            image: DecorationImage(image: AssetImage(image))),
      ),
    );
  }
}
