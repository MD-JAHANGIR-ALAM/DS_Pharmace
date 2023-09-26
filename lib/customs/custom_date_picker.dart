import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../responsive/responsive_helper.dart';
import '../service/date_picker_service.dart';
import '../utils/colors_code.dart';

// ignore: must_be_immutable
class CustomDatePickerButton extends StatelessWidget {
  CustomDatePickerButton({
    super.key,
    this.baseColor,
    this.borderColor,
    this.errorColor,
    this.tittleValue,
    this.onChangeButton,
    this.tittle,
    this.titleList,
    this.style,
    this.onChanged,
    this.controller,
    required this.icon,
  });
  final Color? baseColor;
  final Color? borderColor;
  final Color? errorColor;
  final String? tittleValue;
  // ignore: prefer_typing_uninitialized_variables
  final onChangeButton;
  final String? tittle;
  final List? titleList;
  // ignore: prefer_typing_uninitialized_variables
  final style;

  // final Function? validator;
  final Function? onChanged;
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final Icon icon;

  DatePickerService datePickerServiceControllr = Get.put(DatePickerService());

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 2),
        child: Center(
          child: SizedBox(
            height: ResponsiveHelper.isMobile(context)
                ? ResponsiveHelper.isTab(context)
                    ? ResponsiveHelper.isLandScriptMode(context)
                        ? MediaQuery.of(context).size.height * .17
                        : MediaQuery.of(context).size.height * .09
                    : ResponsiveHelper.isLandScriptMode(context)
                        ? MediaQuery.of(context).size.height * .17
                        : MediaQuery.of(context).size.height * .09
                : ResponsiveHelper.isWeb()
                    ? MediaQuery.of(context).size.height * .06
                    : MediaQuery.of(context).size.height * .16,
            width: MediaQuery.of(context).size.width * .9,
            child: Card(
              elevation: 0.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: ColorsCode.text_border_color, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Center(
                  child: TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: tittle,
                        hintStyle: style,
                        errorStyle: TextStyle(color: errorColor),
                        suffixIcon: IconButton(
                            icon: icon,
                            onPressed: () => datePickerServiceControllr
                                .selectDate(context))),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
