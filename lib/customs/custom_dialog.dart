// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import '../utils/styles.dart';

void showCustomDialog() {
  AuthController registertController = Get.put(AuthController());

  Get.defaultDialog(
    title: "Terms & Condition",
    content: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 300,
        height: 200,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SizedBox(
                  child: Text(
                      "If your website or app has the option to receive payments then including a Terms & Conditions is required by law. We will make sure that your Terms & Conditions ensures that you stay in line with your legal obligations For any app you are developing you will need a Terms & Conditions to launch it. Termify can help you generate the best for the case and get your app ready for review Many platforms like facebook are requiring users that are submitting their official apps to submit a Terms & Conditions even if you are not collecting any data from your users. Generate your Terms & Conditions and get your unique link to submit to those platforms"))
            ],
          ),
        ),
      ),
    ),
    actions: <Widget>[
      TextButton(
        child: const Text(
          "Dicline",
          style: Style.error_text_style,
        ),
        onPressed: () {
          Get.back();
        },
      ),
      TextButton(
        child: const Text(
          "Accept",
          style: Style.text_style,
        ),
        onPressed: () {
          Get.find<AuthController>().acceptTermsCondition();
          registertController.active.value = true;
        },
      )
    ],
  );
}
