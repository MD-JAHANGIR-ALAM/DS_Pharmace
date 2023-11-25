// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors_code.dart';
import '../../utils/styles.dart';
import '../widgets/drop_down_button.dart';

// ignore: must_be_immutable
class WithdrawPage extends StatelessWidget {
  WithdrawPage({super.key});

  @override
  Widget build(context) => RefreshIndicator(
    color: ColorsCode.primary_color,
    onRefresh: () {

      // ignore: void_checks
      return Future.value(true);
    },
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsCode.primary_color,
        actions: [
          IconButton(
            icon: const Stack(
              children: [
                Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
                Positioned(
                  child: Icon(
                    Icons.brightness_1,
                    color: Colors.red,
                    size: 9,
                  ),
                )
              ],
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Withdraw request", style: Style.dashboardBlackText700,),
              Style.distan_size10,
              const Padding(
                padding: EdgeInsets.all(4.0),
                child: Divider(
                  color: Color(0xff959595),
                ),
              ),
              Style.distan_size10,
              Container(
                height: Get.height * .06,
                width: Get.width,
                child: const BankAccount(),
              ),
              Style.distan_size10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Available Balance",
                    style: Style.block_text_style,
                  ),
                  Text(
                    "BDT",
                    style: Style.block_text_style,
                  ),
                ],
              ),
              Style.distan_size10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Service charge",
                    style: Style.robotoRegular,
                  ),
                  Text(
                    "(-) 0.0 BDT",
                    style: Style.robotoRegular,
                  ),
                ],
              ),
              Style.distan_size10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Vat",
                    style: Style.robotoRegular,
                  ),
                  Text(
                    "(-) 0.0 BDT",
                    style: Style.robotoRegular,
                  ),
                ],
              ),
              Style.distan_size10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Withdraw Amount",
                    style: Style.robotoRegular,
                  ),
                  Text(
                    "0.0 BDT",
                    style: Style.block_text_style,
                  ),
                ],
              ),
              Style.distan_size10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Grand total",
                    style: Style.robotoRegular,
                  ),
                  Text(
                    "0.0 BDT",
                    style: Style.block_text_style,
                  ),
                ],
              ),
              Style.distan_size10,
              Container(
                height: Get.height * .06,
                width: Get.width,
                decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Remarks",
                      hintStyle: Style.text_hind_style,
                    ),
                  ),
                ),
              ),
              Style.distan_size10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height: Get.height * .06,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(color: ColorsCode.snackbar_error_color, border: Border.all(color: ColorsCode.snackbar_error_color),
                          borderRadius: const BorderRadius.all(Radius.circular(12))),
                      child: const Center(
                        child: Text("Back", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height: Get.height * .06,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(color: ColorsCode.primary_color, border: Border.all(color: ColorsCode.primary_color),
                          borderRadius: const BorderRadius.all(Radius.circular(12))),
                      child: const Center(
                        child: Text("NEXT", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                ],
              ),
              Style.distan_size5,
            ],
          ),
        ),
      ),
    ),
    // child: Scaffold(
    //   backgroundColor: ColorsCode.page_background_color,
    //   body: Scrollbar(
    //     thumbVisibility: true,
    //     thickness: 10,
    //     child: SingleChildScrollView(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Container(
    //             height: 50,
    //             width: double.infinity,
    //             decoration: const BoxDecoration(
    //                 color: ColorsCode.primary_color, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
    //             ),
    //           ),
    //           const Padding(
    //             padding: EdgeInsets.only(left: 20, top: 10),
    //             child: Text(
    //               'Withdraw request',
    //               style: Style.text_filed_style,
    //             ),
    //           ),
    //           const Padding(
    //             padding: EdgeInsets.all(4.0),
    //             child: Divider(
    //               color: Color(0xff959595),
    //             ),
    //           ),
    //           Style.distan_size10,
    //           Padding(
    //             padding: const EdgeInsets.only(left: 5, right: 8),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //               ],
    //             ),
    //           ),
    //           Style.distan_size10,
    //           Padding(
    //             padding: const EdgeInsets.only(left: 5, right: 25),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text(
    //                   "  BDT",
    //                   style: Style.block_text_style,
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Style.distan_size10,
    //           Padding(
    //             padding: const EdgeInsets.only(left: 5, right: 25),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text(
    //                   "(-)  BDT",
    //                   style: Style.robotoRegular,
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Style.distan_size10,
    //           Padding(
    //             padding: const EdgeInsets.only(left: 5, right: 25),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text(
    //                   "(-) BDT",
    //                   style: Style.robotoRegular,
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Style.distan_size10,
    //           Padding(
    //             padding: const EdgeInsets.only(left: 5, right: 25),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text(
    //                   " BDT",
    //                   style: Style.block_text_style,
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Style.distan_size10,
    //           Padding(
    //             padding: const EdgeInsets.only(left: 5, right: 25),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text(
    //                   " BDT",
    //                   style: Style.block_text_style,
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Style.distan_size10,
    //
    //           Row(
    //             // crossAxisAlignment: CrossAxisAlignment.center,
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Style.widthdistan_size2,
    //               Container(
    //                   padding:
    //                   const EdgeInsets.only(left: 0, right: 20),
    //                   width: Get.size.width * 0.385,
    //                   child: ElevatedButton(
    //                     onPressed: () {
    //                     },
    //                     style: ElevatedButton.styleFrom(
    //                       // ignore: deprecated_member_use
    //                         primary: ColorsCode.snackbar_error_color,
    //                         padding: const EdgeInsets.symmetric(
    //                             horizontal: 16, vertical: 10),
    //                         textStyle: const TextStyle(
    //                             fontSize: 12,
    //                             fontWeight: FontWeight.bold)),
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       children: const [
    //                         Text(
    //                           'Back',
    //                           style: Style.alltext_white_text_style,
    //                         ),
    //                         SizedBox(
    //                           width: 2,
    //                         ),
    //                       ],
    //                     ),
    //                   )),
    //               Container(
    //                   padding: const EdgeInsets.only(
    //                     left: 20,
    //                   ),
    //                   width: Get.size.width * 0.385,
    //                   child: ElevatedButton(
    //                     onPressed: () {
    //
    //                     },
    //                     style: ElevatedButton.styleFrom(
    //                       // ignore: deprecated_member_use
    //                         primary: ColorsCode.primary_color,
    //                         padding: const EdgeInsets.symmetric(
    //                             horizontal: 16, vertical: 10),
    //                         textStyle: const TextStyle(
    //                             fontSize: 12,
    //                             fontWeight: FontWeight.bold)),
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       children: const [
    //                         Text(
    //                           'NEXT',
    //                           style: Style.alltext_white_text_style,
    //                         ),
    //                         Style.widthdistan_size2
    //                       ],
    //                     ),
    //                   )),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // ),
  );
}
