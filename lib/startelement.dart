import 'package:flutter/material.dart';
import 'package:myfirstwebapp/statpage.dart';

bool titleread = false;
bool activebutton = true;
bool textfieldcolor = true;
final controler = TextEditingController();

class Startelement extends StatefulWidget {
  const Startelement({Key? key}) : super(key: key);
  @override
  State<Startelement> createState() => _StartelementState();
}

class _StartelementState extends State<Startelement> {
  // final controler = TextEditingController();

  // void initstate() {
  //   super.initState();
  //   controler = TextEditingController();
  //   controler.addListener(() {
  //     final activebutton = controler.text.isNotEmpty;
  //     setState(() {
  //       this.activebutton = activebutton;
  //     });
  //   });
  // }

  // void dispose() {
  //   controler.dispose();
  //   super.dispose();
  // }

  void callstate() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 50),
      color: Colors.white,
      shadowColor: Colors.white,
      elevation: 10,
      child: SizedBox(
        height: 250,
        width: 500,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              const Text(
                'ADD TITLE',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 500,
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: controler,
                  readOnly: titleread,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromARGB(221, 255, 193, 7),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    // border: OutlineInputBorder(
                    //   borderSide: const BorderSide(
                    //     color: Color.fromARGB(228, 255, 193, 7),
                    //     width: 2.0,
                    //   ),
                    //   borderRadius: BorderRadius.circular(25),
                    // ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromARGB(223, 255, 193, 7),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  style: TextStyle(
                    color: textfieldcolor ? Colors.black : Colors.black54,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Buttonsettings(
                      "SAVE",
                      true,
                      false,
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(20, 20),
                          bottomLeft: Radius.elliptical(20, 20),
                          topRight: Radius.elliptical(100, 50),
                          bottomRight: Radius.elliptical(100, 50),
                        ),
                      ),
                      callstate,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Buttonsettings(
                      "EDIT",
                      false,
                      true,
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(100, 50),
                          bottomLeft: Radius.elliptical(100, 50),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      callstate,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Buttonsettings extends StatefulWidget {
  final String maintext;
  bool titlesread;
  bool textfieldcolors;
  final RoundedRectangleBorder borderwidget;
  final Function onpress;
  Buttonsettings(this.maintext, this.titlesread, this.textfieldcolors,
      this.borderwidget, this.onpress,
      {Key? key})
      : super(key: key);

  @override
  State<Buttonsettings> createState() => _ButtonsettingsState();
}

class _ButtonsettingsState extends State<Buttonsettings> {
  // final GlobalKey<State<Statpage>> key = GlobalKey();
  // final mykey = GlobalKey<_StatpageState>();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 10,
        primary: Colors.amber,
        shape: widget.borderwidget,
      ),
      onPressed: activebutton
          ? () {
              titleread = widget.titlesread;
              textfieldcolor = widget.textfieldcolors;

              // if (widget.maintext == "SAVE") {

              //   // Statpage(
              //   //     // key: mykey,
              //   //     );
              //   // mykey.currentState!.change();
              // } else {
              //   widget.onpress();
              // }
              widget.onpress();
            }
          : null,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.maintext,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
