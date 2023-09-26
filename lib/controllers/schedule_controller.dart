// // ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_typing_uninitialized_variables, duplicate_ignore, deprecated_member_use, unrelated_type_equality_checks
//
// import 'dart:async';
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../customs/custom_message_button.dart';
// import '../pages/schedule/schedule_page.dart';
// import '../repository/schedule_repository.dart';
// import '../service/user_getStorage_data.dart';
// import '../utils/api_response_message.dart';
// import '../utils/colors_code.dart';
// import 'profile_controller.dart';
//
// class ScheduleController extends GetxController {
//   // ignore: prefer_typing_uninitialized_variables
//   var userid = GetUserDataFromGetStorage().userData['id'];
//
//   var chamber = ''.obs;
//
//   TextEditingController patientlimitcontroller = TextEditingController();
//   TextEditingController intervalTimecontroller = TextEditingController();
//
//   var isChecked1 = false.obs;
//   var isChecked2 = false.obs;
//   var isChecked3 = false.obs;
//   var isChecked4 = false.obs;
//   var isChecked5 = false.obs;
//   var isChecked6 = false.obs;
//   var isChecked7 = false.obs;
//
//   var su = false.obs;
//   var mo = false.obs;
//   var tu = false.obs;
//   var wed = false.obs;
//   var th = false.obs;
//   var fr = false.obs;
//   var sa = false.obs;
//
//   List onlinestatuslist = ['Online', 'Offline'].obs;
//   var onlinestatus = ''.obs;
//   RxList chamberlist = [].obs;
//   RxBool isvisible20 = false.obs;
//   final isLoading = false.obs;
//   final isNoDataFound = false.obs;
//
//   var sundaystartvalues = [].obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     Timer(const Duration(seconds: 1), () {});
//   }
//
//   selectOnlineStatus(valu) {
//     if (valu == "Online") {
//       isvisible20.value = false;
//       onlinestatus.value = "Online";
//       chamberlist.value.clear();
//       chamber.value = '';
//     }
//     if (valu == "Offline") {
//       isvisible20.value = true;
//       onlinestatus.value = "Offline";
//       chamberlist.value.clear();
//       chamberListFunction();
//     }
//   }
//
//   selectChamberStatus(valu) {
//     chamber.value = valu;
//   }
//
//   void sundayVisible(Value) {
//     isChecked1.value = !isChecked1.value;
//   }
//
//   void mondayVisible(Value) {
//     isChecked2.value = !isChecked2.value;
//   }
//
//   void tusdayVisible(Value) {
//     isChecked3.value = !isChecked3.value;
//   }
//
//   void wednesdayVisible(Value) {
//     isChecked4.value = !isChecked4.value;
//   }
//
//   void thursdayVisible(Value) {
//     isChecked5.value = !isChecked5.value;
//   }
//
//   void fridaydayVisible(Value) {
//     isChecked6.value = !isChecked6.value;
//   }
//
//   void saturdayVisible(Value) {
//     isChecked7.value = !isChecked7.value;
//   }
//
//   refreshData() {}
//
//   void chamberListFunction() async {
//     try {
//       await ScheduleRepository.schedulchemberListRepository().then((value) {
//         chamberlist.clear();
//         chamberlist.value = value;
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
//   var sunstartampm = "Am".obs;
//   var sunendampm = "Am".obs;
//   var monstartampm = "Am".obs;
//   var monendampm = "Am".obs;
//   var tuesstartampm = "Am".obs;
//   var tuesendampm = "Am".obs;
//   var wednesstartampm = "Am".obs;
//   var wednesendampm = "Am".obs;
//   var thursstartampm = "Am".obs;
//   var thursendampm = "Am".obs;
//   var fridstartampm = "Am".obs;
//   var fridendampm = "Am".obs;
//   var satstartampm = "Am".obs;
//   var satendampm = "Am".obs;
//
//   var mondaystartjsonvalu;
//   var mondayendjsonvalu;
//   var tuesdaystartjsonvalu;
//
//   // ignore: prefer_typing_uninitialized_variables
//   var tuesdayendjsonvalu;
//
//   var wednesdaystartjsonvalu;
//   var wednesdayendjsonvalu;
//
//   var thursdaystartjsonvalu;
//   var thursdayendjsonvalu;
//   var fridaystartjsonvalu;
//   var fridayendjsonvalu;
//   var saturdaystartjsonvalu;
//   var saturdayendjsonvalu;
//   var sundaystartjsonvalu;
//   var sundayendjsonvalu;
//
//   sundayStarTime(
//     int index,
//     String val,
//   ) async {
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": sunstartampm.toString(),
//     };
//
//     sundaystartvalues.add(json);
//     sundaystartjsonvalu = jsonEncode(sundaystartvalues);
//     // ignore: avoid_print
//     print(sundaystartjsonvalu);
//   }
//
//   sundayEnTime(
//     int index,
//     String val,
//   ) async {
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": sunendampm.toString(),
//     };
//     sundaystartvalues.add(json);
//     sundayendjsonvalu = jsonEncode(sundaystartvalues);
//     // ignore: avoid_print
//     print(sundayendjsonvalu);
//   }
//
//   mondayStarTime(
//     int index,
//     String val,
//   ) async {
//     // ignore: avoid_print
//     print(index);
//     // ignore: avoid_print
//     print(val);
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": monstartampm.toString(),
//     };
//     sundaystartvalues.add(json);
//     mondaystartjsonvalu = jsonEncode(sundaystartvalues);
//     // ignore: avoid_print
//     print(mondaystartjsonvalu);
//   }
//
//   mondayEnTime(
//     int index,
//     String val,
//   ) async {
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": monendampm.toString(),
//     };
//     sundaystartvalues.add(json);
//     mondayendjsonvalu = jsonEncode(sundaystartvalues);
//     // ignore: avoid_print
//     print(mondayendjsonvalu);
//   }
//
//   // ===========================
//
//   // =====================
//
//   tuesdayStarTime(
//     int index,
//     String val,
//   ) async {
//     // ignore: avoid_print
//     print(index);
//     // ignore: avoid_print
//     print(val);
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": monstartampm.toString(),
//     };
//     sundaystartvalues.add(json);
//     tuesdaystartjsonvalu = jsonEncode(sundaystartvalues);
//   }
//
//   tuesdayEnTime(
//     int index,
//     String val,
//   ) async {
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": monendampm.toString(),
//     };
//     sundaystartvalues.add(json);
//     tuesdayendjsonvalu = jsonEncode(sundaystartvalues);
//   }
//
//   wednesdayStarTime(
//     int index,
//     String val,
//   ) async {
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": wednesstartampm.toString(),
//     };
//     sundaystartvalues.add(json);
//
//     wednesdaystartjsonvalu = jsonEncode(sundaystartvalues);
//   }
//
//   wednesdayEnTime(
//     int index,
//     String val,
//   ) async {
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": wednesendampm.toString(),
//     };
//     sundaystartvalues.add(json);
//
//     wednesdayendjsonvalu = jsonEncode(sundaystartvalues);
//   }
//
//   thursdayStarTime(
//     int index,
//     String val,
//   ) async {
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": thursstartampm.toString(),
//     };
//     sundaystartvalues.add(json);
//
//     thursdaystartjsonvalu = jsonEncode(sundaystartvalues);
//   }
//
//   thursdayEnTime(
//     int index,
//     String val,
//   ) async {
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": thursendampm.toString(),
//     };
//     sundaystartvalues.add(json);
//
//     thursdayendjsonvalu = jsonEncode(sundaystartvalues);
//   }
//
//   fridayStarTime(
//     int index,
//     String val,
//   ) async {
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": fridstartampm.toString(),
//     };
//     sundaystartvalues.add(json);
//     fridaystartjsonvalu = jsonEncode(sundaystartvalues);
//   }
//
//   fridayEnTime(
//     int index,
//     String val,
//   ) async {
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": fridendampm.toString(),
//     };
//     sundaystartvalues.add(json);
//     fridayendjsonvalu = jsonEncode(sundaystartvalues);
//   }
//
//   // ========================
//
//   saturdayStarTime(
//     int index,
//     String val,
//   ) async {
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": satstartampm.toString(),
//     };
//     sundaystartvalues.add(json);
//     saturdaystartjsonvalu = jsonEncode(sundaystartvalues);
//   }
//
//   saturdayEnTime(
//     int index,
//     String val,
//   ) async {
//     int foundKey = -1;
//     for (var map in sundaystartvalues) {
//       if (map.containsKey("id")) {
//         if (map["id"] == index) {
//           foundKey = index;
//           break;
//         }
//       }
//     }
//     if (-1 != foundKey) {
//       sundaystartvalues.removeWhere((map) {
//         return map["id"] == foundKey;
//       });
//     }
//     Map<String, dynamic> json = {
//       "id": index,
//       "value": val.toString(),
//       "ampm": satendampm.toString(),
//     };
//     sundaystartvalues.add(json);
//     saturdayendjsonvalu = jsonEncode(sundaystartvalues);
//   }
//
//   var selectdate, selectminitue;
//   Rx<TimeOfDay> selectedthurdayTime = TimeOfDay.now().obs;
//   Rx<TimeOfDay> selectedthurdayTendime = TimeOfDay.now().obs;
//
//   selectthurdaystartTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             // ignore: prefer_const_constructors
//             colorScheme: ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//       context: context,
//       initialTime: selectedthurdayTime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     // ignore: unrelated_type_equality_checks
//     if (timeOfDay != null && timeOfDay != selectedthurdayTime) {
//       selectedthurdayTime.value = timeOfDay;
//
//       selectdate = selectedthurdayTime.value.hour;
//       selectminitue = selectedthurdayTime.value.minute;
//
//       if (selectdate < 10 && selectminitue < 10) {
//         thursdayStarTime(0,
//             "0000-00-00 0${selectedthurdayTime.value.hour}:0${selectedthurdayTime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         thursdayStarTime(0,
//             "0000-00-00 ${selectedthurdayTime.value.hour}:0${selectedthurdayTime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         thursdayStarTime(0,
//             "0000-00-00 0${selectedthurdayTime.value.hour}:${selectedthurdayTime.value.minute}:00");
//       } else {
//         thursdayStarTime(0,
//             "0000-00-00 ${selectedthurdayTime.value.hour}:${selectedthurdayTime.value.minute}:00");
//       }
//     } else {
//       selectedthurdayTime = selectedthurdayTime;
//     }
//   }
//
//   selectthurdayendTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             colorScheme:
//                 const ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//       context: context,
//       initialTime: selectedthurdayTendime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     // ignore: unrelated_type_equality_checks
//     if (timeOfDay != null && timeOfDay != selectedthurdayTendime) {
//       selectedthurdayTendime.value = timeOfDay;
//
//       selectdate = selectedthurdayTendime.value.hour;
//       selectminitue = selectedthurdayTendime.value.minute;
//
//       if (selectdate < 10 && selectminitue < 10) {
//         thursdayEnTime(0,
//             "0000-00-00 0${selectedthurdayTendime.value.hour}:0${selectedthurdayTendime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         thursdayEnTime(0,
//             "0000-00-00 ${selectedthurdayTendime.value.hour}:0${selectedthurdayTendime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         thursdayEnTime(0,
//             "0000-00-00 0${selectedthurdayTendime.value.hour}:${selectedthurdayTendime.value.minute}:00");
//       } else {
//         thursdayEnTime(0,
//             "0000-00-00 ${selectedthurdayTendime.value.hour}:${selectedthurdayTendime.value.minute}:00");
//       }
//     } else {
//       selectedthurdayTendime = selectedthurdayTendime;
//     }
//   }
//
//   Rx<TimeOfDay> selectedsaturdayTime = TimeOfDay.now().obs;
//   Rx<TimeOfDay> selectedsaturdayTendime = TimeOfDay.now().obs;
//
//   // ignore: unused_element
//   selectsaturdayEnTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: ((context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             colorScheme:
//                 const ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       }),
//       context: context,
//       initialTime: selectedsaturdayTime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     // ignore: unrelated_type_equality_checks
//     if (timeOfDay != null && timeOfDay != selectedsaturdayTime) {
//       selectedsaturdayTime.value = timeOfDay;
//
//       var selectdate = selectedsaturdayTime.value.hour;
//       var selectminitue = selectedsaturdayTime.value.minute;
//
//       if (selectdate < 10 && selectminitue < 10) {
//         saturdayEnTime(0,
//             "0000-00-00 0${selectedsaturdayTime.value.hour}:0${selectedsaturdayTime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         saturdayEnTime(0,
//             "0000-00-00 ${selectedsaturdayTime.value.hour}:0${selectedsaturdayTime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         saturdayEnTime(0,
//             "0000-00-00 0${selectedsaturdayTime.value.hour}:${selectedsaturdayTime.value.minute}:00");
//       } else {
//         saturdayEnTime(0,
//             "0000-00-00 ${selectedsaturdayTime.value.hour}:${selectedsaturdayTime.value.minute}:00");
//       }
//     } else {
//       selectedsaturdayTime = selectedsaturdayTime;
//     }
//   }
//
//   selectsaturdayStartTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             colorScheme:
//                 const ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//       context: context,
//       initialTime: selectedsaturdayTendime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     // ignore: unrelated_type_equality_checks
//     if (timeOfDay != null && timeOfDay != selectedsaturdayTendime) {
//       selectedsaturdayTendime.value = timeOfDay;
//
//       var selectdate = selectedsaturdayTendime.value.hour;
//       var selectminitue = selectedsaturdayTendime.value.minute;
//
//       if (selectdate < 10 && selectminitue < 10) {
//         saturdayStarTime(0,
//             "0000-00-00 0${selectedsaturdayTendime.value.hour}:0${selectedsaturdayTendime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         saturdayStarTime(0,
//             "0000-00-00 ${selectedsaturdayTendime.value.hour}:0${selectedsaturdayTendime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         saturdayStarTime(0,
//             "0000-00-00 0${selectedsaturdayTendime.value.hour}:${selectedsaturdayTendime.value.minute}:00");
//       } else {
//         saturdayStarTime(0,
//             "0000-00-00 ${selectedsaturdayTendime.value.hour}:${selectedsaturdayTendime.value.minute}:00");
//       }
//     } else {
//       selectedsaturdayTendime = selectedsaturdayTendime;
//     }
//   }
//
// // ========================================saterday end=============================================
//
// // ============================= friday==================================
//   Rx<TimeOfDay> selectedfridayTime = TimeOfDay.now().obs;
//   Rx<TimeOfDay> selectedfridayTendime = TimeOfDay.now().obs;
//
//   selectfridaystartTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             colorScheme:
//                 const ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//       context: context,
//       initialTime: selectedfridayTime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     // ignore: unrelated_type_equality_checks
//     if (timeOfDay != null && timeOfDay != selectedfridayTime) {
//       selectedfridayTime.value = timeOfDay;
//
//       var selectdate = selectedfridayTime.value.hour;
//       var selectminitue = selectedfridayTime.value.minute;
//
//       if (selectdate < 10 && selectminitue < 10) {
//         fridayStarTime(0,
//             "0000-00-00 0${selectedfridayTime.value.hour}:0${selectedfridayTime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         fridayStarTime(0,
//             "0000-00-00 ${selectedfridayTime.value.hour}:0${selectedfridayTime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         fridayStarTime(0,
//             "0000-00-00 0${selectedfridayTime.value.hour}:${selectedfridayTime.value.minute}:00");
//       } else {
//         fridayStarTime(0,
//             "0000-00-00 ${selectedfridayTime.value.hour}:${selectedfridayTime.value.minute}:00");
//       }
//     } else {
//       selectedfridayTime = selectedfridayTime;
//     }
//   }
//
//   selectfridayendTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             // ignore: prefer_const_constructors
//             colorScheme: ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//       context: context,
//       initialTime: selectedfridayTendime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     // ignore: unrelated_type_equality_checks
//     if (timeOfDay != null && timeOfDay != selectedfridayTendime) {
//       selectedfridayTendime.value = timeOfDay;
//
//       var selectdate = selectedfridayTendime.value.hour;
//       var selectminitue = selectedfridayTendime.value.minute;
//
//       if (selectdate < 10 && selectminitue < 10) {
//         fridayEnTime(0,
//             "0000-00-00 0${selectedfridayTendime.value.hour}:0${selectedfridayTendime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         fridayEnTime(0,
//             "0000-00-00 ${selectedfridayTendime.value.hour}:0${selectedfridayTendime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         fridayEnTime(0,
//             "0000-00-00 0${selectedfridayTendime.value.hour}:${selectedfridayTendime.value.minute}:00");
//       } else {
//         fridayEnTime(0,
//             "0000-00-00 ${selectedfridayTendime.value.hour}:${selectedfridayTendime.value.minute}:00");
//       }
//     } else {
//       selectedfridayTendime = selectedfridayTendime;
//     }
//   }
//
// // ========================================fri end=============================================
//
// // =============================thursday ==================================
//
// // ========================================thurday end=============================================
//
// // =============================widnessday ==================================
//   Rx<TimeOfDay> selectedwidnesdayTime = TimeOfDay.now().obs;
//   Rx<TimeOfDay> selectedwidnesdayTendime = TimeOfDay.now().obs;
//
//   selectwidnesdaystartTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             colorScheme:
//                 const ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//       context: context,
//       initialTime: selectedwidnesdayTime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     // ignore: unrelated_type_equality_checks
//     if (timeOfDay != null && timeOfDay != selectedwidnesdayTime) {
//       selectedwidnesdayTime.value = timeOfDay;
//
//       var selectdate = selectedwidnesdayTime.value.hour;
//       var selectminitue = selectedwidnesdayTime.value.minute;
//
//       if (selectdate < 10 && selectminitue < 10) {
//         wednesdayStarTime(0,
//             "0000-00-00 0${selectedwidnesdayTime.value.hour}:0${selectedwidnesdayTime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         wednesdayStarTime(0,
//             "0000-00-00 ${selectedwidnesdayTime.value.hour}:0${selectedwidnesdayTime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         wednesdayStarTime(0,
//             "0000-00-00 0${selectedwidnesdayTime.value.hour}:${selectedwidnesdayTime.value.minute}:00");
//       } else {
//         wednesdayStarTime(0,
//             "0000-00-00 ${selectedwidnesdayTime.value.hour}:${selectedwidnesdayTime.value.minute}:00");
//       }
//     } else {
//       selectedwidnesdayTime = selectedwidnesdayTime;
//     }
//   }
//
//   selectwidnesdayendTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             colorScheme:
//                 const ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//       context: context,
//       initialTime: selectedwidnesdayTendime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     // ignore: unrelated_type_equality_checks
//     if (timeOfDay != null && timeOfDay != selectedwidnesdayTendime) {
//       selectedwidnesdayTendime.value = timeOfDay;
//
//       var selectdate = selectedwidnesdayTendime.value.hour;
//       var selectminitue = selectedwidnesdayTendime.value.minute;
//
//       if (selectdate < 10 && selectminitue < 10) {
//         wednesdayEnTime(0,
//             "0000-00-00 0${selectedwidnesdayTendime.value.hour}:0${selectedwidnesdayTendime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         wednesdayEnTime(0,
//             "0000-00-00 ${selectedwidnesdayTendime.value.hour}:0${selectedwidnesdayTendime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         wednesdayEnTime(0,
//             "0000-00-00 0${selectedwidnesdayTendime.value.hour}:${selectedwidnesdayTendime.value.minute}:00");
//       } else {
//         wednesdayEnTime(0,
//             "0000-00-00 ${selectedwidnesdayTendime.value.hour}:${selectedwidnesdayTendime.value.minute}:00");
//       }
//     } else {
//       selectedwidnesdayTendime = selectedwidnesdayTendime;
//     }
//   }
//
// // ========================================widnesday end=============================================
// // =============================sunsday ==================================
//   Rx<TimeOfDay> selectedsundayTime = TimeOfDay.now().obs;
//   Rx<TimeOfDay> selectedsundayTendime = TimeOfDay.now().obs;
//
//   selectsundaystartTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             colorScheme:
//                 const ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//       context: context,
//       initialTime: selectedsundayTime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     // ignore: unrelated_type_equality_checks
//     if (timeOfDay != null && timeOfDay != selectedsundayTime) {
//       selectedsundayTime.value = timeOfDay;
//
//       var selectdate = selectedsundayTime.value.hour;
//       var selectminitue = selectedsundayTime.value.minute;
//       if (selectdate < 10 && selectminitue < 10) {
//         sundayStarTime(0,
//             "0000-00-00 0${selectedsundayTime.value.hour}:0${selectedsundayTime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         sundayStarTime(0,
//             "0000-00-00 ${selectedsundayTime.value.hour}:0${selectedsundayTime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         sundayStarTime(0,
//             "0000-00-00 0${selectedsundayTime.value.hour}:${selectedsundayTime.value.minute}:00");
//       } else {
//         sundayStarTime(0,
//             "0000-00-00 ${selectedsundayTime.value.hour}:${selectedsundayTime.value.minute}:00");
//       }
//     } else {
//       // print('aaaaa');
//       selectedsundayTime = selectedsundayTime;
//     }
//   }
//
//   selectsundayendTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             colorScheme:
//                 const ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//       context: context,
//       initialTime: selectedsundayTendime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     // ignore: unrelated_type_equality_checks
//     if (timeOfDay != null && timeOfDay != selectedsundayTendime) {
//       selectedsundayTendime.value = timeOfDay;
//
//       var selectdate = selectedsundayTendime.value.hour;
//       var selectminitue = selectedsundayTendime.value.minute;
//
//       if (selectdate < 10 && selectminitue < 10) {
//         sundayEnTime(0,
//             "0000-00-00 0${selectedsundayTendime.value.hour}:0${selectedsundayTendime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         sundayEnTime(0,
//             "0000-00-00 ${selectedsundayTendime.value.hour}:0${selectedsundayTendime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         sundayEnTime(0,
//             "0000-00-00 0${selectedsundayTendime.value.hour}:${selectedsundayTendime.value.minute}:00");
//       } else {
//         sundayEnTime(0,
//             "0000-00-00 ${selectedsundayTendime.value.hour}:${selectedsundayTendime.value.minute}:00");
//       }
//     } else {}
//   }
//
// // ========================================widnesday end=============================================
// // =============================monday ==================================
//   Rx<TimeOfDay> selectedmondayTime = TimeOfDay.now().obs;
//   Rx<TimeOfDay> selectedmondayTendime = TimeOfDay.now().obs;
//
//   selectmondaystartTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             colorScheme:
//                 const ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//       context: context,
//       initialTime: selectedmondayTime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     if (timeOfDay != null && timeOfDay != selectedmondayTime) {
//       selectedmondayTime.value = timeOfDay;
//
//       var selectdate = selectedmondayTime.value.hour;
//       var selectminitue = selectedmondayTime.value.minute;
//
//       if (selectdate < 10 && selectminitue < 10) {
//         mondayStarTime(0,
//             "0000-00-00 0${selectedmondayTime.value.hour}:0${selectedmondayTime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         mondayStarTime(0,
//             "0000-00-00 ${selectedmondayTime.value.hour}:0${selectedmondayTime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         mondayStarTime(0,
//             "0000-00-00 0${selectedmondayTime.value.hour}:${selectedmondayTime.value.minute}:00");
//       } else {
//         mondayStarTime(0,
//             "0000-00-00 ${selectedmondayTime.value.hour}:${selectedmondayTime.value.minute}:00");
//       }
//     } else {
//       selectedmondayTime = selectedmondayTime;
//     }
//   }
//
//   selectmondayendTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             colorScheme:
//                 const ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//       context: context,
//       initialTime: selectedmondayTendime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     if (timeOfDay != null && timeOfDay != selectedmondayTendime) {
//       selectedmondayTendime.value = timeOfDay;
//
//       var selectdate = selectedmondayTendime.value.hour;
//       var selectminitue = selectedmondayTendime.value.minute;
//
//       if (selectdate < 10 && selectminitue < 10) {
//         mondayEnTime(0,
//             "0000-00-00 0${selectedmondayTendime.value.hour}:0${selectedmondayTendime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         mondayEnTime(0,
//             "0000-00-00 ${selectedmondayTendime.value.hour}:0${selectedmondayTendime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         mondayEnTime(0,
//             "0000-00-00 0${selectedmondayTendime.value.hour}:${selectedmondayTendime.value.minute}:00");
//       } else {
//         mondayEnTime(0,
//             "0000-00-00 ${selectedmondayTendime.value.hour}:${selectedmondayTendime.value.minute}:00");
//       }
//     } else {
//       selectedmondayTendime = selectedmondayTendime;
//     }
//   }
//
// // ========================================monday end=============================================
//
// // =============================monday ==================================
//   Rx<TimeOfDay> selectedtuesdayTime = TimeOfDay.now().obs;
//   Rx<TimeOfDay> selectedtuesdayTendime = TimeOfDay.now().obs;
//
//   selecttuesdaystartTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             colorScheme:
//                 const ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//       context: context,
//       initialTime: selectedtuesdayTime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     if (timeOfDay != null && timeOfDay != selectedtuesdayTime) {
//       selectedtuesdayTime.value = timeOfDay;
//
//       var selectdate = selectedtuesdayTime.value.hour;
//       var selectminitue = selectedtuesdayTime.value.minute;
//
//       if (selectdate < 10 && selectminitue < 10) {
//         tuesdayStarTime(0,
//             "0000-00-00 0${selectedtuesdayTime.value.hour}:0${selectedtuesdayTime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         tuesdayStarTime(0,
//             "0000-00-00 ${selectedtuesdayTime.value.hour}:0${selectedtuesdayTime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         tuesdayStarTime(0,
//             "0000-00-00 0${selectedtuesdayTime.value.hour}:${selectedtuesdayTime.value.minute}:00");
//       } else {
//         tuesdayStarTime(0,
//             "0000-00-00 ${selectedtuesdayTime.value.hour}:${selectedtuesdayTime.value.minute}:00");
//       }
//     } else {
//       selectedtuesdayTime = selectedtuesdayTime;
//     }
//   }
//
//   selecttuesdayendTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: ColorsCode.primary_color,
//             hintColor: ColorsCode.primary_color,
//             colorScheme:
//                 const ColorScheme.light(primary: ColorsCode.primary_color),
//             buttonTheme:
//                 const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//       context: context,
//       initialTime: selectedtuesdayTendime.value,
//       initialEntryMode: TimePickerEntryMode.dial,
//     );
//     if (timeOfDay != null && timeOfDay != selectedtuesdayTendime) {
//       selectedtuesdayTendime.value = timeOfDay;
//
//       var selectdate = selectedtuesdayTendime.value.hour;
//       var selectminitue = selectedtuesdayTendime.value.minute;
//
//       if (selectdate < 10 && selectminitue < 10) {
//         tuesdayEnTime(0,
//             "0000-00-00 0${selectedtuesdayTendime.value.hour}:0${selectedtuesdayTendime.value.minute}:00");
//       } else if (selectdate > 9 && selectminitue < 10) {
//         tuesdayEnTime(0,
//             "0000-00-00 ${selectedtuesdayTendime.value.hour}:0${selectedtuesdayTendime.value.minute}:00");
//       } else if (selectdate < 10 && selectminitue > 9) {
//         tuesdayEnTime(0,
//             "0000-00-00 0${selectedtuesdayTendime.value.hour}:${selectedtuesdayTendime.value.minute}:00");
//       } else {
//         tuesdayEnTime(0,
//             "0000-00-00 ${selectedtuesdayTendime.value.hour}:${selectedtuesdayTendime.value.minute}:00");
//       }
//     } else {
//       selectedtuesdayTendime = selectedtuesdayTendime;
//     }
//   }
//
//   clearData() {
//     onlinestatus.value = "";
//     chamber.value="";
//     patientlimitcontroller.clear();
//     intervalTimecontroller.clear();
//     mondaystartjsonvalu = null;
//     mondayendjsonvalu = null;
//     tuesdaystartjsonvalu = null;
//     // ignore: prefer_typing_uninitialized_variables
//     tuesdayendjsonvalu = null;
//
//     wednesdaystartjsonvalu = null;
//     wednesdayendjsonvalu = null;
//
//     thursdaystartjsonvalu = null;
//     thursdayendjsonvalu = null;
//     fridaystartjsonvalu = null;
//     fridayendjsonvalu = null;
//     saturdaystartjsonvalu = null;
//     saturdayendjsonvalu = null;
//     sundaystartjsonvalu = null;
//     sundayendjsonvalu = null;
//     sa.value = false;
//     mo.value = false;
//
//     th.value = false;
//     wed.value = false;
//     tu.value = false;
//     fr.value = false;
//     su.value = false;
//
//     isChecked1 = false.obs;
//     isChecked2 = false.obs;
//     isChecked3 = false.obs;
//     isChecked4 = false.obs;
//     isChecked5 = false.obs;
//     isChecked6 = false.obs;
//     isChecked7 = false.obs;
//
//   }
//
//   shidulFunction() async {
//     if (onlinestatus.toString() == "") {
//       showCustomSnackBar("Online status filled can't be blank!", true);
//     } else if (patientlimitcontroller.text == "") {
//       showCustomSnackBar("Patient limit filled can't be blank!", true);
//     } else if (intervalTimecontroller.text == "") {
//       showCustomSnackBar("Interval time filled can't be blank!", true);
//     } else if (su.value == true && sundaystartjsonvalu == null ||
//         su.value == true && sundayendjsonvalu == null) {
//       showCustomSnackBar("Sunday start and end Time con not be empty !", true);
//     } else if (mo.value == true && mondaystartjsonvalu == null ||
//         mo.value == true && mondayendjsonvalu == null) {
//       showCustomSnackBar("Monday start and end Time con not be empty !", true);
//     } else if (tu.value == true && tuesdaystartjsonvalu == null ||
//         tu.value == true && tuesdayendjsonvalu == null) {
//       showCustomSnackBar("Tuesday start and end Time con not be empty !", true);
//     } else if (wed.value == true && wednesdaystartjsonvalu == null ||
//         wed.value == true && wednesdayendjsonvalu == null) {
//       showCustomSnackBar(
//           "Wednesday start and end Time con not be empty !", true);
//     } else if (th.value == true && thursdaystartjsonvalu == null ||
//         th.value == true && thursdayendjsonvalu == null) {
//       showCustomSnackBar(
//           "Thursday start and end Time con not be empty !", true);
//     } else if (fr.value == true && fridaystartjsonvalu == null ||
//         fr.value == true && fridayendjsonvalu == null) {
//       showCustomSnackBar("Friday start and end Time con not be empty !", true);
//     } else if (sa.value == true && saturdaystartjsonvalu == null ||
//         sa.value == true && saturdayendjsonvalu == null) {
//       showCustomSnackBar(
//           "Saturday start and end Time con not be empty !", true);
//     } else {
//       Map body = {
//         "user_id": userid.toString(),
//         "sunday": su.value == true ? "SUNDAY" : "",
//         // "sunstarttime": su.value == true ? sundaystartjsonvalu : null,
//         // "sunendtime": su.value == true ? sundayendjsonvalu : null,
//         "monday": mo.value == true ? "MONDAY" : "",
//         //"monstarttime": mo.value == true ? mondaystartjsonvalu : null,
//         //"monendtime": mo.value == true ? mondayendjsonvalu : null,
//         "tuesday": tu.value == true ? "TUESDAY" : "",
//         //"tuesstarttime": tu.value == true ? tuesdaystartjsonvalu : null,
//         //"tuesendtime": tu.value == true ? thursdayendjsonvalu : null,
//         "wednesday": wed.value == true ? "WEDNESDAY" : "",
//         //"wednesstarttime": wed.value == true ? wednesdaystartjsonvalu : null,
//         //"wednesendtime": wed.value == true ? wednesdayendjsonvalu : null,
//         "thursday": th.value == true ? "THURSDAY" : "",
//         // "thursstarttime": th.value == true ? thursdaystartjsonvalu : null,
//         //"thursendtime": th.value == true ? thursdayendjsonvalu : null,
//         "friday": fr.value == true ? "FRIDAYDAY" : "",
//         //"fristarttime": fr.value == true ? fridaystartjsonvalu : null,
//         //"friendtime": fr.value == true ? fridayendjsonvalu : null,
//         "saturday": sa.value == true ? "SATURDAY" : "",
//         // "saturstarttime": sa.value == true ? saturdaystartjsonvalu : null,
//         //"saturendtime": sa.value == true ? saturdayendjsonvalu : null,
//         "patient_limit": patientlimitcontroller.text,
//         "interval_time": intervalTimecontroller.text,
//         "onlinestatus": onlinestatus.value,
//         "chamber_name": chamber == "Online" ? null : chamber.value,
//       };
//
//       if (su.value == true) {
//         if (sundaystartjsonvalu != null && sundayendjsonvalu != null) {
//           body.addAll({"sunstarttime": sundaystartjsonvalu});
//           body.addAll({"sunendtime": sundayendjsonvalu});
//         }
//       }
//
//       if (mo.value == true) {
//         if (mondaystartjsonvalu != null && mondayendjsonvalu != null) {
//           body.addAll({"monstarttime": mondaystartjsonvalu});
//           body.addAll({"monendtime": mondayendjsonvalu});
//         }
//       }
//
//       if (tu.value == true) {
//         if (tuesdaystartjsonvalu != null && tuesdayendjsonvalu != null) {
//           body.addAll({"tuesstarttime": tuesdaystartjsonvalu});
//           body.addAll({"tuesendtime": tuesdayendjsonvalu});
//         }
//       }
//       if (wed.value == true) {
//         if (wednesdaystartjsonvalu != null && wednesdayendjsonvalu != null) {
//           body.addAll({"wednesstarttime": wednesdaystartjsonvalu});
//           body.addAll({"wednesendtime": wednesdayendjsonvalu});
//         }
//       }
//       if (th.value == true) {
//         if (thursdaystartjsonvalu != null && thursdayendjsonvalu != null) {
//           body.addAll({"thursstarttime": thursdaystartjsonvalu});
//           body.addAll({"thursendtime": thursdayendjsonvalu});
//         }
//       }
//       if (fr.value == true) {
//         if (fridaystartjsonvalu != null && fridayendjsonvalu != null) {
//           body.addAll({"fristarttime": fridaystartjsonvalu});
//           body.addAll({"friendtime": fridayendjsonvalu});
//         }
//       }
//       if (sa.value == true) {
//         if (saturdaystartjsonvalu != null && saturdayendjsonvalu != null) {
//           body.addAll({"saturstarttime": saturdaystartjsonvalu});
//           body.addAll({"saturendtime": saturdayendjsonvalu});
//         }
//       }
//
//       await ScheduleRepository.schedulCreateRepository(body).then((value) {
//         if (value == true) {
//           Get.put(ProfileController()).refreshData();
//           showCustomSnackBar('Schudel created successfuly ', false);
//           Get.to(const SchedulPage());
//
//           clearData();
//         } else {
//           showCustomSnackBar('Something went wrong', true);
//         }
//       });
//     }
//   }
// }
