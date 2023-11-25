import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';

class ConfirmWithDrawButton extends StatefulWidget {
  const ConfirmWithDrawButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ConfirmWithDrawButtonState createState() => _ConfirmWithDrawButtonState();
}

class _ConfirmWithDrawButtonState extends State<ConfirmWithDrawButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    controller.addListener(() {
      setState(() {});
    });
  }

  void resetButton() {
    controller.reverse();
  }

  @override
  Widget build(context) => WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: Obx(() => RefreshIndicator(
          color: ColorsCode.primary_color,
          onRefresh: () {
            // accountController.refreshData();
            // ignore: void_checks
            return Future.value(true);
          },
          child: Scaffold(
              backgroundColor: ColorsCode.page_background_color,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "abc",
                            style: Style.block_text_style,
                          ),
                        ],
                      ),
                    ),
                    Style.distan_size10,
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "  BDT",
                            style: Style.block_text_style,
                          ),
                        ],
                      ),
                    ),
                    Style.distan_size10,
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "(-)  BDT",
                            style: Style.robotoRegular,
                          ),
                        ],
                      ),
                    ),
                    Style.distan_size10,
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "(-) BDT",
                            style: Style.robotoRegular,
                          ),
                        ],
                      ),
                    ),
                    Style.distan_size10,
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " BDT",
                            style: Style.block_text_style,
                          ),
                        ],
                      ),
                    ),
                    Style.distan_size10,
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " BDT",
                            style: Style.block_text_style,
                          ),
                        ],
                      ),
                    ),
                    Style.distan_size10,
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                    ),
                    Style.distan_size10,
                    Style.distan_size10,
                    Center(
                        child: SizedBox(
                      height: Get.size.height * 0.125,
                      width: Get.size.width * 0.25,
                      child: GestureDetector(
                        onTapDown: (_) => controller.forward(),
                        onTapUp: (_) {
                          if (controller.status == AnimationStatus.forward) {
                            controller.reverse();
                          } else {
                            return null;

                            Timer(const Duration(seconds: 3), () {
                              resetButton();
                            });
                          }
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: Get.size.height * 0.20,
                              width: Get.size.width * 0.25,
                              child: const CircularProgressIndicator(
                                value: 1.0,
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: Get.size.height * 0.20,
                              width: Get.size.width * 0.25,
                              child: CircularProgressIndicator(
                                value: controller.value,
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                    ColorsCode.primary_color),
                              ),
                            ),
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              maxRadius: 40,
                              minRadius: 40,
                              backgroundImage: AssetImage(
                                Images.logo_icon,
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            // accountController.clearData();
                          },
                          child: const Text(
                            'CANCEL',
                            style: Style.alltext_block_text_style,
                          ),
                        ),
                        // Style.widthdistan_size2,
                        // TextButton(
                        //   onPressed: () {
                        //     // ignore: unrelated_type_equality_checks
                        //     if (accountController.editWalletId != 0) {
                        //       accountController.wallatSetupEdit();
                        //     } else {
                        //       accountController.wallatSetupCreate();
                        //     }
                        //   },
                        //   child: const Text(
                        //     'CONFIRM',
                        //     style: Style.alltext_primary_text_style,
                        //   ),
                        // ),
                      ],
                    )
                  ],
                ),
              )))));
}
