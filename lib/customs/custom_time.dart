import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/colors_code.dart';
import '../utils/styles.dart';

// ignore: must_be_immutable
class CustomTimeSchudel extends StatelessWidget {
  CustomTimeSchudel(
      {super.key,
      required this.startText,
      required this.endText,
      required this.onPressedControllerStart,
      required this.onPressedControllerEnd});

  String startText, endText;
  // ignore: prefer_typing_uninitialized_variables
  final onPressedControllerStart;

  // ignore: prefer_typing_uninitialized_variables
  final onPressedControllerEnd;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text('Start time ', style: Style.robotoRegular)),
        Style.distan_size5,
        Container(
          height: Get.size.height * 0.05,
          width: Get.size.height * 0.12,
          decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              color: ColorsCode.page_background_color, //E9F2F2
              borderRadius: BorderRadius.circular(2),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                // ignore: prefer_const_constructors
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                )
              ]),
          child: ElevatedButton(
            onPressed: () => onPressedControllerStart,
            child: Text(startText),
          ),
        ),
        Style.distan_size20,
        const Text(
          'End time',
          style: Style.robotoRegular,
        ),
        Style.distan_size20,
        Container(
          height: Get.size.height * 0.05,
          width: Get.size.height * 0.12,
          decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              color: ColorsCode.page_background_color, //E9F2F2
              borderRadius: BorderRadius.circular(2),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]),
          child: ElevatedButton(
            onPressed: () => onPressedControllerEnd,
            child: Text(endText),
          ),
        ),
      ],
    );
  }
}
