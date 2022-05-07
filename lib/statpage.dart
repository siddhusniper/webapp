import 'package:flutter/material.dart';
import 'package:myfirstwebapp/startelement.dart';

class Statpage extends StatefulWidget {
  const Statpage({Key? key}) : super(key: key);

  @override
  State<Statpage> createState() => _StatpageState();
}

class _StatpageState extends State<Statpage> {
  // String texts = "DATA";
  // callback(textfind) {
  //   setState(() {
  //     texts = textfind;
  //   });
  // }
  String title = "DATA";
  void change() {
    setState(() {
      title = controler.text;
    });
  }
  // refresh function f

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 500,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                        fontSize: 35),
                  ),
                ),
              ),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
              Fillrows(),
            ],
          ),
        ],
      ),
    );
  }
}

class Fillrows extends StatefulWidget {
  const Fillrows({Key? key}) : super(key: key);

  @override
  State<Fillrows> createState() => _FillrowsState();
}

class _FillrowsState extends State<Fillrows> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 19.3,
          width: 70,
          color: Colors.black,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black),
            onPressed: () {},
            onLongPress: () {},
            child: Container(),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 19.3,
          width: 430,
          color: Colors.blueAccent,
          child: ElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 300,
                  child: TextFormField(),
                ),
                Container(
                  width: 50,
                ),
              ],
            ),
            onPressed: () {},
            onLongPress: () {},
          ),
        ),
      ],
    );
  }
}
