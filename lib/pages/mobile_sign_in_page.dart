// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../controllers/sign_in_sign_up_controller.dart';
import '../customs/custom_label_for_text_field.dart';
import '../customs/custom_text_button.dart';
import '../customs/custom_text_field.dart';
import '../customs/custom_winkwell_button.dart';
import '../customs/customs_label.dart';
import '../customs/customs_submit_button.dart';
import '../responsive/responsive_helper.dart';
import '../routes/routes.dart';
import '../utils/colors_code.dart';
import '../utils/dimensions.dart';
import '../utils/images.dart';
import '../utils/styles.dart';
import '../widgets/web_menu_bar.dart';

// ignore: must_be_immutable
class MobileSignInView extends StatefulWidget {
  const MobileSignInView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MobileSignInViewState createState() => _MobileSignInViewState();
}

class _MobileSignInViewState extends State<MobileSignInView> {
  SignInSignUpCustomsController signInController =
      Get.put(SignInSignUpCustomsController());
  final bool _canExit = GetPlatform.isWeb ? true : false;
  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_canExit) {
          if (GetPlatform.isAndroid) {
            SystemNavigator.pop();
          } else if (GetPlatform.isIOS) {
            exit(0);
          } else {
            Navigator.pushNamed(context, RouteManeger.getInitialRoute());
          }
          return Future.value(false);
        } else {
          signInController.showExitWarning();
          return Future.value(false);
        }
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
                leading: IconButton(
                  // onPressed: () => Get.back(),
                  onPressed: () => signInController.showExitWarning(),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Style.distan_size10,
                  Center(
                      child: Image.asset(
                    Images.logo,
                    height: MediaQuery.of(context).size.height * .081,
                    width: MediaQuery.of(context).size.width * .481,
                  )),
                  Style.distan_size10,
                  Center(
                      child: Image.asset(
                    Images.doctor_photo,
                    height: MediaQuery.of(context).size.height * .070,
                    width: MediaQuery.of(context).size.width * .40,
                  )),
                  const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                  const Center(
                      child: CustomLabelText(
                    text: 'Welcome',
                    style: Style.robotoHeader30,
                  )),
                  const Center(
                      child: CustomLabelText(
                    text: 'Sign in to continue',
                    style: Style.text_style,
                  )),
                  Style.distan_size20,
                  const CustomLabelField(
                    text: "Phone Number",
                    style: Style.robotoRegular,
                  ),
                  CustomTextField(
                    baseColor: ColorsCode.text_field_base_colors,
                    borderColor: ColorsCode.text_border_color,
                    errorColor: ColorsCode.text_field_error_colors,
                    controller: authController.phoneNumberController,
                    hint: "01XXXXXXXXX",
                    inputType: TextInputType.number,
                    icon: const Icon(
                      Icons.phone,
                      color: ColorsCode.icon_primary_colors,
                    ),
                    eyesIcon: false,
                    // validator: Validator.validateEmail,
                  ),
                  // Style.distan_size10,
                  const CustomLabelField(
                    text: "Password",
                    style: Style.robotoRegular,
                  ),
                  CustomTextField(
                    baseColor: ColorsCode.text_field_base_colors,
                    borderColor: ColorsCode.text_border_color,
                    errorColor: ColorsCode.text_field_error_colors,
                    controller: authController.passwordController,
                    hint: "........",
                    inputType: TextInputType.text,

                    icon: const Icon(
                      Icons.lock,
                      color: ColorsCode.icon_primary_colors,
                    ),
                    eyesIcon: true,
                    // validator: Validator.validateEmail,
                  ),
                  // Style.distan_size2,
                  CustomTextButton(
                    text: "Forget Password?",
                    style: Style.text_style,
                    padding: const EdgeInsets.only(right: 15),
                    // ignore: avoid_print
                    onPressedController: () => (Get.toNamed(
                        RouteManeger.mobilePhoneVerificationLogin)),
                    alignment: Alignment.centerRight,
                  ),
                  CustomSubmitButton(
                      text: "Sign In",
                      style: Style.submit_button_style,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      color: ColorsCode.submit_button_primary_color,
                      onPressed: (){authController.login();},
                      booldata: true,
                      leftpad: 56,
                      rightpad: 56,
                      borderCircular: 20),
                  Style.distan_size20,
                  Center(
                    child: CustomtWinkwellButton(
                        text1: "Don't have an account ?  ",
                        text2: "Sign Up",
                        style1: Style.robotoRegular,
                        style2: Style.text_style,
                        onPressed: () => (Get.toNamed(
                            RouteManeger.mobilePhoneVerification))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
