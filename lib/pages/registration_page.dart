// ignore_for_file: deprecated_member_use, unrelated_type_equality_checks, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../customs/custom_date_picker.dart';
import '../customs/custom_label_for_text_field.dart';
import '../customs/custom_text_field.dart';
import '../customs/custom_winkwell_button.dart';
import '../customs/customs_dropdown.dart';
import '../customs/customs_label.dart';
import '../customs/customs_submit_button.dart';
import '../responsive/responsive_helper.dart';
import '../routes/routes.dart';
import '../service/date_picker_service.dart';
import '../utils/colors_code.dart';
import '../utils/images.dart';
import '../utils/styles.dart';
import '../widgets/web_menu_bar.dart';

// ignore: must_be_immutable
class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  AuthController authController = Get.put(AuthController());
  DatePickerService datePickerService = Get.put(DatePickerService());
  List titleListvalue = [
    'Dr.',
    'Prof. Dr.',
    'Assoc. Prof. Dr.',
    'Asst. Prof. Dr.'
  ];
  List genderListvalue = [
    'Male',
    'Female',
  ];

  // ignore: non_constant_identifier_names
  List blood_groupListvalue = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
  ];
  List nationalityListvalue = [
    'Bangladesh',
    'India',
  ];

  @override
  Widget build(context) => WillPopScope(
      onWillPop: () {
        Get.toNamed(RouteManeger.otpVerifyForRegistration);
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
                  icon: Icon(Icons.arrow_back_ios_rounded,
                      color: Theme.of(context).textTheme.bodyText1!.color),
                ),
              ),
        body: Obx(() => SafeArea(
                child: Scrollbar(
              thumbVisibility: true,
              thickness: 10,
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Style.distan_size10,
                    const Center(
                        child: CustomLabelText(
                      text: 'Doctor Registration',
                      style: Style.robotoHeader20primaryColor,
                    )),
                    const Center(
                        child: CustomLabelText(
                      text: 'All information must be valid as per NID',
                      style: Style.block_text_style,
                    )),
                    Style.distan_size10,
                    CustomDropdownButton(
                      baseColor: ColorsCode.text_field_base_colors,
                      borderColor: ColorsCode.text_border_color,
                      errorColor: ColorsCode.text_field_error_colors,
                      tittle: "Select Title",
                      titleList: titleListvalue,
                      style: Style.block_text_style,
                      tittleValue: authController.titleChangeValue.toString(),
                      onChangeButton: authController,
                      destination: 'title',
                    ),

                    const CustomLabelField(
                      text: "Your First Name*",
                      style: Style.robotoRegular,
                    ),
                    CustomTextField(
                      baseColor: ColorsCode.text_field_base_colors,
                      borderColor: ColorsCode.text_border_color,
                      errorColor: ColorsCode.text_field_error_colors,
                      controller: authController.firstnameController,
                      hint: "First Name",
                      inputType: TextInputType.text,
                      icon: const Icon(
                        Icons.person,
                        color: ColorsCode.icon_primary_colors,
                      ),
                      eyesIcon: false,
                      // validator: Validator.validateEmail,
                    ),
                    const CustomLabelField(
                      text: "Your Last Name*",
                      style: Style.robotoRegular,
                    ),
                    CustomTextField(
                      baseColor: ColorsCode.text_field_base_colors,
                      borderColor: ColorsCode.text_border_color,
                      errorColor: ColorsCode.text_field_error_colors,
                      controller: authController.lastNameController,
                      hint: "Last Name",
                      inputType: TextInputType.text,
                      icon: const Icon(
                        Icons.person,
                        color: ColorsCode.icon_primary_colors,
                      ),
                      eyesIcon: false,
                      // validator: Validator.validateEmail,
                    ),
                    // const CustomLabelField(
                    //   text: "Your Phone Number*",
                    //   style: Style.robotoRegular,
                    // ),
                    // CustomTextField(
                    //   baseColor: ColorsCode.text_field_base_colors,
                    //   borderColor: ColorsCode.text_border_color,
                    //   errorColor: ColorsCode.text_field_error_colors,
                    //   controller: authController.phoneNumberController,
                    //   hint: "01xxxxxxxxx",
                    //   inputType: TextInputType.number,
                    //   icon: const Icon(
                    //     Icons.phone,
                    //     color: ColorsCode.icon_primary_colors,
                    //   ),
                    //   eyesIcon: false,
                    //   // validator: Validator.validateEmail,
                    // ),
                    const CustomLabelField(
                      text: "Your E-mail*",
                      style: Style.robotoRegular,
                    ),
                    CustomTextField(
                      baseColor: ColorsCode.text_field_base_colors,
                      borderColor: ColorsCode.text_border_color,
                      errorColor: ColorsCode.text_field_error_colors,
                      controller: authController.emailController,
                      hint: "exmaple@mail.com",
                      inputType: TextInputType.emailAddress,
                      icon: const Icon(
                        Icons.email,
                        color: ColorsCode.icon_primary_colors,
                      ),
                      eyesIcon: false,
                      // validator: Validator.validateEmail,
                    ),
                    const CustomLabelField(
                      text: "Nid/Passport No*",
                      style: Style.robotoRegular,
                    ),
                    CustomTextField(
                      baseColor: ColorsCode.text_field_base_colors,
                      borderColor: ColorsCode.text_border_color,
                      errorColor: ColorsCode.text_field_error_colors,
                      controller: authController.nidPassportController,
                      hint: "NID/PASSPORT NO",
                      inputType: TextInputType.number,
                      icon: const Icon(
                        Icons.document_scanner,
                        color: ColorsCode.icon_primary_colors,
                      ),
                      eyesIcon: false,
                      // validator: Validator.validateEmail,
                    ),
                    const CustomLabelField(
                      text: "Date of Birth* (Applicants must be over 18)",
                      style: Style.robotoRegular,
                    ),
                    CustomDatePickerButton(
                        baseColor: ColorsCode.text_field_base_colors,
                        borderColor: ColorsCode.text_border_color,
                        errorColor: ColorsCode.text_field_error_colors,
                        tittle: "DD-MM-YYYY",
                        titleList: titleListvalue,
                        style: Style.block_text_style,
                        controller: datePickerService.dateOfBirthController,
                        icon: const Icon(
                          Icons.calendar_today,
                          color: ColorsCode.icon_primary_colors,
                        )),
                    const CustomLabelField(
                      text: "Gender*",
                      style: Style.robotoRegular,
                    ),
                    CustomDropdownButton(
                      baseColor: ColorsCode.text_field_base_colors,
                      borderColor: ColorsCode.text_border_color,
                      errorColor: ColorsCode.text_field_error_colors,
                      tittle: "Gender",
                      titleList: genderListvalue,
                      style: Style.block_text_style,
                      tittleValue: authController.genderChangeValue.toString(),
                      onChangeButton: authController,
                      destination: 'gender',
                    ),
                    const CustomLabelField(
                      text: "Blood Group*",
                      style: Style.robotoRegular,
                    ),
                    CustomDropdownButton(
                      baseColor: ColorsCode.text_field_base_colors,
                      borderColor: ColorsCode.text_border_color,
                      errorColor: ColorsCode.text_field_error_colors,
                      tittle: "Blood Group",
                      titleList: blood_groupListvalue,
                      style: Style.block_text_style,
                      tittleValue:
                          authController.bloodGroupChangeValue.toString(),
                      onChangeButton: authController,
                      destination: 'blood_group',
                    ),

                    const CustomLabelField(
                      text: "Registration number(BMDC)*",
                      style: Style.robotoRegular,
                    ),
                    CustomTextField(
                      baseColor: ColorsCode.text_field_base_colors,
                      borderColor: ColorsCode.text_border_color,
                      errorColor: ColorsCode.text_field_error_colors,
                      controller: authController.bmdcNumberController,
                      hint: "BMDC Number",
                      inputType: TextInputType.text,
                      icon: const Icon(
                        Icons.document_scanner,
                        color: ColorsCode.icon_primary_colors,
                      ),
                      eyesIcon: false,
                      // validator: Validator.validateEmail,
                    ),
                    const CustomLabelField(
                      text: "Nationality*",
                      style: Style.robotoRegular,
                    ),
                    CustomDropdownButton(
                      baseColor: ColorsCode.text_field_base_colors,
                      borderColor: ColorsCode.text_border_color,
                      errorColor: ColorsCode.text_field_error_colors,
                      tittle: "Select Nationality",
                      titleList: nationalityListvalue,
                      style: Style.block_text_style,
                      tittleValue:
                          authController.nationalityChangeValue.toString(),
                      onChangeButton: authController,
                      destination: 'nationality',
                    ),
                    const CustomLabelField(
                      text: "Password*",
                      style: Style.robotoRegular,
                    ),
                    CustomTextField(
                      baseColor: ColorsCode.text_field_base_colors,
                      borderColor: ColorsCode.text_border_color,
                      errorColor: ColorsCode.text_field_error_colors,
                      controller: authController.passwordController,
                      hint: "........",
                      inputType: TextInputType.number,

                      icon: const Icon(
                        Icons.lock,
                        color: ColorsCode.icon_primary_colors,
                      ),
                      eyesIcon: true,
                      // validator: Validator.validateEmail,
                    ),
                    const CustomLabelField(
                      text: "Confirm-Password*",
                      style: Style.robotoRegular,
                    ),
                    CustomTextField(
                      baseColor: ColorsCode.text_field_base_colors,
                      borderColor: ColorsCode.text_border_color,
                      errorColor: ColorsCode.text_field_error_colors,
                      controller: authController.confirmPassowrd,
                      hint: "........",
                      inputType: TextInputType.number,
                      icon: const Icon(
                        Icons.lock,
                        color: ColorsCode.icon_primary_colors,
                      ),
                      eyesIcon: true,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Radio(
                              value:
                                  // ignore: unrelated_type_equality_checks
                                  authController.termsConditionValue == 0
                                      ? 1
                                      : 0,
                              groupValue:
                                  // ignore: unrelated_type_equality_checks
                                  authController.termsConditionValue == 0
                                      ? 0
                                      : 0,
                              // ignore: unrelated_type_equality_checks
                              onChanged: (value) {
                                authController.selectTemrsAndCondition();
                              },
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                // ignore: unrelated_type_equality_checks
                                return (authController.termsConditionValue == 0)
                                    ? Colors.black
                                    : Colors.green;
                              })),
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: " I accept and agree ",
                                    style: Style.block_text_style10,
                                  ),
                                  TextSpan(
                                    text: "Terms and Condition",
                                    style: Style.under_line_block_text_style,
                                  ),
                                  TextSpan(
                                    text: " and ",
                                    style: Style.block_text_style10,
                                  ),
                                  TextSpan(
                                    text: "Privacy Policy.",
                                    style: Style.under_line_block_text_style,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
                    CustomSubmitButton(
                        text: "Registration",
                        style: Style.submit_button_style,
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        color: authController.active == true
                            ? ColorsCode.submit_button_primary_color
                            : Colors.grey,
                        onPressed: authController.active == true
                            ? () {
                                authController.userFunction();
                              }
                            : () {},
                        booldata: true,
                        leftpad: 56,
                        rightpad: 56,
                        borderCircular: 20),
                    Style.distan_size10,
                    Center(
                      child: CustomtWinkwellButton(
                          text1: "Already have an account ?  ",
                          text2: "Log In",
                          style1: Style.robotoRegular,
                          style2: Style.text_style,
                          onPressed: () =>
                              (Get.toNamed(RouteManeger.mobileSignIn))),
                    ),
                  ])),
            ))),
      ));
}
