import 'package:flutter/material.dart';

import '../../utils/colors_code.dart';

Widget CustomText(String text){
  return Text(text, style: TextStyle(color: ColorsCode.text_border_color, fontSize: 10, fontFamily: "Roboto"),);
}