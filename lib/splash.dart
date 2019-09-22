import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), ()=> Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => Login()),ModalRoute.withName("/home") ));
  }



  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    SystemChrome.setEnabledSystemUIOverlays([]);

    return WillPopScope(
      onWillPop: ()=> Future.value(false),
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assests/images/splash.jpg'),
                  fit: BoxFit.fill
                )
              ),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.0)
                  ),
                ),
              ),
            )
            /*Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.green[400],
                      Colors.cyan[200],
                      Colors.cyan[300],
                      Colors.cyan[400]
                    ],
                    stops: [0.1, 0.5, 0.7, 0.9],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  )
              ),
            ),*/,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.all(Radius.circular(50.0))
                            ),
                            height: 100,

                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Welcome to",
                                style: TextStyle(
                                  fontFamily: 'chlorine',
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Khushi Dress Center",
                                style: TextStyle(
                                  fontFamily: 'adlery',
                                  color: Colors.redAccent,
                                  fontSize: 40,
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}