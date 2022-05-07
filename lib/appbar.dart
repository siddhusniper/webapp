import 'dart:ui';

import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: const Center(
            child: Text(
              "TOURNAMENT MONITOR",
              style: TextStyle(
                color: Color.fromARGB(255, 214, 155, 46),
                fontSize: 40,
                fontWeight: FontWeight.bold,
                wordSpacing: 20,
                letterSpacing: 6,
              ),
            ),
          ),
        ),
      ),
      // child:  const Text(
      //       "TOURNAMENT MONITOR",
      //       style: TextStyle(
      //         color: Color.fromARGB(255, 214, 155, 46),
      //         fontSize: 40,
      //         fontWeight: FontWeight.bold,
      //         wordSpacing: 20,
      //         letterSpacing: 6,
      //       ),
      //     ),
    );
  }
}
