// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// import '../models/search_madicen.dart';
// import '../repository/search_medicen_repository.dart';
//
// class Search_Controller extends GetxController {
//   final isLoading = false.obs;
//   final isDataLoading = false.obs;
//   final searchMadicen = <SearchMadicen>[].obs;
//   var medicen = ''.obs;
//   TextEditingController serachEditingController = TextEditingController();
//   var midicenlist = <SearchMadicen>[].obs;
//
//   @override
//   void onInit() {
//     getserchMedicneData(serachEditingController);
//     // TODO: implement onInit
//     super.onInit();
//   }
//
//   selectmedicenstatus(val) {
//     medicen.value = val;
//   }
//
//   List medicineListSelected = [].obs;
//
//   void getserchMedicneData(serachEditingController) async {
//     try {
//       isLoading.value = true;
//
//       Map body = {"madicine": serachEditingController.text};
//       await SearchMedicenRepository.getsearchMedicenData(body)?.then((value) {
//
//         if (value != null) {
//           midicenlist.value=value;
//           for (int i = 0; i < midicenlist.length; i++) {
//
//             medicineListSelected.add("${midicenlist[i].madName.toString()}");
//
//           }
//                 print(medicineListSelected);
//         }
//       });
//
//       isDataLoading.value = true;
//     } catch (err) {
//       // showCustomSnackBar(ApiMessages.errorNetwork, true);
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//
// }
