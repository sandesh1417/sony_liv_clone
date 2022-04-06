import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;
  // const CustomAppBar({ Key? key }) : super(key: key);
  const CustomAppBar({
    this.scrollOffset = 0.0,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Container(
                height: 80,
                width:80,

                decoration:BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/3.jpg')))),
            const SizedBox(
              width: 12.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton(
                    title: 'TV Shows',
                    onTap: () {
                      print('TV Shows');
                    },
                  ),
                  _AppBarButton(
                    title: 'Movies',
                    onTap: () {
                      print('Movies');
                    },
                  ),
                  _AppBarButton(
                    title: 'My List',
                    onTap: () {
                      print('My List');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  //const _AppBarbutton({Key? key}) : super(key: key);
  const _AppBarButton({required this.title, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onTap,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white,
        fontSize: 16.0,
        fontWeight: FontWeight.w600),
        
      ),
    );
  }
}
