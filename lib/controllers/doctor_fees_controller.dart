// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../customs/custom_message_button.dart';
// import '../models/doctorOfflinefees.dart';
// import '../models/doctor_fees_list.dart';
// import '../pages/fees/Fee_page.dart';
// import '../repository/doctor_frees_repository.dart';
// import '../service/user_getStorage_data.dart';
// import '../utils/api_response_message.dart';
//
// class FeesController extends GetxController {
//   final formKey = GlobalKey<FormState>();
//
//   TextEditingController newpatientController = TextEditingController();
//   TextEditingController oldpatientController = TextEditingController();
//   TextEditingController reportController = TextEditingController();
//   var userid = GetUserDataFromGetStorage().userData['id'];
//
//   var chamber = ''.obs;
//   RxList schudelDay = [].obs;
//   List onlinestatuslist = ['Online', 'Offline'].obs;
//   var onlinestatus = ''.obs;
//   RxList chamberlist = [].obs;
//   RxBool isvisible = false.obs;
//   final isLoading = false.obs;
//   final isNoDataFound = false.obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     Timer(const Duration(seconds: 1), () {
//       chamberListFunction();
//       getfeesOnlineListFunction();
//       getfeesOfflineListFunction();
//       refresh();
//     });
//   }
//
//   selectOnlineStatus(valu) {
//     if (valu == "Online") {
//       onlinestatus.value="";
//       chamberlist.clear();
//
//       // ignore: invalid_use_of_protected_member
//       schedulelist.value.clear();
//       schudelDay.clear();
//       isvisible.value = false;
//       onlinestatus.value = "Online";
//       chamber.value="";
//
//       scheduileOnlinelistfunction();
//       print(onlinestatus);
//     }
//     if (valu == "Offline") {
//       // ignore: invalid_use_of_protected_member
//       onlinestatus.value="";
//       schedulelist.clear();
//
//       schudelDay.clear();
//       isvisible.value = true;
//
//       onlinestatus.value = "Offline";
//       chamberlist.clear();
//       chamberListFunction();
//       print(onlinestatus);
//     }
//   }
//
//   void chamberListFunction() async {
//     try {
//       await DoctorFeesRepository.chemberListRepository().then((value) {
//         chamberlist.clear();
//         chamberlist.value = value;
//         // print(chamberlist);
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
//   void scheduileOnlinelistfunction() async {
//     // try {
//     await DoctorFeesRepository.getshedulOnlineListRepository().then((value) {
//       schedulelist.clear();
//       schedulelist.value = value!;
//
//       //  print(value);
//     });
//     isLoading.value = true;
//     // } catch (err) {
//     //   showCustomSnackBar(ApiMessages.errorNetwork, true);
//     // } finally {
//     //   isLoading.value = false;
//     //   isNoDataFound.value = true;
//     // }
//   }
//
//   void scheduileOflinelistfunction() async {
//     try {
//       await DoctorFeesRepository.getshedulDayDataListRepository(chamber.value)
//           .then((value) {
//         schedulelist.clear();
//         schedulelist.value = value!;
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
//   void chamberSelect(value) {
//     chamber.value = value;
//     scheduileOflinelistfunction();
//   }
//
//   void feesSchudelCreate() async {
//     if (onlinestatus.toString() == "") {
//       showCustomSnackBar("Online status name not selected yet!", true);
//     } else if (schudelDay.toString() == "") {
//       showCustomSnackBar(" Schudel con not be empty !!", true);
//     } else if (newpatientController.text == "") {
//       showCustomSnackBar("New patient con not be empty !!", true);
//     } else if (oldpatientController.text == "") {
//       showCustomSnackBar("Old patient con not be empty !!", true);
//     } else if (reportController.text == "") {
//       showCustomSnackBar("Report patient con not be empty !!", true);
//     } else {
//       Map body = {
//         "user_id": userid.toString(),
//         "schedul_name": jsonEncode(schudelDay),
//         "online_status": onlinestatus.value,
//         "old_patient_free": oldpatientController.text,
//         "new_patient_free": newpatientController.text,
//         "report_patient_free": reportController.text,
//         "chamber_name": chamber.toString()
//       };
//
// print(body);
//       await DoctorFeesRepository.scduleFeeCreateRepository(body).then((value) {
//         if (value == true) {
//           //Get.back();
//           clearData();
//           showCustomSnackBar('Fee has been created successfuly ', false);
//
//           refreshData();
//           // ignore: prefer_const_constructors
//           Get.to(FeeDoctor_page());
//         } else {
//           showCustomSnackBar('Something went wrong', true);
//         }
//       });
//     }
//   }
//
//   clearData() {
//     // ignore: invalid_use_of_protected_member
//     schudelDay.value.clear();
//     onlinestatus.value = "";
//     chamber.value="";
//     oldpatientController.clear();
//     newpatientController.clear();
//     reportController.clear();
//   }
//
//   RxList schedulelist = [].obs;
//
//   RxBool isvisibleOnlineSchedule = false.obs;
//   void updateOnlineAndSchedule() {
//     isvisibleOnlineSchedule.value = !isvisibleOnlineSchedule.value;
//   }
//
//   RxBool isvisibleOfflineSchedule = false.obs;
//   void updateOfflineAndSchedule() {
//     isvisibleOfflineSchedule.value = !isvisibleOfflineSchedule.value;
//   }
//
//   final onlineFeeList = <DoctorFree>[].obs;
//   final offlineFeeList = <OffilleDoctorFree>[].obs;
//
//   refreshData() {
//     getfeesOnlineListFunction();
//     getfeesOfflineListFunction();
//   }
//
//   void getfeesOnlineListFunction() async {
//     try {
//       await DoctorFeesRepository.doctorOnlineFreesRepository()?.then((value) {
//         onlineFeeList.value = value!;
//         // print(onlineFeeList.value);
//         // print(value);
//       });
//       isNoDataFound.value = true;
//       isLoading.value = true;
//     } catch (err) {
//       showCustomSnackBar(ApiMessages.errorNetwork, true);
//     } finally {
//       isLoading.value = false;
//       isNoDataFound.value = true;
//     }
//   }
//
//   void getfeesOfflineListFunction() async {
//     try {
//       await DoctorFeesRepository.doctorOfflineFreesRepository()?.then((value) {
//         offlineFeeList.value = value!;
//       });
//       isLoading.value = true;
//       isNoDataFound.value = true;
//     } catch (err) {
//       showCustomSnackBar(ApiMessages.errorNetwork, true);
//     } finally {
//       isLoading.value = false;
//       isNoDataFound.value = true;
//     }
//   }
//
//   feesDElETFunction(id) async {
//     try {
//       isLoading.value = true;
//       await DoctorFeesRepository.fees_Delet_Setup(id).then((value) {
//         if (value == true) {
//           Get.back();
//           getfeesOfflineListFunction();
//           getfeesOnlineListFunction();
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
