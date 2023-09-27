import 'package:flutter/material.dart';
import 'pages/homepage.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DS Pharmacy",
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}


