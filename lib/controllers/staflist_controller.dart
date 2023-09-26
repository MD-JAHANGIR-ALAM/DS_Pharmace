// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// import '../customs/custom_message_button.dart';
// import '../models/satisfi_list_model.dart';
// import '../pages/staflist/stafWidget/staflist_helper.dart';
// import '../repository/staflist_repository.dart';
// import '../service/user_getStorage_data.dart';
// import '../utils/api_response_message.dart';
//
// class StafListController extends GetxController {
//   final isLoading = false.obs;
//   final isNoDataFound = false.obs;
//   @override
//   void onInit() {
//     super.onInit();
//     Timer(const Duration(seconds: 1), () {
//       getstafListFunction();
//     });
//   }
//
//   final stafList = <StaflistModel>[].obs;
//
//   refreshData() {
//     getstafListFunction();
//   }
//
//   void getstafListFunction() async {
//     try {
//       await StaflistRepository.stafListRepository()?.then((value) {
//         stafList.value = value!;
//       });
//       isLoading.value = true;
//     } catch (err) {
//       showCustomSnackBar(ApiMessages.errorNetwork, true);
//     } finally {
//       isLoading.value = false;
//       isNoDataFound.value = true;
//     }
//   }
//
//   var editId = 0.obs;
//   // TextEditingController title_controller = TextEditingController();
//   // ignore: non_constant_identifier_names
//   TextEditingController frist_name_controller = TextEditingController();
//   // ignore: non_constant_identifier_names
//   TextEditingController last_name_controller = TextEditingController();
//   // ignore: non_constant_identifier_names
//   TextEditingController email_controller = TextEditingController();
//   // ignore: non_constant_identifier_names
//   TextEditingController phone_controller = TextEditingController();
//   // ignore: non_constant_identifier_names
//   TextEditingController password_controller = TextEditingController();
//   var genderTypeValue = ''.obs;
//
//   List genderListvalue = [
//     'Male',
//     'Female',
//   ].obs;
//   var designationTypeValue = ''.obs;
//   List designatioListvalue = ['Intern', 'Manager', 'Personal Assistant'].obs;
//
//   void selectFromDropDown(valueData, desData) {
//     if (desData == "gender") {
//       genderTypeValue.value = valueData;
//     }
//
//     if (desData == "title") {
//       titleTypeValue.value = valueData;
//     }
//
//     if (desData == "designation") {
//       designationTypeValue.value = valueData;
//     }
//   }
//
//   var titleTypeValue = ''.obs;
//   List titleListvalue = [
//     'Mr',
//     'Ms',
//   ].obs;
//
//   // void titleselectFromDropDown(value, desData) {
//
//   //   titleTypeValue.value = value;
//   // }
//
//   clearData() {
//     titleTypeValue.value = "";
//     frist_name_controller.clear();
//     last_name_controller.clear();
//     email_controller.clear();
//     phone_controller.clear();
//     password_controller.clear();
//     genderTypeValue.value = "";
//   }
//
//   // ignore: non_constant_identifier_names
//   void stafList_ADD_Function() async {
//     var userId = GetUserDataFromGetStorage().userData['id'];
//     // ignore: unrelated_type_equality_checks
//
//     // ignore: unrelated_type_equality_checks
//     if (titleTypeValue == '') {
//       showCustomSnackBar("Title con not be empty !", true);
//       // ignore: unrelated_type_equality_checks
//     } else if (frist_name_controller.text == '') {
//       showCustomSnackBar("Frist name con not be empty !", true);
//     } else if (last_name_controller.text == '') {
//       showCustomSnackBar("Last name con not be empty !", true);
//     } else if (email_controller.text == '') {
//       showCustomSnackBar("Email con not be empty !", true);
//     } else if (phone_controller.text == '') {
//       showCustomSnackBar("Phone con not be empty !", true);
//     }
//     else if (phone_controller.text.length > 12) {
//       showCustomSnackBar("Phone number must be 11 digit", true);
//     } else if (password_controller.text.length < 8) {
//       showCustomSnackBar("Password  must be 8 digit !", true);
//     } else if (password_controller.text == '') {
//       showCustomSnackBar("Password con not be empty !", true);
//       // ignore: unrelated_type_equality_checks
//     } else if (genderTypeValue == '') {
//       showCustomSnackBar("Gender con not be empty !", true);
//     } else {
//       Map body = {
//         "phone": phone_controller.text,
//         "email": email_controller.text,
//         "password": password_controller.text,
//         "title": titleTypeValue.toString(),
//         "first_name": frist_name_controller.text,
//         "last_name": last_name_controller.text,
//         "gender": genderTypeValue.toString(),
//         "user_id": userId.toString()
//       };
//
//       await StaflistRepository.statfCreateRepository(body).then((value) {
//         if (value == true) {
//           Get.back();
//           refreshData();
//           showCustomSnackBar('StafList has been created successfuly ', false);
//           clearData();
//         } else {
//           showCustomSnackBar('Something went wrong', true);
//         }
//       });
//     }
//   }
//
//   // ignore: non_constant_identifier_names
//   void stafList_Edit_Function() async {
//     GetUserDataFromGetStorage();
//
//     // ignore: unrelated_type_equality_checks
//
//     // ignore: unrelated_type_equality_checks
//     if (titleTypeValue == '') {
//       showCustomSnackBar("Title con not be empty !", true);
//       // ignore: unrelated_type_equality_checks
//     } else if (frist_name_controller.text == '') {
//       showCustomSnackBar("Frist name con not be empty !", true);
//     } else if (last_name_controller.text == '') {
//       showCustomSnackBar("Last name con not be empty !", true);
//     } else if (email_controller.text == '') {
//       showCustomSnackBar("Email con not be empty !", true);
//     } else if (phone_controller.text == '') {
//       showCustomSnackBar("Phone con not be empty !", true);
//     } else if (password_controller.text == '') {
//       showCustomSnackBar("Password con not be empty !", true);
//       // ignore: unrelated_type_equality_checks
//     } else if (genderTypeValue == '') {
//       showCustomSnackBar("Gender con not be empty !", true);
//     } else {
//       Map body = {
//         "phone": phone_controller.text,
//         "email": email_controller.text,
//         "password": password_controller.text,
//         "title": titleTypeValue.toString(),
//         "first_name": frist_name_controller.text,
//         "last_name": last_name_controller.text,
//         "gender": genderTypeValue.toString(),
//         "id": editId.toString(),
//       };
//       await StaflistRepository.staf_Edit_Setup(body).then((value) {
//         if (value == true) {
//           Get.back();
//           refreshData();
//           showCustomSnackBar('StafList has been created successfuly ', false);
//           clearData();
//         } else {
//           showCustomSnackBar('Something went wrong', true);
//         }
//       });
//     }
//   }
//
//   void editfunction(stafData) {
//     phone_controller.text = stafData.phone;
//     email_controller.text = stafData.email;
//     password_controller.text = stafData.password;
//     titleTypeValue.value = stafData.title;
//     frist_name_controller.text = stafData.firstName;
//     last_name_controller.text = stafData.lastName;
//     genderTypeValue.value = stafData.gender;
//     editId.value = stafData.id;
//     StafListHelper().stafsetupDataAdd();
//   }
//
//   // ignore: non_constant_identifier_names
//   stafList_DElET_Function(id) async {
//     try {
//       isLoading.value = true;
//       await StaflistRepository.staf_Delet_Setup(id).then((value) {
//         if (value == true) {
//           Get.back();
//           getstafListFunction();
//           showCustomSnackBar('Data has been deleted', false);
//         } else {
//           Get.back();
//           showCustomSnackBar("This data already deleted", true);
//         }
//       });
//     } catch (err) {
//       showCustomSnackBar("Something want wrong !!", true);
//     } finally {
//       isLoading.value = false;
//       isNoDataFound.value = true;
//     }
//   }
// }
