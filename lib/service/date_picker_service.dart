import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors_code.dart';

class DatePickerService extends GetxController {
  //var titleChangeValue = "".obs;
  final TextEditingController dateOfBirthController = TextEditingController();
  late DateTime selectedDate;
  var initialDate = DateTime.now();
  late int age;
  // ignore: prefer_typing_uninitialized_variables
  var selectdate;
  var currentdate = DateTime.now();
  Future<void> selectDate(BuildContext context) async {
    final DateTime? seldate = await showDatePicker(
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: ColorsCode.primary_color,
            colorScheme:
                const ColorScheme.light(primary: ColorsCode.primary_color),
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
      context: context,
      initialDate: currentdate,
      firstDate: DateTime(1970),
      lastDate: DateTime(2030),
    );
    if (seldate != null) {
      var day = seldate.day;
      var month = seldate.month;
      currentdate = seldate;
      selectedDate = seldate;

      if (day < 10 && month < 10) {
        dateOfBirthController.text =
            "0${seldate.day}-0${seldate.month}-${seldate.year}";
      } else if (day < 10) {
        dateOfBirthController.text =
            "0${seldate.day}-${seldate.month}-${seldate.year}";
      } else if (month < 10) {
        dateOfBirthController.text =
            "${seldate.day}-0${seldate.month}-${seldate.year}";
      } else {
        dateOfBirthController.text =
            "${seldate.day}-${seldate.month}-${seldate.year}";
      }
    }
  }
}
