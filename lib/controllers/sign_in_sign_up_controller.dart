import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../customs/custom_message_button.dart';

class SignInSignUpCustomsController extends GetxController {
  final getStorge = GetStorage();
  bool isRememberme = false;
  final bool passwordVisible = false;
  void showExitWarning() =>
      showCustomExitbutton("Are your want to exit !!", false);
}
