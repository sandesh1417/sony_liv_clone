import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sony_liv_3/widgets/vertical_icon_button.dart';


class ContentHeader extends StatelessWidget {
  const ContentHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(

      //alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('assets/images/12.jpg'),
            fit: BoxFit.cover,
            )
          ),
        ),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),

        Positioned(
          left: 0,
          right: 0,
          bottom: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            
              VerticalIconButton(title: 'List',icon: Icons.add,),

                         ElevatedButton.icon(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 32, 37, 56)),),
                onPressed: (){}, icon: Icon(Icons.subscriptions, color: Colors.white,size: 25,), label: Text('Subscribe')),

              VerticalIconButton(
                icon: Icons.info_outline,
                title: 'Info',
               // onTap: () => print('My Info'),
              ),
          ],))

      ],
      
    );
  }
}