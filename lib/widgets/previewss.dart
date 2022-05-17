import 'package:flutter/material.dart';

class Previewss extends StatelessWidget {
  const Previewss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.0),
          child: Text(
            'IPL - 2022',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 220,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 20),
            scrollDirection: Axis.horizontal,
            children: const [
              // Container(
              //   width: 80,
              //   height: 80,
              //   decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/31.jpg'))),
              // )

              Pree(image: 'assets/images/22.jpg'),
              // SizedBox(width: 10,),
              Pree(image: 'assets/images/24.jpg'),
              // SizedBox(width: 10,),
              Pree(image: 'assets/images/22.jpg'),
              //  SizedBox(width: 10,),
              Pree(image: 'assets/images/25.jpg'),
              // SizedBox(width: 10,),
              Pree(image: 'assets/images/22.jpg'),
              //  SizedBox(width: 10,),
              Pree(image: 'assets/images/21.jpg'),
              // return GestureDetector()
            ],
          ),
        ),
      ],
    );
  }
}

class Pree extends StatelessWidget {
  final String image;

  const Pree({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //  padding: const EdgeInsets.all(10),
        width: 130,
        height: 240,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
