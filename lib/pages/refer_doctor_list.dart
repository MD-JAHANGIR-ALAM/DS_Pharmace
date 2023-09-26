// ignore_for_file: deprecated_member_use, invalid_use_of_protected_member

import 'package:ds_pharmace/pages/refer_patient/refer_helper/refer_list_weidet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app_bar.dart';
import '../../controllers/referpacent_controller.dart';
import '../../routes/routes.dart';
import '../../utils/colors_code.dart';
import '../../utils/styles.dart';

// ignore: must_be_immutable
class ReferDoctorList extends StatelessWidget {
  ReferDoctorList({super.key});

  ReferPacentController referPacentController =
      Get.put(ReferPacentController());

  @override
  Widget build(context) => Obx(() => RefreshIndicator(
        color: ColorsCode.primary_color,
        onRefresh: () {
          referPacentController.refreshData();
          // ignore: void_checks
          return Future.value(true);
        },
        child: Scaffold(
          backgroundColor: ColorsCode.page_background_color,
          appBar: AppBarWidget.customAppBar(),
          body:  RawScrollbar(
            //isAlwaysShown: true,
            thumbColor: ColorsCode.icon_primary_colors,
            thickness: 7,
            thumbVisibility: true,
            radius: const Radius.circular(10),
            trackRadius: Radius.circular(8),
            padding: EdgeInsets.symmetric(vertical: 10),
            crossAxisMargin: 4,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'Refer Patient',
                      style: robotoBlack,
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ));
}
