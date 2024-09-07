import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_flutter/articlepage.dart';
import 'package:news_flutter/home.dart';
import 'package:news_flutter/newsdetails.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Newsdetails(),
    );
  }
}