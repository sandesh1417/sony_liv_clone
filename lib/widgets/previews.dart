import 'package:flutter/material.dart';

class Previews extends StatelessWidget {
  const Previews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Watch In Your Language',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 100  ,
          child: 
          ListView(
            //padding: EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            children: [
              // Container(
              //   width: 80,
              //   height: 80,
              //   decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/31.jpg'))),
              // )



              Pre(image: 'assets/images/31.jpg'),
              Pre(image: 'assets/images/32.jpg'),
              Pre(image: 'assets/images/33.jpg'),
              Pre(image: 'assets/images/1.jpg'),
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
    return Container(
      
     width: 120,
     height: 120,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image))),
    );
  }
}
