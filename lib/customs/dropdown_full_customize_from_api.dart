import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../responsive/responsive_helper.dart';
import '../utils/colors_code.dart';

class FullCustomDropdownButtonFromApi extends StatelessWidget {
  const FullCustomDropdownButtonFromApi(
      {super.key,
      this.baseColor,
      this.borderColor,
      this.errorColor,
      this.tittleValue,
      this.onChangeButton,
      this.destination,
      this.tittle,
      this.titleList,
      this.style,
      this.onChanged,
      this.apiName});
  final Color? baseColor;
  final Color? borderColor;
  final Color? errorColor;
  final String? tittleValue;
  // ignore: prefer_typing_uninitialized_variables
  final onChangeButton;
  final String? destination;
  final String? tittle;
  final List? titleList;
  // ignore: prefer_typing_uninitialized_variables
  final style;

  // final Function? validator;
  final Function? onChanged;
  final String? apiName;
  // ignore: prefer_typing_uninitialized_variables

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
                        : MediaQuery.of(context).size.height * .07
                    : ResponsiveHelper.isLandScriptMode(context)
                        ? MediaQuery.of(context).size.height * .17
                        : MediaQuery.of(context).size.height * .07
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
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  hint: tittleValue == ""
                      ? Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            tittle.toString(),
                            style: style,
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            tittleValue.toString(),
                            style: style, //background: #3BE4C6;
                          ),
                        ),
                  isExpanded: true,
                  // iconSize: 30.0,
                  items: titleList!.map(
                    (val) {
                      return DropdownMenuItem<String>(
                          value: val[apiName], child: Text(val[apiName]));
                    },
                  ).toList(),
                  onChanged: (val) {
                    onChangeButton(val);
                  },
                ),
              ),
            ),
          ),
        ));
  }
}
