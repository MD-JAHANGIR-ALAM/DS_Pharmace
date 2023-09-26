// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';
import '../utils/styles.dart';

class GuestButton extends StatelessWidget {
  const GuestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: const Size(1, 40),
      ),
      onPressed: () {
        Navigator.pushReplacementNamed(context, RouteManeger.getInitialRoute());
      },
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: '${'continue_as'.tr} ',
            style:
                robotoRegular.copyWith(color: Theme.of(context).disabledColor)),
        TextSpan(
            text: 'guest'.tr,
            style: robotoMedium.copyWith(
                color: Theme.of(context).textTheme.bodyText1!.color)),
      ])),
    );
  }
}
