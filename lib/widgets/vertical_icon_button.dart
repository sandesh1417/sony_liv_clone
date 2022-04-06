import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class VerticalIconButton extends StatelessWidget {
  final IconData icon;
  final String title;

  

  const VerticalIconButton({Key? key, required this.icon, required this.title,  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        children:[
          Icon(icon,
          color: Colors.white,),
            const SizedBox(height: 2.0,),
            Text(title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),)

        ]
      ),
    );
  }
}
