import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

import '../customs/custom_message_button.dart';
import '../responsive/responsive_helper.dart';
import '../routes/routes.dart';
import '../service/user_getStorage_data.dart';

class SplashCustomsController extends GetxController {
  final getStorge = GetStorage();

  @override
  void onReady() {
    super.onReady();
    if (GetUserDataFromGetStorage().userData != null) {
      if (GetUserDataFromGetStorage().userData['user_type'] == "doctor") {
        if (ResponsiveHelper.isMobilePhone()) {
          // Future.delayed(const Duration(seconds: 2), () {
            Get.offAllNamed(RouteManeger.dashboard);
          // });
        }
      } else {
        getStorge.write("USER", null);
        showCustomSnackBar("This apps only for doctors", true);
        Get.offAllNamed(RouteManeger.mobileSignIn);
      }
    } else {
      Get.offAllNamed(RouteManeger.mobileSignIn);
    }
  }
}
