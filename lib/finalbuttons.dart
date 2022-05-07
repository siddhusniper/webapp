import 'package:flutter/material.dart';

class Finalbuttons extends StatefulWidget {
  const Finalbuttons({Key? key}) : super(key: key);

  @override
  State<Finalbuttons> createState() => _FinalbuttonsState();
}

class _FinalbuttonsState extends State<Finalbuttons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          width: 100,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              "SAVE",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 50,
              color: Colors.red,
              onPressed: () {},
              icon: const Icon(Icons.add_box_rounded),
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              iconSize: 50,
              color: Colors.red,
              onPressed: () {},
              icon: const Icon(Icons.remove_circle_rounded),
            )
          ],
        )
      ],
    );
  }
}
