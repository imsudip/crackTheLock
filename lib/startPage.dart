import 'package:animated_background/animated_background.dart';
import 'package:animated_background/bubbles.dart';
import 'package:crackTheLock/color.dart';
import 'package:crackTheLock/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> with TickerProviderStateMixin {
  // BubbleOptions _bubbleOptions = BubbleOptions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(
          options: ParticleOptions(
              baseColor: CupertinoColors.destructiveRed,
              spawnMinSpeed: 10,
              spawnMaxSpeed: 25,
              spawnMinRadius: 15,
              spawnMaxRadius: 50,
              particleCount: 12,
              minOpacity: 0.05,
              maxOpacity: 0.25,
              opacityChangeRate: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: Text(
                "CRACK THE \nLOCK",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: darkgrey, fontSize: 42, fontWeight: FontWeight.w600, letterSpacing: 1.5),
              ),
            )),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 18),
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: darkgrey, width: 2),
                          color: white,
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.blueGrey.withOpacity(0.2),
                          //       offset: Offset(1, 1),
                          //       blurRadius: 6,
                          //       spreadRadius: 4)
                          // ]
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          LineIcons.book,
                          color: darkgrey,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => GamePage()));
                    },
                    child: Container(
                        height: 60,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
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
                          "Play",
                          style: TextStyle(color: white, fontSize: 32, fontWeight: FontWeight.w300),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 18),
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: darkgrey, width: 2),
                          color: white,
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.blueGrey.withOpacity(0.2),
                          //       offset: Offset(1, 1),
                          //       blurRadius: 6,
                          //       spreadRadius: 4)
                          // ]
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          LineIcons.trophy,
                          color: darkgrey,
                        )),
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
