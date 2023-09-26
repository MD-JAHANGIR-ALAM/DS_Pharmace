import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/drawer_controller.dart';
import '../responsive/responsive_helper.dart';
import '../utils/colors_code.dart';
import '../utils/images.dart';
import '../utils/styles.dart';

// ignore: must_be_immutable
class MobileAppBar extends StatelessWidget {
  @override
  MobileAppBar({super.key});

  DrawerCustomsController drawerController = Get.put(DrawerCustomsController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: ColorsCode.drawer_background_colors,
        child: Obx(
          () => Container(
            padding: const EdgeInsets.only(top: 40),
            child: Column(children: <Widget>[
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      'Emergency',
                      style: Style.drawer_heading_style,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  buildSwitch(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    Images.drawe_logo_icon,
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Digital Shastho',
                    style: Style.drawer_heading_style,
                  )
                ],
              ),
              const Divider(
                color: ColorsCode.page_background_color,
                thickness: 1,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: drawerController.menuItems.length,
                      itemBuilder: (_, index) {
                        return InkWell(
                          onTap: () => drawerController.clickFunction(
                              drawerController.menuItems[index], index),
                          child: Padding(
                              padding: const EdgeInsets.only(left: 8, top: 5),
                              child: Container(
                                height: ResponsiveHelper.isLandScriptMode(
                                        context)
                                    ? MediaQuery.of(context).size.height * .080
                                    : MediaQuery.of(context).size.height * .058,
                                decoration: BoxDecoration(
                                  color:
                                      drawerController.isHighlighted[index] ==
                                              true
                                          ? Colors.white
                                          : ColorsCode.drawer_background_colors,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(120),
                                    bottomLeft: Radius.circular(120),
                                  ),
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                        top: 0.67,
                                        left: -102.2,
                                        width: 250,
                                        child: CircleAvatar(
                                            radius: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06,
                                            backgroundColor: drawerController
                                                    .isHighlighted[index]
                                                ? ColorsCode.icon_primary_colors
                                                : ColorsCode
                                                    .drawer_background_colors,
                                            child: drawerController
                                                .drawerIconList[index])),
                                    Positioned(
                                        top: -9,
                                        left: 40,
                                        height: 50,
                                        width: 250,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: ListTile(
                                            title: drawerController
                                                    .isHighlighted[index]
                                                ? Text(
                                                    drawerController
                                                        .menuItems[index]
                                                        .toUpperCase(),
                                                    style: Style
                                                        .drawer_button_selected_style)
                                                : Text(
                                                    drawerController
                                                        .menuItems[index]
                                                        .toUpperCase(),
                                                    style: Style
                                                        .drawer_button_style,
                                                  ),
                                          ),
                                        )),
                                  ],
                                ),
                              )),
                        );
                      })),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Colors.green,
                  width: double.infinity,
                  child: ListTile(
                      leading: const Icon(
                        Icons.logout,
                        color: ColorsCode.drawer_icon_colors,
                        size: 40,
                      ),
                      title: const Text(
                        'Logout',
                        style: Style.drawer_logoutbutton_style,
                      ),
                      onTap: () {
                        drawerController.logout();
                      }),
                ),
              )
            ]),
          ),
        ));
  }

  Widget buildSwitch() => Transform.scale(
        scale: 1.2,
        child: Switch.adaptive(
            activeColor: Colors.green,
            inactiveThumbColor: Colors.red,
            value: true,
            onChanged: (value) {
              // setState(() {
              //   // this.value = value;
              // });
            }),
      );
}
