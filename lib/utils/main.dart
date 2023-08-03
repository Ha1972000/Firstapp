// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:firstapp/view/cat.dart';
import 'package:firstapp/view/dog.dart';
import 'package:firstapp/view/foods.dart';
import 'package:firstapp/view/mouse.dart';
import 'package:firstapp/view/price.dart';
import 'package:firstapp/view/setting.dart';
import 'package:firstapp/view/splash.dart';
import 'package:firstapp/view/vay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

