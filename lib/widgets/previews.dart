import 'package:flutter/material.dart';

class Previews extends StatelessWidget {
  const Previews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.0),
          child: Text(
            'Watch In Your Language',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 140,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            scrollDirection: Axis.horizontal,
            children: const [
              // Container(
              //   width: 80,
              //   height: 80,
              //   decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/31.jpg'))),
              // )

              Pre(image: 'assets/images/31.jpg'),
              Pre(image: 'assets/images/32.jpg'),

              Pre(image: 'assets/images/33.jpg'),
              SizedBox(
                width: 10,
              ),
              Pre(image: 'assets/images/32.jpg'),
              Pre(image: 'assets/images/35.jpg'),
              Pre(image: 'assets/images/31.jpg'),
              // return GestureDetector()
            ],
          ),
        ),
      ],
    );
  }
}

class Pre extends StatelessWidget {
  final String image;

  const Pre({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // padding: const EdgeInsets.all(10),
        width: 120,
        height: 150,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
