import 'dart:async';
import 'package:flutter/material.dart';
import 'package:little_leap_clone/Screens/Login_Screen.dart';
import 'package:little_leap_clone/Widgets/Zig_Zag_Zipper.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: <Widget>[
          Positioned(
            child: ClipPath(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                color: Color.fromARGB(255, 55, 255, 88),
              ),
              clipper: ZigZagClipper(),
            ),
          ),
          Positioned(
            top: 40,
            child: ClipPath(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                color: Color.fromARGB(204, 55, 226, 83),
              ),
              clipper: ZigZagClipper(),
            ),
          ),
          Positioned(
            top: 80,
            child: ClipPath(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                color: Color.fromARGB(153, 55, 226, 78),
              ),
              clipper: ZigZagClipper(),
            ),
          ),
          Center(
            child: Image.asset(
              "../assets/images/little-leap-white.png",
              width: 500,
              height: 500,
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  void navigationPage() async {
    // final prefs = await SharedPreferences.getInstance();
    // final token = prefs.getString('token') ?? '';
    // if (token.isEmpty) {
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => Wrapper(),
    //   ),
    // );
    // } else {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
    // }
  }
}
