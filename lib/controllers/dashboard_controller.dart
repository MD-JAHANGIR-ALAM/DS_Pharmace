// // ignore_for_file: override_on_non_overriding_member, empty_catches, empty_catches, duplicate_ignore
//
// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../models/dash_board_banner_model.dart';
// import '../models/doctor_apporment_list_model.dart';
// import '../models/doctor_speciality.dart';
// import '../models/doctor_user_data_model.dart';
// import '../models/emergency_appoinment_models.dart';
// import '../models/offline_appoinment_model.dart';
// import '../models/review.dart';
// import '../models/today_appoinment_model.dart';
// import '../repository/dashboard_repository.dart';
//
// class DashboardController extends GetxController {
//   @override
//   void onInit() {
//     super.onInit();
//
//     Timer(const Duration(seconds: 1), () {
//       getDashBoardBanner();
//     });
//     Timer(const Duration(seconds: 0), () {
//       getUserData();
//       ReviewData();
//     });
//     Timer(const Duration(seconds: 1), () {
//       specialityData();
//     });
//     Timer(const Duration(seconds: 1), () {
//       todayAppoinment();
//     });
//     Timer(const Duration(seconds: 1), () {
//       emergencyAppoinment();
//     });
//     Timer(const Duration(seconds: 1), () {
//       offlineAppoinment();
//       onlineDoctorAppoinment();
//     });
//   }
//
//   refreshData() {
//     offlineAppoinment();
//     emergencyAppoinment();
//     todayAppoinment();
//     specialityData();
//     getUserData();
//     getDashBoardBanner();
//     onlineDoctorAppoinment();
//   }
//
//   final isLoading = false.obs;
//
//   // ignore: non_constant_identifier_names
//   final dashboard_banner = <DashBoardBanner>[].obs;
//   final doctorUserDataForDashboard = DoctorUserData().obs;
//   final speciality = <DoctorSpeciality>[].obs;
//   final todayAppoinmentData = <TodayAppointment>[].obs;
//   final emergencAppoinmentData = <EmergencyAppointment>[].obs;
//   final offlineAppoinmentData = <OfflineAppointment>[].obs;
//   final onlineAppoinmentData = <Doctorappoinmentlist>[].obs;
//   final reviewData = <Review>[].obs;
//   final isUserDataLoading = false.obs;
//
//   RxInt totalPatient = 0.obs;
//
//   void getDashBoardBanner() async {
//     try {
//       isLoading.value = true;
//       await DashBoardRepositor.dashboardBanader()?.then((value) {
//         dashboard_banner.value = value!;
//         update();
//       });
//     } catch (err) {
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   getUserData() async {
//     try {
//       await DashBoardRepositor.getDoctoruserData()?.then((value) {
//         doctorUserDataForDashboard.value = value!;
//
//         update();
//       });
//       isUserDataLoading.value = true;
//     } catch (err) {
//       // ignore: avoid_print
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   void specialityData() async {
//     try {
//       isLoading.value = true;
//       await DashBoardRepositor.getSpeciality()?.then((value) {
//         speciality.value = value!;
//         update();
//       });
//     } catch (err) {
//       // ignore: avoid_print
//       print(err);
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   void ReviewData() async {
//     try {
//       isLoading.value = true;
//       await DashBoardRepositor.getReview()?.then((value) {
//         reviewData.value = value!;
//
//         if (reviewData!.isNotEmpty) {
//           for (int i = 0; i < reviewData!.length; i++) {
//             totalStar.value = totalStar.value + int.parse(reviewData![i].star!);
//           }
//           starValue.value =
//               (totalStar.value / reviewData.value.length).toDouble();
//         }else{
//
//           starValue=1.0.obs;
//         }
//
//
//
//       });
//     } catch (err) {
//       // ignore: avoid_print
//       print(err);
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   var totalStar = 0.obs;
//   var starValue = 0.0.obs;
//
//   // void getNurseReviews() {
//   //   try {
//   //     totalStar.value=0;
//   //     totalReview.value=0;
//   //     Get.dialog(Center(
//   //       child: CircularProgressIndicator(),
//   //     ));
//   //     repository.getNurseReviews().then((value) {
//   //       if (value.status == "success") {
//   //         Get.back();
//   //         totalReview.value = value.result!.length;
//   //         if (value.result!.isNotEmpty) {
//   //           for (int i = 0; i < value.result!.length; i++) {
//   //             totalStar.value =
//   //                 totalStar.value + int.parse(value.result![i].star!);
//   //
//   //
//   //           }
//   //         }
//   //       }
//   //       starValue.value=(totalStar.value/totalReview.value).toDouble();
//   //
//   //
//   //     }
//   //
//   //
//   //
//   //     ).onError((error, stackTrace) {
//   //       Get.back();
//   //       //error handling code
//   //     });
//   //   } catch (exception) {
//   //     Get.back();
//   //     // exception handling code
//   //   }
//   //
//   // }
//   void todayAppoinment() async {
//     totalPatient.value = 0;
//     try {
//       isLoading.value = true;
//       await DashBoardRepositor.todayAppoinment()?.then((value) {
//         todayAppoinmentData.value = value!;
//         totalPatient.value += todayAppoinmentData.length;
//       });
//     } catch (err) {
//       // ignore: avoid_print
//       print(err);
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   void emergencyAppoinment() async {
//     try {
//       isLoading.value = true;
//       await DashBoardRepositor.emergencyAppoinment()?.then((value) {
//         emergencAppoinmentData.value = value!;
//
//         totalPatient.value += emergencAppoinmentData.length;
//       });
//     } catch (err) {
//       // ignore: avoid_print
//       print(err);
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   void offlineAppoinment() async {
//     try {
//       isLoading.value = true;
//       await DashBoardRepositor.offlineAppoinment()?.then((value) {
//         offlineAppoinmentData.value = value!;
//         // print(offlineAppoinmentData.value);
//         totalPatient.value += offlineAppoinmentData.length;
//       });
//     } catch (err) {
//       // ignore: avoid_print
//       print(err);
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   void onlineDoctorAppoinment() async {
//     try {
//       isLoading.value = true;
//       await DashBoardRepositor.onlineDoctorAppoinment()?.then((value) {
//         onlineAppoinmentData.value = value!;
//         // print(offlineAppoinmentData.value);
//         totalPatient.value += onlineAppoinmentData.length;
//       });
//     } catch (err) {
//       // ignore: avoid_print
//       print(err);
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }
