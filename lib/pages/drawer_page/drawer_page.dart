// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors_code.dart';
import '../../utils/styles.dart';


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
                        height: 320,
                        width: 200,//Get.width*.3,
                        padding: const EdgeInsets.all(20),
                        color: const Color(0xff464645),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0, top: 6, right: 0, bottom: 6),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/logo_icon.png",
                                  height: 200,
                                  width: 30,
                                ),
                                Style.widthdistan_size2,
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Digital Shastho",
                                      //style: Style.drawer_heading_style,
                                    ),
                                    Style.distan_size2,
                                    Text(
                                      "Made In Bangladesh",
                                      //style: Style.alltext_white_text_style,
                                    ),
                                  ],
                                )
                              ],
                            ),
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
                              },
                              child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.isHomeSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.isHomeSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
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
                                            // style: widget.isHomeSelected
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
                              },
                              child: Container(
                                  height: 40,
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
                                        height: 40,
                                        width: 40,
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
                              },
                              child: Container(
                                  height: 40,
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
                                        height: 40,
                                        width: 40,
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
                                        child: Text('CHAMBER LIST',
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
                              },
                              child: Container(
                                  height: 40,
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
                                        height: 40,
                                        width: 40,
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
                                            Icons.schedule,
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
                                        child: Text('SCHEDULE',
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
                              },
                              child: Container(
                                  height: 40,
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
                                        height: 40,
                                        width: 40,
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
                                            Icons.money,
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
                                        child: Text('FEE SETUP',
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
                              },
                              child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.isAppointmentSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.isAppointmentSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.touch_app_outlined,
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
                                        child: Text('APPOINTMENT',
                                            // style: widget.isAppointmentSelected
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
                              },
                              child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.isRefferPatientSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.isRefferPatientSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.group,
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
                                        child: Text('COMPLETE APPOINTMENT',
                                            // style: widget
                                            //     .isRefferPatientSelected
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
                              },
                              child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.isRefferPatientSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.isRefferPatientSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.person_add,
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
                                        child: Text('REFER PATIENT',
                                            // style: widget
                                            //     .isRefferPatientSelected
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
                              },
                              child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.isAssistantSetupSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.isAssistantSetupSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.safety_divider,
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
                                        child: Text('ASSISTANT SETUP',
                                            // style: widget
                                            //     .isAssistantSetupSelected
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
                              },
                              child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.isFamilySelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.isFamilySelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Icon(
                                            Icons.person_pin_circle_outlined,
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
                                        child: Text('FAMILY LIST',
                                            // style: widget.isFamilySelected
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
                              },
                              child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.isWalletSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.isWalletSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            child: Icon(
                                                Icons.wallet_travel_outlined,
                                                size: 30,
                                                color: Colors.white)

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
                                            // style: widget.isWalletSelected
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
                              },
                              child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    // color: widget.isTransactionSelected
                                    //     ? Color(0xffffffff)
                                    //     : Color(0xff464645),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          // color: widget.isTransactionSelected
                                          //     ? Colors.green
                                          //     : Color(0xff464645),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            child: Icon(
                                                Icons.transform_outlined,
                                                size: 30,
                                                color: Colors.white)

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
                                            // style: widget.isTransactionSelected
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
