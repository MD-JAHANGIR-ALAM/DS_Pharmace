// // ignore_for_file: override_on_non_overriding_member, invalid_use_of_protected_member, avoid_print, prefer_typing_uninitialized_variables, non_constant_identifier_names
//
// import 'dart:async';
//
// import 'package:get/get.dart';
// import '../models/doctorlist_models.dart';
// import '../models/patient_report.dart';
// import '../models/refere_pacent_list.dart';
// import '../pages/refer_pacent/refer_doctor_list.dart';
// import '../repository/patient_report_repository.dart';
// import '../repository/refer_repository.dart';
// import '../routes/routes.dart';
// import '../service/user_getStorage_data.dart';
//
// class ReferPacentController extends GetxController {
//   final isLoading = false.obs;
//   final isLoadingrefer = false.obs;
//   final isNoDataFound = false.obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     getspecialiyDocotr();
//     Timer(const Duration(seconds: 1), () {
//       referDoctorListFunction();
//     });
//   }
//
//   final referList = <DoctorReferPacent>[].obs;
//   final patientreportList = <PatientReport>[].obs;
//
//   refreshData() {
//     getspecialiyDocotr();
//     referDoctorListFunction();
//   }
//
//   void referDoctorListFunction() async {
//     try {
//       await ReferRepository.referListRepository().then((value) {
//         referList.value = value!;
//       });
//       isLoadingrefer.value = true;
//     } catch (err) {
//       //showCustomSnackBar(ApiMessages.errorNetwork, true);
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   void patientReportListFunction(reportuserI) async {
//     try {
//       await PrescentRepository.patientReport(reportuserI)?.then((value) {
//         patientreportList.value = value!;
//       });
//       isLoading.value = true;
//     } catch (err) {
//       //showCustomSnackBar(ApiMessages.errorNetwork, true);
//     } finally {
//     //  isLoading.value = false;
//     }
//   }
//
//   var specialityList = [].obs;
//   final categorydoctorList = <DoctorList>[].obs;
//
//   var speciality = "".obs;
//
//   void changeSpeciality(val) {
//     speciality.value = val;
//     getspecialityDoctorData(val);
//   }
//
//   void getspecialiyDocotr() async {
//     try {
//       isLoading.value = true;
//       await ReferRepository.getspecialiyList().then((value) {
//         specialityList.clear();
//         specialityList.value = value;
//       });
//       isUserDataLoading.value = true;
//       // ignore: empty_catches
//     } catch (err) {
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   void getspecialityDoctorData(speciality) async {
//     try {
//       isLoading.value = true;
//       await ReferRepository.getspecialityDoctor(speciality.toString())
//           ?.then((value) {
//
//           categorydoctorList.value = value!;
//           print(categorydoctorList.value);
//
//         //Get.toNamed(RouteManeger.specialityDoctorList, arguments: specialitie);
//       });
//       isUserDataLoading.value = true;
//     } catch (err) {
//       // showCustomSnackBar(ApiMessages.errorNetwork, true);
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   var firstName;
//   var lastName;
//   var problem;
//   var userid;
//   setData(Data) {
//     firstName = Data.patient.firstName;
//     lastName = Data.patient.lastName;
//     problem = Data.problem;
//     problem = Data.problem;
//     userid = Data.userId;
//     Get.toNamed(RouteManeger.referpacent);
//   }
//
//   final isUserDataLoading = false.obs;
//   var doctor_id = GetUserDataFromGetStorage().userData['id'];
//
//   getRefereAdd(referId) {
//     Map body = {
//       "doctor_id": doctor_id.toString(),
//       "user_id": userid.toString(),
//       "refer_user_id": referId.toString(),
//       "status": "1"
//     };
//     print(body);
//     ReferRepository.referpacentAddRepository(body).then((value) {
//       if (value == true) {
//         refreshData();
//
//         Get.to(ReferDoctorList());
//       }
//     });
//   }
// }
