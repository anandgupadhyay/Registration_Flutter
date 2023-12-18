import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tors_tv/screens/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SignupScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(alignment: Alignment.center,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blueGrey,
                ),
                // Image.asset(
                //   "res/images/appicon.png",
                //   width: deviceWidth / 2.5,
                //   height: deviceHeight / 2.5,
                // ),
                Text(
                  "Demo App",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
