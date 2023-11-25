// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, deprecated_member_use

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';


class MainDrawer extends StatefulWidget {
  const MainDrawer({
    Key? key,
     this.isHomeSelected = false,
     this.isProfileSelected = false,
     this.isCreateBranchSelected = false,
     this.isWalletSelected = false,
    this.isTransactionSelected = false,
    this.isOrderSelected = false,
    this.isMedicineSelected = false,
    this.isMedicineListSelected = false,
    this.isAddStuffSelected = false,
    this.isStuffListSelected = false,
    this.isBranchListSelected = false,
  }) : super(key: key);

   final bool isHomeSelected;
   final bool isProfileSelected;
   final bool isCreateBranchSelected;
  final bool isWalletSelected;
  final bool isTransactionSelected;
  final bool isOrderSelected;
  final bool isMedicineSelected;
  final bool isMedicineListSelected;
  final bool isAddStuffSelected;
  final bool isStuffListSelected;
  final bool isBranchListSelected;

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                            child: Image.asset(Images.logo, scale: 30,)
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
                                Navigator.pushNamed(context, "/");
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    color: widget.isHomeSelected
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
                                          color: widget.isHomeSelected
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
                                            style: widget.isHomeSelected
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
                                Navigator.pushNamed(context, "Profile");
                              },
                              child: Container(
                                  height: Get.height * 0.05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    color: widget.isProfileSelected == true
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
                                          color: widget.isProfileSelected == true
                                              ? Colors.green
                                              : Color(0xff464645),
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
                                            style: widget.isProfileSelected == true
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
                                Navigator.pushNamed(context, "CreateBranch");
                              },
                              child: Container(
                                  height: Get.height * 0.05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    color: widget.isCreateBranchSelected == true
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
                                          color: widget.isCreateBranchSelected == true
                                              ? Colors.green
                                              : Color(0xff464645),
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
                                            style: widget.isCreateBranchSelected == true
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
                                Navigator.pushNamed(context, "WalletPage");
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    color: widget.isWalletSelected == true
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
                                          color: widget.isWalletSelected == true
                                              ? Colors.green
                                              : Color(0xff464645),
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
                                            style: widget.isWalletSelected == true
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
                                Navigator.pushNamed(context, "TransactionPage");
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    color: widget.isTransactionSelected
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
                                          color: widget.isTransactionSelected
                                              ? Colors.green
                                              : Color(0xff464645),
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
                                            style: widget.isTransactionSelected
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
                                Navigator.pushNamed(context, "OrderPage");
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    color: widget.isOrderSelected
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
                                          color: widget.isOrderSelected
                                              ? Colors.green
                                              : Color(0xff464645),
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
                                            style: widget.isOrderSelected
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
                                Navigator.pushNamed(context, "MedicineSetup");
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    color: widget.isMedicineSelected
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
                                          color: widget.isMedicineSelected
                                              ? Colors.green
                                              : Color(0xff464645),
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
                                            style: widget.isMedicineSelected
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
                                Navigator.pushNamed(context, "MedicineList");
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    color: widget.isMedicineListSelected
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
                                          color: widget.isMedicineListSelected
                                              ? Colors.green
                                              : Color(0xff464645),
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
                                            style: widget.isMedicineListSelected
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
                                Navigator.pushNamed(context, "StaffPage");
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    color: widget.isAddStuffSelected
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
                                          color: widget.isAddStuffSelected
                                              ? Colors.green
                                              : Color(0xff464645),
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
                                            style: widget.isAddStuffSelected
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
                                Navigator.pushNamed(context, "StaffList");
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    color: widget.isStuffListSelected
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
                                          color: widget.isStuffListSelected
                                              ? Colors.green
                                              : Color(0xff464645),
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
                                            style: widget.isStuffListSelected
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
                                Navigator.pushNamed(context, "BranchList");
                              },
                              child: Container(
                                  height: Get.height * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    color: widget.isBranchListSelected
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
                                          color: widget.isBranchListSelected
                                              ? Colors.green
                                              : Color(0xff464645),
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
                                            style: widget.isBranchListSelected
                                                ? Style
                                                .drawer_button_selected_style
                                                : Style.drawer_button_style
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
