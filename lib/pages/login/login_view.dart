import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../widgets/custom_text.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorsCode.primary_color,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Image.asset(
          Images.logo,
          scale: 25,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Style.distan_size20,
            Center(
              child: CircleAvatar(
                radius: 30,
                backgroundColor: ColorsCode.primary_color,
              ),
            ),
            Style.distan_size5,
            Center(child: CustomText("Welcome", 20)),
            Center(child: CustomText("Sign in to continue", 15)),
            Style.distan_size20,
            const Text("Phone Number", style: Style.dashboardBlackText400,),
            Style.distan_size5,
            SizedBox(
              height: Get.height * .06,
              width: Get.width,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  labelText: '01XXXXXXXXX',
                  prefixIcon: Icon(Icons.call),
                  prefixIconColor: ColorsCode.primary_color
                ),
              ),
            ),
            Style.distan_size10,
            const Text("Password", style: Style.dashboardBlackText400,),
            Style.distan_size5,
            SizedBox(
              height: Get.height * .06,
              width: Get.width,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: ColorsCode.primary_color,
                    suffixIcon: Icon(Icons.remove_red_eye),
                  suffixIconColor: ColorsCode.primary_color,
                ),
              ),
            ),
            Style.distan_size10,
            Align(
              alignment: Alignment.centerRight,
                child: CustomText("Forget Password?", 15)
            ),
            Style.distan_size10,
            GestureDetector(
              onTap: (){},
              child: Container(
                height: Get.height * .06,
                width: Get.width,
                decoration: BoxDecoration(color: ColorsCode.primary_color, border: Border.all(color: ColorsCode.primary_color),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: const Center(
                  child: Text("Sign In", style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            Style.distan_size10,
            Center(
              child: RichText(
                  text: TextSpan(
                    text: "Don\'t have an account?", style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: " Sign Up", style: TextStyle(color: Colors.pinkAccent)
                      )
                    ]
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}







