// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../controllers/auth_controller.dart';
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
class OtpVerifyForRegistration extends StatelessWidget {
  OtpVerifyForRegistration({super.key});
  AuthController registertController = Get.put(AuthController());
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Get.toNamed(RouteManeger.mobilePhoneVerification);
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
                  const Center(
                      child: CustomLabelText(
                    text: 'Phone Number Verification',
                    style: Style.robotoHeader20primaryColor,
                  )),
                  Center(
                      child: Image.asset(
                    Images.otp_logo,
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width * .4,
                  )),
                  const Center(
                      child: CustomLabelText(
                    text: 'Get Your Code',
                    style: Style.robotoHeader30,
                  )),
                  const Center(
                      child: CustomLabelText(
                    text: 'Please enter the 4 digit code sent ',
                    style: Style.text_style,
                  )),
                  const Center(
                      child: CustomLabelText(
                    text: 'to your phone address.',
                    style: Style.text_style,
                  )),
                  Style.distan_size10,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 10),
                    child: PinFieldAutoFill(
                        textInputAction: TextInputAction.done,
                        controller: otpController,
                        codeLength: 4,
                        onCodeChanged: (val) {
                          // ignore: avoid_print
                          print('val');
                        },
                        // ignore: non_constant_identifier_names
                        onCodeSubmitted: (ValuData) {
                          registertController
                              .otpRegisterFunction(otpController.text);
                        }),
                  ),
                  CustomSubmitButton(
                      text: "Proceed",
                      style: Style.submit_button_style,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      color: ColorsCode.submit_button_primary_color,
                      onPressed: () => (

                          //Get.toNamed(RouteManeger.doctorRegistration)
                          registertController
                              .otpRegisterFunction(otpController.text)),
                      booldata: true,
                      leftpad: 56,
                      rightpad: 56,
                      borderCircular: 20),
                  Style.distan_size20,
                  Center(
                      child: CustomtWinkwellButton(
                          text1: "If you don’t receive code! ?  ",
                          text2: "Resend",
                          style1: Style.robotoRegular,
                          style2: Style.text_style,
                          // ignore: avoid_print
                          onPressed: () =>
                              (registertController.registerFunction())))
                ],
              )),
            ))));
  }
}
