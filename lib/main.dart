import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home_page/homepage.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "DS Pharmacy",
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}


