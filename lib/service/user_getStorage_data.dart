// ignore_for_file: file_names, duplicate_ignore

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

class GetUserDataFromGetStorage extends GetxController {
  final userData = GetStorage().read("USER");
}
