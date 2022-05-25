import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const GNav(
        activeColor: Colors.amberAccent,
        backgroundColor: Colors.white,
        color: Colors.black,

        //    rippleColor: Colors.blueAccent,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            textColor: Colors.black,
          ),
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
        ],
      ),
    );
  }
}
