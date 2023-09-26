// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// import '../customs/custom_message_button.dart';
// import '../service/user_getStorage_data.dart';
// import '../utils/api_response_message.dart';
//
// class CompletedDoctorListController extends GetxController {
//   final isLoading = false.obs;
//   final isNoDataFound = false.obs;
//   @override
//   void onInit() {
//     super.onInit();
//     Timer(const Duration(seconds: 1), () {
//       getCompletedListFunction();
//     });
//   }
//
//
//
//   refreshData() {
//     getCompletedListFunction();
//   }
//
//   void getCompletedListFunction() async {
//     try {
//       await CompletedDoctorRepository.completedListRepository()?.then((value) {
//         completedPasent.value = value!;
//       });
//       isLoading.value = true;
//       isNoDataFound.value = true;
//
//     } catch (err) {
//       showCustomSnackBar(ApiMessages.errorNetwork, true);
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
// }
