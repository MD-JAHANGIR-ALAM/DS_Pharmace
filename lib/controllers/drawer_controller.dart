import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../customs/custom_message_button.dart';
import '../routes/routes.dart';
import 'dashboard_controller.dart';

class DrawerCustomsController extends GetxController {
  List<String> menuItems = [
    'Home',
    'Profile',
    'Chamber List',
    'Schedule',
    'Fees Setup',
    'Appointment',
    'Refer Patient',
    'Assistant Setup',
    'Complete List',
    'FamilyList',
    'Wallet Setup',
    'Transection',
  ].obs;
  List<bool> isHighlighted = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ].obs;
  List<dynamic> drawerIconList = [
    const Icon(
      Icons.home,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.person,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.add_box_sharp,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.schedule,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.money,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.touch_app_outlined,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.touch_app_outlined,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.person_add,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.person_pin_circle_outlined,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.wallet_membership,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.money,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.folder_special,
      color: Colors.white,
      size: 30,
    ),
  ].obs;

  clickFunction(data, index) {
    for (int i = 0; i < isHighlighted.length; i++) {
      if (index == i) {
        isHighlighted[index] = true;
        if (data == "Appointment") {

          Get.toNamed(RouteManeger.todayAppoinmentList);
        } else if (data == "Chamber List") {
          Get.toNamed(RouteManeger.chamberList);
        } else if (data == "Profile") {
          Get.toNamed(RouteManeger.profilePage);
        } else if (data == "Home") {
          Get.toNamed(RouteManeger.dashboard);
        } else if (data == "Transection") {
          Get.toNamed(RouteManeger.transactionPage);
        }  else if (data == "Refer Patient") {

        } else if (data == "Wallet Setup") {
          Get.toNamed(RouteManeger.walletePage);
        }  else if (data == "Complete List") {
          Get.toNamed(RouteManeger.doctor_completed_pacent);
        } else if (data == "FamilyList") {
          Get.toNamed(RouteManeger.famillyList);
        } else if (data == "Assistant Setup") {
          Get.toNamed(RouteManeger.StafList);
        } else if (data == "Schedule") {
          Get.toNamed(RouteManeger.schedule);
        } else if (data == "Fees Setup") {
          Get.toNamed(RouteManeger.fees);
        } else {
          Get.back();
        }
      } else {
        isHighlighted[i] = false;
      }
    }
  }

  logout() {
    final getStorge = GetStorage();
    getStorge.write("USER", null);
    showCustomSnackBar("Logout successful...", false);
    Get.offAllNamed(RouteManeger.mobileSignIn);
  }

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
