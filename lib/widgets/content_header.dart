import 'package:flutter/material.dart';
import 'package:sony_liv_3/widgets/vertical_icon_button.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({Key? key}) : super(key: key);

  //final urlImages = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      //alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/kgf3.jpg'),
            fit: BoxFit.fill,
          )),
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
        const Positioned(
          left: 100,
          right: 90,
          bottom: 110,
          child: SizedBox(
              width: 250,
              child: Text(
                'IPL-2022',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white54,
                    fontStyle: FontStyle.italic),
              )),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const VerticalIconButton(
                  title: 'List',
                  icon: Icons.add,
                ),
                ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 32, 37, 56)),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.subscriptions,
                      color: Colors.white,
                      size: 25,
                    ),
                    label: const Text('Subscribe')),
                const VerticalIconButton(
                  icon: Icons.info_outline,
                  title: 'Info',
                  // onTap: () => print('My Info'),
                ),
              ],
            ))
      ],
    );
  }
}

class Caro extends StatefulWidget {
  const Caro({Key? key}) : super(key: key);

  @override
  State<Caro> createState() => _CaroState();
}

class _CaroState extends State<Caro> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
