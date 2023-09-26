// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../customs/custom_message_button.dart';
// // import '../models/emergency_appoinment_models.dart';
// // import '../models/offline_appoinment_model.dart';
// // import '../models/prescriptionhistory_model.dart';
// // import '../models/today_appoinment_model.dart';
// // import '../repository/prescription_repository.dart';
// import '../routes/routes.dart';
// import '../service/user_getStorage_data.dart';
// import '../utils/api_response_message.dart';
// import 'dashboard_controller.dart';
// import 'search_medicen_controllers.dart';
//
// class PrescriptionController extends GetxController {
//   // ignore: prefer_typing_uninitialized_variables
//   TextEditingController perdayController = TextEditingController();
//   TextEditingController madicineDuration = TextEditingController();
//   TextEditingController totalDorse = TextEditingController();
//   TextEditingController problemcontorller = TextEditingController();
//   DashboardController dashboardController = Get.put(DashboardController());
//   var userdata = GetUserDataFromGetStorage().userData;
//   RxList alltest = [].obs;
//   RxList alltestdata = [].obs;
//   RxList test = [].obs;
//   final isLoading = false.obs;
//   final isNoDataFound = false.obs;
//   DateTime dateTime = DateTime.now();
//   var medicineevalue = "".obs;
//   final prescriptionlistData = Prescriptionhistory().obs;
//
//   List<bool> pic = [true, false].obs;
//
//   List<bool> mint = [true, false].obs;
//
//   List<bool> day = [true, false].obs;
//
//   RxInt mealval = 1.obs;
//
//   final maxLines = 5;
//   RxList storeMadicineList = [].obs;
//
//   List sentStoreMadicnineList = [];
//
//   removedmadicine(var removeMadicinedata) {
//     storeMadicineList.remove(removeMadicinedata);
//   }
//
//   var mealvalue = ''.obs;
//   var pices = ''.obs;
//   var minite = ''.obs;
//   var dayvalue = ''.obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     Timer(const Duration(seconds: 1), () {
//       allTestListFunction();
//     });
//   }
//
//   Search_Controller searchController = Get.put(Search_Controller());
//
//   void addMadicine() {
//     if (perdayController.text == "") {
//       showCustomSnackBar("Perday con not be empty !", true);
//       // ignore: unrelated_type_equality_checks
//     } else if (searchController.medicen == "") {
//       showCustomSnackBar("medicinee con not be empty !", true);
//     } else if (madicineDuration.text == "") {
//       showCustomSnackBar("madicineDuration con not be empty !", true);
//     } else if (totalDorse.text == "") {
//       showCustomSnackBar("totalDorse con not be empty !", true);
//     } else {
//       if (mealval.value == 1) {
//         mealvalue.value = "before";
//       } else if (mealval.value == 2) {
//         mealvalue.value = "after";
//       }
//
//       // ignore: unrelated_type_equality_checks
//       if (pic[0] == true) {
//         pices.value = "psc";
//         print(pices.value);
//       } else {
//         pices.value = "spoon";
//         print(pices.value);
//       }
//
//       // ignore: unrelated_type_equality_checks
//       if (mint[0] == true) {
//         minite.value = "mint";
//       } else {
//         minite.value = "hrs";
//       }
//
//       // ignore: unrelated_type_equality_checks
//       if (day[0] == true) {
//         dayvalue.value = "day";
//       } else {
//         dayvalue.value = "month";
//       }
//
//       Map madicineBody = {
//         "madicine_name": searchController.medicen.toString(),
//         "madicine_perday": perdayController.text,
//         "pic": pices.value,
//         "madicine_duration": madicineDuration.text,
//         "minite": minite.value,
//         "total_dorse": totalDorse.text,
//         "dayvalue": dayvalue.value,
//         "meal_value": mealvalue.value,
//       };
//
//       storeMadicineList.add(madicineBody);
//
//       perdayController.clear();
//       madicineDuration.clear();
//       totalDorse.clear();
//     }
//   }
//
//   refressData() {
//     allTestListFunction();
//   }
//
//   void allTestListFunction() async {
//     try {
//       await PrescriptionRepository.allTestListRepository().then((value) {
//         alltest.clear();
//         alltest.value = value;
//         for (int i = 0; i < alltest.length; i++) {
//           alltestdata.add("${alltest.value[i]['test_name'].toString()}");
//         }
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
//   void selectMadicinefunction(data) {
//     medicineevalue.value = data.toString();
//     // print(storeMadicineList);
//   }
//
//   void submitForPrescripton(OfflineAppointment patienDetails) {
//     var firstName = patienDetails.patient!.firstName;
//     var lastName = patienDetails.patient!.lastName;
//     var problem = problemcontorller.text;
//     var dateofbirth = patienDetails.patient!.dateOfBirth.toString();
//     var id = patienDetails.patient!.id.toString();
//     var blood = patienDetails.patient!.bloodGroup.toString();
//     var chamber = patienDetails.chamber!.chamberName!.toString();
//     print(firstName);
//     print(lastName);
//     print(problem);
//     print(dateofbirth);
//     print(id);
//     print(blood);
//    print(chamber);
//
//     Get.offAllNamed(RouteManeger.prescriptionpdf, arguments: [
//       firstName,
//       lastName,
//       dateofbirth,
//       patienDetails,
//       problem,
//       test,
//       storeMadicineList,
//       id,
//       blood,
//       chamber
//     ]);
//   }
//
//   void submitForPrescriptonEmergency(EmergencyAppointment patienDetails) {
//     var firstName = patienDetails.patient!.firstName;
//     var lastName = patienDetails.patient!.lastName;
//     var problem = problemcontorller.text;
//     var dateofbirth = patienDetails.patient!.dateOfBirth.toString();
//     var id = patienDetails.patient!.id.toString();
//     var blood = patienDetails.patient!.bloodGroup.toString();
//
//     Get.offAllNamed(RouteManeger.prescriptionpdf, arguments: [
//       firstName,
//       lastName,
//       dateofbirth,
//       patienDetails,
//       problem,
//       test,
//       storeMadicineList,
//       id,
//       blood
//     ]);
//   }
//
//   void submitForPrescriptonOnline(TodayAppointment patienDetails) {
//     var firstName = patienDetails.patient!.firstName;
//     var lastName = patienDetails.patient!.lastName;
//     var problem = problemcontorller.text;
//     var dateofbirth = patienDetails.patient!.dateOfBirth.toString();
//     var id = patienDetails.patient!.id.toString();
//     var blood = patienDetails.patient!.bloodGroup.toString();
//     var status = patienDetails.onlineStatus.toString();
//
//     Get.offAllNamed(RouteManeger.prescriptionpdf, arguments: [
//       firstName,
//       lastName,
//       dateofbirth,
//       patienDetails,
//       problem,
//       test,
//       storeMadicineList,
//       id,
//       blood,
//       status
//     ]);
//   }
//
//   var appentId;
//
//   sendId(id) {
//     appentId = id;
//     print(appentId);
//   }
//
//   void datasendFunction(id, problem) async {
//     Map prescriptiondata = {
//       "madicine": jsonEncode(storeMadicineList),
//       "alltest": jsonEncode(test),
//       "problem": problem,
//       "user_id": id.toString(),
//       "doctor_user_id": userdata['id'].toString(),
//       "patienappoinmentid": appentId
//     };
//
//     await PrescriptionRepository.prescriptionCreateRepository(prescriptiondata)
//         .then((value) {
//       if (value == true) {
//         showCustomSnackBar('Prescription has been created successfuly ', false);
//
//         dashboardController.refreshData();
//         dashboardController.offlineAppoinment();
//         dashboardController.todayAppoinment();
//         Get.toNamed(RouteManeger.dashboard);
//       } else {
//         showCustomSnackBar('Something went wrong', true);
//       }
//     });
//   }
//
//   void allPrescriptionListFunction(pid) async {
//     try {
//       await PrescriptionRepository.prescriptionListRepository(pid)
//           ?.then((value) {
//         prescriptionlistData.value = value!;
//       });
//
//       isLoading.value = true;
//     } catch (err) {
//       // showCustomSnackBar(ApiMessages.errorNetwork, true);
//     } finally {
//       // isLoading.value = false;
//       isNoDataFound.value = true;
//     }
//   }
// }
