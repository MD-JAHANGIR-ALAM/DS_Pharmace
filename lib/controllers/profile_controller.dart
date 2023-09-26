// // ignore_for_file: avoid_print, override_on_non_overriding_member
//
// import 'dart:async';
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// import '../customs/custom_message_button.dart';
// import '../models/chamber_and_schedule_list_model.dart';
// import '../models/education_qualification_model.dart';
// import '../models/online_schedule.dart';
// import '../models/working_experiance.dart';
// import '../pages/profile/profileWidget/profile_helper.dart';
// import '../repository/all_function_repository.dart';
// import 'dart:io';
//
// import '../service/user_getStorage_data.dart';
// import 'dashboard_controller.dart';
//
// class ProfileController extends GetxController {
//   DashboardController dashboardController = Get.put(DashboardController());
//   RxBool isvisibleProfileInfo = false.obs;
//   RxBool isvisibleChamberSchedule = false.obs;
//   RxBool isvisibleacademicQualification = false.obs;
//   RxBool isvisibleOnlineSchedule = false.obs;
//   RxBool isvisibleWorkingExperiance = false.obs;
//   RxBool isvisiblespeciality = false.obs;
//   final isLoading = false.obs;
//   final formKey = GlobalKey<FormState>();
//   RxList selectedSubSpeciality = [].obs;
//   var subSpecialityTitle = "Sub Specialist".obs;
//   RxList specialities = [].obs;
//   RxList subSpecialities = [].obs;
//
//   final educationQulification = <EducationQalification>[].obs;
//   // final isNoDataFound = false.obs;
//   final chamberAndScheduleList = <ChamberAndScheduleList>[].obs;
//
//   final onlineScheduleList = <OnlineSchedule>[].obs;
//   final workingExperiance = <WorkingExperiance>[].obs;
//
//   final isDataLoading = false.obs;
//   void updateProfileinformation() {
//     isvisibleProfileInfo.value = !isvisibleProfileInfo.value;
//   }
//
//   void updateChamberAndSchedule() {
//     isvisibleChamberSchedule.value = !isvisibleChamberSchedule.value;
//   }
//
//   void updateOnlineAndSchedule() {
//     isvisibleOnlineSchedule.value = !isvisibleOnlineSchedule.value;
//   }
//
//   void academicQualification() {
//     isvisibleacademicQualification.value =
//         !isvisibleacademicQualification.value;
//   }
//
//   void workingExperiacneFunction() {
//     isvisibleWorkingExperiance.value = !isvisibleWorkingExperiance.value;
//   }
//
//   void specialityFunction() {
//     isvisiblespeciality.value = !isvisiblespeciality.value;
//   }
//
//   @override
//   void onInit() {
//     Timer(const Duration(seconds: 1), () {
//       chamberAndSheduleFunction();
//     });
//     Timer(const Duration(seconds: 1), () {
//       educationQualification();
//     });
//     Timer(const Duration(seconds: 1), () {
//       onlineSheduleFunction();
//     });
//     Timer(const Duration(seconds: 1), () {
//       workingExperianceFunction();
//     });
//     Timer(const Duration(seconds: 1), () {
//       specialitiesfancation();
//     });
//
//     super.onInit();
//   }
//
// // ********************************** Schedule start **********************************
//
//   void chamberAndSheduleFunction() async {
//     try {
//       isLoading.value = true;
//       await AllFunctionRepository.chmaberAndScheduleListRepository()
//           ?.then((value) {
//         chamberAndScheduleList.value = value!;
//       });
//
//       isDataLoading.value = true;
//       // ignore: empty_catches
//     } catch (err) {
//     } finally {
//       isLoading.value = false;
//       isDataLoading.value = true;
//     }
//   }
//
//   void onlineSheduleFunction() async {
//     try {
//       isLoading.value = true;
//       await AllFunctionRepository.onlineScheduleRepository()?.then((value) {
//         onlineScheduleList.value = value!;
//       });
//       isDataLoading.value = true;
//     } catch (err) {
//       print(err);
//     } finally {
//       isLoading.value = false;
//       isDataLoading.value = true;
//     }
//   }
//
//   void scheduleDelete(id) async {
//     try {
//       isLoading.value = true;
//       await AllFunctionRepository.scheduleDeleterepository(id).then((value) {
//         if (value == true) {
//           refreshData();
//           Get.back();
//           showCustomSnackBar('Data has been deleted', false);
//         }
//       });
//       isDataLoading.value = true;
//     } catch (err) {
//       print(err);
//     } finally {
//       isLoading.value = false;
//       isDataLoading.value = true;
//     }
//   }
// // ********************************** Schedule end **********************************
//
// // ********************************** education start **********************************
//   void educationQualification() async {
//     try {
//       isLoading.value = true;
//       await AllFunctionRepository.educationQualification()?.then((value) {
//         educationQulification.value = value!;
//       });
//       isDataLoading.value = true;
//     } catch (err) {
//       print(err);
//     } finally {
//       isLoading.value = false;
//       isDataLoading.value = true;
//     }
//   }
//
//   void workingExperianceFunction() async {
//     try {
//       isLoading.value = true;
//       await AllFunctionRepository.workingExperianceRepository()?.then((value) {
//         workingExperiance.value = value!;
//       });
//       isDataLoading.value = true;
//     } catch (err) {
//       print(err);
//     } finally {
//       isLoading.value = false;
//       isDataLoading.value = true;
//     }
//   }
//
//   void workingExperiancfancationDelete(id) async {
//     try {
//       isLoading.value = true;
//       await AllFunctionRepository.workingExperianceDeleteRepository(id)
//           .then((value) {
//         if (value == true) {
//           refreshData();
//           Get.back();
//           showCustomSnackBar('Data has been deleted', false);
//         }
//       });
//
//       isDataLoading.value = true;
//     } catch (err) {
//       print(err);
//     } finally {
//       isLoading.value = false;
//       isDataLoading.value = true;
//     }
//   }
//
//   void educationQulificationDelete(id) async {
//     try {
//       isLoading.value = true;
//       await AllFunctionRepository.educationDeleteRepository(id).then((value) {
//         if (value == true) {
//           refreshData();
//           Get.back();
//           showCustomSnackBar('Data has been deleted', false);
//         }
//       });
//
//       isDataLoading.value = true;
//     } catch (err) {
//       print(err);
//     } finally {
//       isLoading.value = false;
//       isDataLoading.value = true;
//     }
//   }
//
//   final TextEditingController instituteController = TextEditingController();
//   final TextEditingController passingYearController = TextEditingController();
//   final TextEditingController departmentController = TextEditingController();
//   final TextEditingController urlController = TextEditingController();
//   final TextEditingController examinationConroller = TextEditingController();
//   final TextEditingController gradeController = TextEditingController();
//   final TextEditingController scaleController = TextEditingController();
//   final TextEditingController designationController = TextEditingController();
//   final TextEditingController startTimeController = TextEditingController();
//   final TextEditingController endTimeController = TextEditingController();
//
//   var editEducationId = 0.obs;
//   var editWorkingExId = 0.obs;
//   var editEducationPhoto = "".obs;
//   var editWorkingexpPhoto = "".obs;
//   late File imageFile;
//   late File phofilePhotoFile;
//   var piketProfileImagePath = ''.obs;
//   var piketImagePath = ''.obs;
//   final picker = ImagePicker();
//   String fileNamepiker = "";
//   var specilitiesValue = "".obs;
//
// // ********************************************** profile photo update **********************************
//
//   selectImages(sendValue) async {
//     var userId = GetUserDataFromGetStorage().userData['id'];
//     if (sendValue == "camera") {
//       // ignore: deprecated_member_use
//       final pickedFile = await picker.getImage(
//         source: ImageSource.camera,
//         maxWidth: 400,
//         maxHeight: 400,
//         imageQuality: 80,
//       );
//       if (pickedFile != null) {
//         phofilePhotoFile = File(pickedFile.path);
//         piketProfileImagePath.value = pickedFile.path;
//       }
//     }
//     if (sendValue == "gallery") {
//       // ignore: deprecated_member_use
//       final pickedFile = await picker.getImage(
//         source: ImageSource.gallery,
//         maxWidth: 400,
//         maxHeight: 400,
//         imageQuality: 80,
//       );
//       if (pickedFile != null) {
//         phofilePhotoFile = File(pickedFile.path);
//         piketProfileImagePath.value = pickedFile.path;
//       }
//     }
//     FormData body = FormData({
//       "user_id": userId.toString(),
//       "photo":
//           MultipartFile(phofilePhotoFile, filename: "$piketProfileImagePath")
//     });
//     try {
//       isLoading.value = true;
//       await AllFunctionRepository.profilePhotoUpdateRepository(body)
//           .then((value) {
//         if (value == true) {
//           dashboardController.getUserData();
//           Get.back();
//           showCustomSnackBar(
//               'Profile photo have been updated successfully  ', false);
//         }
//       });
//       isDataLoading.value = true;
//     } catch (err) {
//       print(err);
//     } finally {
//       isLoading.value = false;
//       isDataLoading.value = true;
//     }
//   }
//
// // ********************************************** profile photo update end **********************************
//
//   getImagefromCamera() async {
//     // ignore: deprecated_member_use
//     final pickedFile = await picker.getImage(
//       source: ImageSource.camera,
//       maxWidth: 400,
//       maxHeight: 400,
//       imageQuality: 80,
//     );
//
//     if (pickedFile != null) {
//       imageFile = File(pickedFile.path);
//       piketImagePath.value = pickedFile.path;
//       fileNamepiker = pickedFile.path.split("/").last;
//     }
//   }
//
//   getImagefromgallary() async {
//     // ignore: deprecated_member_use
//     final pickedFile = await picker.getImage(
//       source: ImageSource.gallery,
//       maxWidth: 400,
//       maxHeight: 400,
//       imageQuality: 80,
//     );
//     if (pickedFile != null) {
//       imageFile = File(pickedFile.path);
//       piketImagePath.value = pickedFile.path;
//       fileNamepiker = pickedFile.path.split("/").last;
//     }
//   }
//
//   void editEducationFunction(educationData) {
//     instituteController.text = educationData.instituteName;
//     examinationConroller.text = educationData.examination;
//     passingYearController.text = educationData.passingYear;
//     gradeController.text = educationData.grade;
//     scaleController.text = educationData.scale;
//     editEducationId.value = educationData.id;
//     editEducationPhoto.value = educationData.experienceCertificate;
//     ProfileHelperClass().educationQalificationCreate();
//   }
//
//   void editworkingExperiacnFunction(workingExparianceData) {
//     instituteController.text = workingExparianceData.instituteName;
//     designationController.text = workingExparianceData.designation;
//     departmentController.text = workingExparianceData.department;
//     startTimeController.text = workingExparianceData.startTime;
//     endTimeController.text = workingExparianceData.endTime;
//     editWorkingExId.value = workingExparianceData.id;
//     editWorkingexpPhoto.value = workingExparianceData.experienceCertificate;
//     ProfileHelperClass().workingExperiancefuncationCreate();
//   }
//
//   void educationSave() async {
//     var userId = GetUserDataFromGetStorage().userData['id'];
//     if (instituteController.text == "") {
//       showCustomSnackBar('Institute  con not be empty!', true);
//     } else if (examinationConroller.text == "") {
//       showCustomSnackBar('Examination con not be empty!', true);
//     } else if (passingYearController.text == "") {
//       showCustomSnackBar('Passing year  con not be empty!', true);
//     } else if (passingYearController.text.length < 4) {
//       showCustomSnackBar('Passing year  con not more then 4 digit !', true);
//     } else if (gradeController.text == "") {
//       showCustomSnackBar('Grade  con not be empty !', true);
//     } else if (scaleController.text == "") {
//       showCustomSnackBar('Scale  con not be empty !', true);
//       // ignore: unrelated_type_equality_checks
//     } else if (piketImagePath == '') {
//       showCustomSnackBar('Image not select yet !!', true);
//     } else {
//       FormData body = FormData({
//         "user_id": userId.toString(),
//         "institute_name": instituteController.text,
//         "examination": examinationConroller.text,
//         "passing_year": passingYearController.text,
//         "grade": gradeController.text,
//         "scale": scaleController.text,
//         "experience_certificate":
//             MultipartFile(imageFile, filename: "$piketImagePath")
//       });
//
//       try {
//         isLoading.value = true;
//         await AllFunctionRepository.educationSaveRepository(body).then((value) {
//           if (value == true) {
//             refreshData();
//             Get.back();
//             clearData();
//             showCustomSnackBar('Data has been save successfuly ', false);
//           }
//         });
//
//         isDataLoading.value = true;
//       } catch (err) {
//         print(err);
//       } finally {
//         isLoading.value = false;
//         isDataLoading.value = true;
//       }
//     }
//   }
//
//   void educationUpdate() async {
//     // var userId = GetUserDataFromGetStorage().userData['id'];
//     if (instituteController.text == "") {
//       showCustomSnackBar('Institute  con not be empty!', true);
//     } else if (examinationConroller.text == "") {
//       showCustomSnackBar('Examination con not be empty!', true);
//     } else if (passingYearController.text == "") {
//       showCustomSnackBar('Passing year  con not be empty!', true);
//     } else if (passingYearController.text.length < 4) {
//       showCustomSnackBar('Passing year  con not more then 4 digit !', true);
//     } else if (gradeController.text == "") {
//       showCustomSnackBar('Grade  con not be empty !', true);
//     } else if (scaleController.text == "") {
//       showCustomSnackBar('Scale  con not be empty !', true);
//       // ignore: unrelated_type_equality_checks
//     } else {
//       FormData body = FormData({
//         "id": editEducationId.toString(),
//         "institute_name": instituteController.text,
//         "examination": examinationConroller.text,
//         "passing_year": passingYearController.text,
//         "grade": gradeController.text,
//         "scale": scaleController.text,
//         "experience_certificate":
//             // ignore: unrelated_type_equality_checks
//             piketImagePath != ''
//                 ? MultipartFile(imageFile, filename: "$piketImagePath")
//                 : editEducationPhoto
//       });
//
//       try {
//         isLoading.value = true;
//         await AllFunctionRepository.educationUpdateRepository(body)
//             .then((value) {
//           if (value == true) {
//             refreshData();
//             Get.back();
//             clearData();
//             showCustomSnackBar('Data has been update successfuly ', false);
//           }
//         });
//
//         isDataLoading.value = true;
//       } catch (err) {
//         print(err);
//       } finally {
//         isLoading.value = false;
//         isDataLoading.value = true;
//       }
//     }
//   }
//
// // ********************************** education  end **********************************
//
//   void workingExperiancSave() async {
//     var userId = GetUserDataFromGetStorage().userData['id'];
//     if (instituteController.text == "") {
//       showCustomSnackBar('Institute  con not be empty!', true);
//     } else if (designationController.text == "") {
//       showCustomSnackBar('Designation con not be empty!', true);
//     } else if (departmentController.text == "") {
//       showCustomSnackBar('Department  con not be empty!', true);
//     } else if (startTimeController.text == "") {
//       showCustomSnackBar('Start date  con not be empty!', true);
//     } else if (startTimeController.text.length < 4) {
//       showCustomSnackBar('Start date  con not more then 4 digit !', true);
//     } else if (endTimeController.text == "") {
//       showCustomSnackBar('End date  con not be empty!', true);
//     } else if (endTimeController.text.length < 4) {
//       showCustomSnackBar('end date  con not more then 4 digit !', true);
//       // ignore: unrelated_type_equality_checks
//     } else if (piketImagePath == '') {
//       showCustomSnackBar('Image not select yet !!', true);
//     } else {
//       FormData body = FormData({
//         "user_id": userId.toString(),
//         "institute_name": instituteController.text,
//         "designation": designationController.text,
//         "department": departmentController.text,
//         "start_time": startTimeController.text,
//         "end_time": endTimeController.text,
//         "url": urlController.text,
//         "experience_certificate":
//             MultipartFile(imageFile, filename: "$piketImagePath")
//       });
//
//       try {
//         isLoading.value = true;
//         await AllFunctionRepository.workingExperiancSaveRepository(body)
//             .then((value) {
//           if (value == true) {
//             refreshData();
//             Get.back();
//             clearData();
//             showCustomSnackBar('Data has been save successfuly ', false);
//           }
//         });
//
//         isDataLoading.value = true;
//       } catch (err) {
//         print(err);
//       } finally {
//         isLoading.value = false;
//         isDataLoading.value = true;
//       }
//     }
//   }
//
//   void workingExperiancUpdate() async {
//     if (instituteController.text == "") {
//       showCustomSnackBar('Institute  con not be empty!', true);
//     } else if (designationController.text == "") {
//       showCustomSnackBar('Designation con not be empty!', true);
//     } else if (departmentController.text == "") {
//       showCustomSnackBar('Department  con not be empty!', true);
//     } else if (startTimeController.text == "") {
//       showCustomSnackBar('Start date  con not be empty!', true);
//     } else if (startTimeController.text.length < 4) {
//       showCustomSnackBar('Start date  con not more then 4 digit !', true);
//     } else if (endTimeController.text == "") {
//       showCustomSnackBar('End date  con not be empty!', true);
//     } else if (endTimeController.text.length < 4) {
//       showCustomSnackBar('end date  con not more then 4 digit !', true);
//       // ignore: unrelated_type_equality_checks
//     } else {
//       FormData body = FormData({
//         "id": editWorkingExId.toString(),
//         "institute_name": instituteController.text,
//         "designation": designationController.text,
//         "department": departmentController.text,
//         "start_time": startTimeController.text,
//         "end_time": endTimeController.text,
//         "url": urlController.text,
//         // ignore: unrelated_type_equality_checks
//         "experience_certificate": piketImagePath != ''
//             ? MultipartFile(imageFile, filename: "$piketImagePath")
//             : editWorkingexpPhoto
//       });
//
//       try {
//         isLoading.value = true;
//         await AllFunctionRepository.workingExperiancUpdateRepository(body)
//             .then((value) {
//           if (value == true) {
//             refreshData();
//             Get.back();
//             clearData();
//             showCustomSnackBar('Data has been save successfuly ', false);
//           }
//         });
//
//         isDataLoading.value = true;
//       } catch (err) {
//         print(err);
//       } finally {
//         isLoading.value = false;
//         isDataLoading.value = true;
//       }
//     }
//   }
//
// // ********************************** speciality  start **********************************
//
//   void specialityfancationDelete(id) async {
//     try {
//       isLoading.value = true;
//       await AllFunctionRepository.specialityDeleteRepository(id).then((value) {
//         if (value == true) {
//           refreshData();
//           Get.back();
//           showCustomSnackBar('Data has been delete successfully.', false);
//         }
//       });
//       isDataLoading.value = true;
//     } catch (err) {
//       print(err);
//     } finally {
//       isLoading.value = false;
//       isDataLoading.value = true;
//     }
//   }
//
//   void specialityfancationSave() async {
//     var userId = GetUserDataFromGetStorage().userData['id'];
//     // ignore: unrelated_type_equality_checks
//     if (specilitiesValue == "") {
//       showCustomSnackBar('Speciality con not be empty!', true);
//       // ignore: unrelated_type_equality_checks
//     } else if (selectedSubSpeciality == "") {
//       showCustomSnackBar('Sub speciality con not be empty!', true);
//     } else {
//       Map body = {
//         "user_id": userId.toString(),
//         "specialitie": specilitiesValue.toString(),
//         "sub_specialitie": jsonEncode(selectedSubSpeciality),
//       };
//
//       print(body);
//       try {
//         isLoading.value = true;
//         await AllFunctionRepository.specialitySaveRepository(body)
//             .then((value) {
//           if (value == true) {
//             refreshData();
//             Get.back();
//             showCustomSnackBar('Data has been save successfully.', false);
//           }
//         });
//         isDataLoading.value = true;
//       } catch (err) {
//         print(err);
//       } finally {
//         isLoading.value = false;
//         isDataLoading.value = true;
//       }
//     }
//   }
//
//   void specialitiesfancation() async {
//     try {
//       isLoading.value = true;
//       await AllFunctionRepository.specialitiesRepository().then((value) {
//         if (value.isNotEmpty) {
//           specialities.value = value;
//         }
//       });
//       isDataLoading.value = true;
//     } catch (err) {
//       print(err);
//     } finally {
//       isLoading.value = false;
//       isDataLoading.value = true;
//     }
//   }
//
//   selectFromDropDown(String value, desination) async {
//     specilitiesValue.value = value;
//     // ignore: invalid_use_of_protected_member
//     selectedSubSpeciality.value.clear();
//     try {
//       isLoading.value = true;
//       await AllFunctionRepository.subSpecialitiesRepository(specilitiesValue)
//           .then((value) {
//         if (value.isNotEmpty) {
//           subSpecialities.value = value;
//         }
//       });
//       isDataLoading.value = true;
//     } catch (err) {
//       print(err);
//     } finally {
//       isLoading.value = false;
//       isDataLoading.value = true;
//     }
//   }
//
//   selectMultipaleDataFromDropDown(valueData) {
//     if (valueData != null) {
//       selectedSubSpeciality.value = valueData;
//     } else {
//       selectedSubSpeciality.value = [];
//     }
//   }
//
// // ********************************** speciality  end **********************************
//
//   // @override
//   // void onReady() {
//   //   super.onReady();
//   // }
//
//   // @override
//   // void onClose() {
//   //   super.onClose();
//   // }
//
//
//
//   void clearData() {
//     instituteController.clear();
//     examinationConroller.clear();
//     passingYearController.clear();
//     gradeController.clear();
//     scaleController.clear();
//     scaleController.clear();
//     editEducationPhoto.value = '';
//     piketImagePath.value = '';
//     editEducationId.value = 0;
//     designationController.clear();
//     departmentController.clear();
//     startTimeController.clear();
//     endTimeController.clear();
//     editWorkingExId.value = 0;
//     editWorkingexpPhoto.value = "";
//   }
//
//   @override
//   void refreshData() async {
//     chamberAndSheduleFunction();
//     educationQualification();
//     onlineSheduleFunction();
//     workingExperianceFunction();
//     specialitiesfancation();
//     dashboardController.specialityData();
//   }
// }
