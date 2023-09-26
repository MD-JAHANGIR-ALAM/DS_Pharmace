// final getStorge = GetStorage();

import '../service/user_getStorage_data.dart';

final headerValue = {
  'Accept': 'application/json',
  'Authorization': 'Bearer ${GetUserDataFromGetStorage().userData['token']}'
};

final fileheaderValue = {
  'Content-Type': "multipart/form-data",
  'Authorization': 'Bearer ${GetUserDataFromGetStorage().userData['token']}'
};
