import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:crackTheLock/color.dart';
import 'package:crackTheLock/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              LineIcons.gear,
              color: activeBlue,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "CRACK THE \nLOCK",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: darkgrey, fontSize: 42, fontWeight: FontWeight.w600, letterSpacing: 1.5),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            buttonUi(
                title: "New Game",
                callback: () {
                  print("object");
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => GamePage()));
                }),
            buttonUi(title: "Pro Mode", callback: () {}),
            buttonUi(title: "Tutorial", callback: () {}),
            buttonUi(title: "Exit", callback: () {}),
          ],
        ),
      ),
    );
  }

  Widget buttonUi({String title, Function callback}) {
    bool ispressed = false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            callback();
          },
          child: Container(
              height: 50,
              //width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: activeBlue,
                  boxShadow: [
                    BoxShadow(
                        color: activeBlue.withOpacity(0.2),
                        offset: Offset(1, 1),
                        blurRadius: 6,
                        spreadRadius: 4)
                  ]),
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    color: ispressed ? activeBlue : white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              )),
        ),
      ),
    );
  }
}
