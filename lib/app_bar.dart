import 'package:doctor_vandor/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/colors_code.dart';
import 'utils/images.dart';

class AppBarWidget {
  static customAppBar() => AppBar(
        centerTitle: true,
        backgroundColor: ColorsCode.primary_color,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Image.asset(
          Images.logo,
          height: Get.size.height * 0.04,
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            icon: Stack(
              children: const [
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
            onPressed: () {
              Get.toNamed(RouteManeger.notification);
            },
          ),

        ],
      );
}
