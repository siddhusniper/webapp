import 'package:flutter/material.dart';
import 'package:myfirstwebapp/appbar.dart';
import 'package:myfirstwebapp/startelement.dart';
import 'package:myfirstwebapp/statpage.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Appbar(),
              Startelement(),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Statpage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
