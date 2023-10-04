// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, deprecated_member_use

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../transaction_page/transaction_page.dart';
import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../create_branch.dart';
import '../homepage.dart';
import '../medicine_setup/medicine_setup.dart';
import '../order_page/order_page.dart';
import '../personal_information.dart';
import '../staff_page/staff_list.dart';
import '../staff_page/staff_page.dart';
import '../wallet_page/wallet_page.dart';


class MainDrawer extends StatefulWidget {
  const MainDrawer({
    Key? key,
    // this.isHomeSelected = true,
    // this.isProfileSelected = false,
    // this.ischamberListSelected = false,
    // this.isScheduleSelected = false,
    // this.isFeeSetupSelected = false,
    // this.isAppointmentSelected = false,
    // this.isRefferPatientSelected = false,
    // this.isAssistantSetupSelected = false,
    // this.isFamilySelected = false,
    // this.isWalletSelected = false,
    // this.isTransactionSelected = false,
  }) : super(key: key);

  // final bool isHomeSelected;
  // final bool isProfileSelected;
  // final bool ischamberListSelected;
  // final bool isScheduleSelected;
  // final bool isAppointmentSelected;
  // final bool isWalletSelected;
  // final bool isTransactionSelected;
  // final bool isFeeSetupSelected;
  // final bool isFamilySelected;
  // final bool isRefferPatientSelected;
  // final bool isAssistantSetupSelected;

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {

  bool home = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //width: MediaQuery.of(context).size.width,//Get.size.width * 0.60,
      child: Column(
        children: [
          Expanded(
            child: SafeArea(
              child: Container(
                color: const Color(0xff464645),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: Get.height * .150,
                        width: Get.width,
                        padding: const EdgeInsets.all(20),
                        color: const Color(0xff464645),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0, top: 6, right: 0, bottom: 6),
                            child: Image.asset(Images.logo)
                          ),
                        ),
                      ),
                      const Divider(
                        color: ColorsCode.page_background_color,
                        thickness: 1,
                      ),
                      Container(
                        //width: double.infinity,
                        //height: 80,
                          padding: EdgeInsets.only(left: 10),
                          color: Color(0xff464645),
                          child: Column(children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    color: home == true
                                        ? Color(0xffffffff)
                                        : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: Get.height * 0.05,
                                        width: Get.width * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          color: home == true
                                              ? Colors.green
                                              : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            child: Icon(Icons.home_outlined,
                                                size: 30, color: Colors.white)

                                          // Image.asset(
                                          //   "assets/icons/home.png",
                                          //   width: 10,
                                          //   height: 10,
                                          // ), // no matter how big it is, it won't overflow
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 14),
                                        child: Text('HOME',
                                            style: home == true
                                                ? Style
                                                .drawer_button_selected_style
                                                : Style.drawer_button_style
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile_Info()));
                              },
                              child: Container(
                                  height: Get.height * 0.05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.isProfileSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: Get.height * 0.05,
                                        width: Get.width * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.isProfileSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            child: Icon(Icons.person_outlined,
                                                size: 30, color: Colors.white)

                                          // Image.asset(
                                          //   "assets/icons/home.png",
                                          //   width: 10,
                                          //   height: 10,
                                          // ), // no matter how big it is, it won't overflow
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 14),
                                        child: Text('PROFILE',
                                            // style: widget.isProfileSelected
                                            //     ? Style
                                            //     .drawer_button_selected_style
                                            //     : Style.drawer_button_style
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateBranch()));
                              },
                              child: Container(
                                  height: Get.height * 0.05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.ischamberListSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: Get.height * 0.05,
                                        width: Get.width * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.ischamberListSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.add_box_sharp,
                                            color: Colors.white,
                                            size: 30,
                                          ),

                                          // Image.asset(
                                          //   "assets/icons/home.png",
                                          //   width: 10,
                                          //   height: 10,
                                          // ), // no matter how big it is, it won't overflow
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 14),
                                        child: Text('CREATE BRANCH',
                                            // style: widget.ischamberListSelected
                                            //     ? Style
                                            //     .drawer_button_selected_style
                                            //     : Style.drawer_button_style
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>WalletPage()));
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.ischamberListSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: Get.height * 0.05,
                                        width: Get.width * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.ischamberListSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.wallet,
                                            color: Colors.white,
                                            size: 30,
                                          ),

                                          // Image.asset(
                                          //   "assets/icons/home.png",
                                          //   width: 10,
                                          //   height: 10,
                                          // ), // no matter how big it is, it won't overflow
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 14),
                                        child: Text('WALLET',
                                            // style: widget.ischamberListSelected
                                            //     ? Style
                                            //     .drawer_button_selected_style
                                            //     : Style.drawer_button_style
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TransactionPage()));
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.ischamberListSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: Get.height * 0.05,
                                        width: Get.width * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.ischamberListSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.crop,
                                            color: Colors.white,
                                            size: 30,
                                          ),

                                          // Image.asset(
                                          //   "assets/icons/home.png",
                                          //   width: 10,
                                          //   height: 10,
                                          // ), // no matter how big it is, it won't overflow
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 14),
                                        child: Text('TRANSACTION',
                                            // style: widget.ischamberListSelected
                                            //     ? Style
                                            //     .drawer_button_selected_style
                                            //     : Style.drawer_button_style
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.ischamberListSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: Get.height * 0.05,
                                        width: Get.width * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.ischamberListSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.local_grocery_store_outlined,
                                            color: Colors.white,
                                            size: 30,
                                          ),

                                          // Image.asset(
                                          //   "assets/icons/home.png",
                                          //   width: 10,
                                          //   height: 10,
                                          // ), // no matter how big it is, it won't overflow
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 14),
                                        child: Text('ORDER',
                                            // style: widget.ischamberListSelected
                                            //     ? Style
                                            //     .drawer_button_selected_style
                                            //     : Style.drawer_button_style
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicineSetup()));
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.ischamberListSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: Get.height * 0.05,
                                        width: Get.width * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.ischamberListSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.add_box_sharp,
                                            color: Colors.white,
                                            size: 30,
                                          ),

                                          // Image.asset(
                                          //   "assets/icons/home.png",
                                          //   width: 10,
                                          //   height: 10,
                                          // ), // no matter how big it is, it won't overflow
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 14),
                                        child: Text('MEDICINE SETUP',
                                            // style: widget.ischamberListSelected
                                            //     ? Style
                                            //     .drawer_button_selected_style
                                            //     : Style.drawer_button_style
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateBranch()));
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.ischamberListSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: Get.height * 0.05,
                                        width: Get.width * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.ischamberListSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.list_outlined,
                                            color: Colors.white,
                                            size: 30,
                                          ),

                                          // Image.asset(
                                          //   "assets/icons/home.png",
                                          //   width: 10,
                                          //   height: 10,
                                          // ), // no matter how big it is, it won't overflow
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 14),
                                        child: Text('MEDICINE LIST',
                                            // style: widget.ischamberListSelected
                                            //     ? Style
                                            //     .drawer_button_selected_style
                                            //     : Style.drawer_button_style
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>StaffPage()));
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.isScheduleSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: Get.height * 0.05,
                                        width: Get.width * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.isScheduleSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.add_box_sharp,
                                            color: Colors.white,
                                            size: 30,
                                          ),

                                          // Image.asset(
                                          //   "assets/icons/home.png",
                                          //   width: 10,
                                          //   height: 10,
                                          // ), // no matter how big it is, it won't overflow
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 14),
                                        child: Text('ADD STUFF',
                                            // style: widget.isScheduleSelected
                                            //     ? Style
                                            //     .drawer_button_selected_style
                                            //     : Style.drawer_button_style
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>StaffList()));
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.isFeeSetupSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: Get.height * 0.05,
                                        width: Get.width * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.isFeeSetupSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.list_outlined,
                                            color: Colors.white,
                                            size: 30,
                                          ),

                                          // Image.asset(
                                          //   "assets/icons/home.png",
                                          //   width: 10,
                                          //   height: 10,
                                          // ), // no matter how big it is, it won't overflow
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 14),
                                        child: Text('STUFF LIST',
                                            // style: widget.isFeeSetupSelected
                                            //     ? Style
                                            //     .drawer_button_selected_style
                                            //     : Style.drawer_button_style
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>StaffList()));
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.isFeeSetupSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: Get.height * 0.05,
                                        width: Get.width * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.isFeeSetupSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.list_outlined,
                                            color: Colors.white,
                                            size: 30,
                                          ),

                                          // Image.asset(
                                          //   "assets/icons/home.png",
                                          //   width: 10,
                                          //   height: 10,
                                          // ), // no matter how big it is, it won't overflow
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 14),
                                        child: Text('BRANCH LIST',
                                            // style: widget.isFeeSetupSelected
                                            //     ? Style
                                            //     .drawer_button_selected_style
                                            //     : Style.drawer_button_style
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ])),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.green,
              width: double.infinity,
              child: ListTile(
                  leading: const Icon(
                    Icons.logout,
                    color: ColorsCode.drawer_icon_colors,
                    size: 25,
                  ),
                  title: const Text(
                    'LOGOUT',
                    style: Style.drawer_logoutbutton_style,
                  ),
                  onTap: () {
                    // Get.toNamed(RouteManeger.mobileSignIn);
                    //buildLogOutDialog();
                  }),
            ),
          )
        ],
      ),
    );
  }

  Future<dynamic> buildLogOutDialog() {
    Get.back();
    return Get.defaultDialog(
        title: 'Do you want to logout ?',
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    fixedSize: const Size(120, 25),
                    primary: const Color(0xff128041),
                  ),
                  onPressed: () {
                  },
                  child: Text(
                    'Yes',
                    style: const TextStyle(
                        color: Color(0xffffffff),
                        fontFamily: 'Poppins',
                        fontSize: 9,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    fixedSize: const Size(120, 25),
                    primary: const Color(0xe6f61b1b),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    'No',
                    style: const TextStyle(
                        color: Color(0xffffffff),
                        fontFamily: 'Poppins',
                        fontSize: 9,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          ],
        ),
        radius: 10.0);
  }
}
