// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import '../customs/custom_text_field.dart';
import '../customs/custom_winkwell_button.dart';
import '../customs/customs_label.dart';
import '../customs/customs_submit_button.dart';
import '../responsive/responsive_helper.dart';
import '../routes/routes.dart';
import '../utils/colors_code.dart';
import '../utils/images.dart';
import '../utils/styles.dart';
import '../widgets/web_menu_bar.dart';

// ignore: must_be_immutable
class OtpSendForRegitration extends StatelessWidget {
  OtpSendForRegitration({super.key});
  AuthController registertController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Get.toNamed(RouteManeger.mobileSignIn);
          return Future.value(true);
        },
        child: Scaffold(
          backgroundColor: ColorsCode.page_background_color,
          appBar: ResponsiveHelper.isDesktop(context)
              ? const WebMenuBar()
              : AppBar(
                  centerTitle: true,
                  backgroundColor: ColorsCode.primary_color,
                  bottomOpacity: 0.0,
                  elevation: 0.0,
            title: Image.asset(
              Images.logo,
              height: Get.size.height * 0.04,
              color: Colors.white,
            ),
                  leading: IconButton(
                    onPressed: () => Get.back(),
                    // onPressed: () => signInController.showExitWarning(),
                    icon: Icon(Icons.arrow_back_ios_rounded,
                        color: Theme.of(context).textTheme.bodyText1!.color),
                  ),
                ),
          body: SafeArea(
              child: Scrollbar(
            thumbVisibility: true,
            thickness: 10,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Style.distan_size10,
                    Center(
                        child: Image.asset(
                      Images.phone_vaner,
                      height: MediaQuery.of(context).size.height * .2,
                      width: MediaQuery.of(context).size.width * .4,
                    )),
                    const Center(
                        child: CustomLabelText(
                      text: 'Welcome to Digital Shastho',
                      style: Style.robotoHeader30,
                    )),
                    Style.distan_size10,
                    const Center(
                        child: CustomLabelText(
                      text: 'A health concern platform of Bangladesh',
                      style: Style.text_style,
                    )),
                    Style.distan_size10,
                    Center(
                        child: Image.asset(
                      Images.logo,
                      height: MediaQuery.of(context).size.height * .071,
                      width: MediaQuery.of(context).size.width * .461,
                    )),
                    Style.distan_size10,
                    CustomTextField(
                      baseColor: ColorsCode.text_field_base_colors,
                      borderColor: ColorsCode.text_border_color,
                      errorColor: ColorsCode.text_field_error_colors,
                      controller: registertController.phoneNumberController,
                      hint: "01XXXXXXXXX",
                      inputType: TextInputType.number,
                      icon: const Icon(
                        Icons.phone,
                        color: ColorsCode.icon_primary_colors,
                      ),
                      eyesIcon: false,
                      // validator: Validator.validateEmail,
                    ),
                    CustomSubmitButton(
                        text: "Continue",
                        style: Style.submit_button_style,
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        color: ColorsCode.submit_button_primary_color,
                        onPressed: () =>
                            (registertController.registerFunction()),
                        booldata: true,
                        leftpad: 56,
                        rightpad: 56,
                        borderCircular: 20),
                    Style.distan_size10,
                    const Center(
                        child: CustomLabelText(
                      text:
                          'After click on continue you will be process on verify',
                      style: Style.block_text_style,
                    )),
                    Style.distan_size10,
                    Center(
                      child: CustomtWinkwellButton(
                          text1: "Already have an account ?  ",
                          text2: "Log In",
                          style1: Style.robotoRegular,
                          style2: Style.text_style,
                          onPressed: () =>
                              (Get.toNamed(RouteManeger.mobileSignIn))),
                    )
                  ]),
            ),
          )),
        ));
  }
}
