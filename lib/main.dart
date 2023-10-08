import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home_page/homepage.dart';

void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "DS Pharmacy",
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}


