// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../customs/custom_message_button.dart';
// // import '../models/familly_addlist_model.dart';
// // import '../models/familly_list_model.dart';
// // import '../repository/familly_repository.dart';
// import '../routes/routes.dart';
// import '../service/user_getStorage_data.dart';
// import '../utils/api_response_message.dart';
//
// class FamillyController extends GetxController {
//   final isLoading = false.obs;
//   final isNoDataFound = false.obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     Timer(const Duration(seconds: 1), () {
//       famillyListFunction();
//     });
//   }
//
//
//   refreshData() {
//     famillyListFunction();
//   }
//
//   void famillyListFunction() async {
//     try {
//       await FamillyRepository.famillyListRepository()?.then((value) {
//         famillList.value = value!;
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
//   void deleteFamilyListData(id) async {
//     try {
//       isLoading.value = true;
//       await FamillyRepository.famillydeleterepository(id).then((value) {
//         if (value == true) {
//           Get.back();
//           refreshData();
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
//
//   searchFamilly(valueData) async {
//     try {
//       await FamillyRepository.famillySearchRepository(valueData)?.then((value) {
//         famillAddList.value = value!;
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
//   final TextEditingController relationController = TextEditingController();
//
//   familyListAddFunction(patientId) async {
//     var userId = GetUserDataFromGetStorage().userData['id'];
//     if (relationController.text == "") {
//       showCustomSnackBar("Relation field con not be empty!", true);
//     } else {
//       if (relationController.text != "") {
//         Map body = {
//           "doctor_user_id": userId.toString(),
//           "patient_id": patientId.toString(),
//           "relation": relationController.text
//         };
//
//         await FamillyRepository.famillySetupRepository(body).then((value) {
//           if (value == true) {
//             refreshData();
//             showCustomSnackBar('Family member added successful', false);
//             Get.offAllNamed(RouteManeger.famillyList);
//           } else {
//             Get.back();
//             showCustomSnackBar("This data already deleted", true);
//           }
//         });
//       } else {
//         showCustomSnackBar("Something went wrong!", true);
//       }
//     }
//   }
// }
