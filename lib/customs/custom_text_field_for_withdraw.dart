import 'package:flutter/material.dart';
import '../responsive/responsive_helper.dart';
import '../utils/colors_code.dart';
import '../utils/styles.dart';

class CustomTextForWithdrawField extends StatefulWidget {
  final String? hint;
  final TextEditingController? controller;
  final Color? baseColor;
  final Color? borderColor;
  final Color? errorColor;
  final TextInputType? inputType;
  final Icon? icon;
  final bool? eyesIcon;

  // final Function? validator;
  // ignore: prefer_typing_uninitialized_variables
  final onChangedFunction;

  const CustomTextForWithdrawField({
    super.key,
    this.hint,
    this.controller,
    this.onChangedFunction,
    this.baseColor,
    this.borderColor,
    this.errorColor,
    this.inputType,
    this.eyesIcon,
    this.icon,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextForWithdrawField> {
  late Color currentColor;
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    currentColor = ColorsCode.text_border_color;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 17,
        ),
        child: Center(
          child: SizedBox(
            height: ResponsiveHelper.isMobile(context)
                ? ResponsiveHelper.isTab(context)
                    ? ResponsiveHelper.isLandScriptMode(context)
                        ? MediaQuery.of(context).size.height * .170
                        : MediaQuery.of(context).size.height * .070
                    : ResponsiveHelper.isLandScriptMode(context)
                        ? MediaQuery.of(context).size.height * .170
                        : MediaQuery.of(context).size.height * .070
                : ResponsiveHelper.isWeb()
                    ? MediaQuery.of(context).size.height * .060
                    : MediaQuery.of(context).size.height * .160,
            width: MediaQuery.of(context).size.width * .4,
            child: TextField(
              textAlign: TextAlign.right,
              style: Style.text_filed_style,
              keyboardType: widget.inputType,
              controller: widget.controller,
              decoration: InputDecoration(
                hintStyle: Style.text_hind_style,
                hintText: widget.hint,
              ),
              onChanged: (valueData) {
                widget.onChangedFunction(valueData);
              },
            ),
          ),
        ));
  }
}
