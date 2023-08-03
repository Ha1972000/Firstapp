import 'dart:async';
import 'package:firstapp/view/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ));
      // TODO: implement initState

      @override
      Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Color(0xFFFADEF0),
            body: Container(
                child: (Center(
              child: Lottie.asset('assets/meo.json', width: 200, height: 200),
            ))));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
