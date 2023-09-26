import 'package:flutter/material.dart';
import '../utils/colors_code.dart';
import '../utils/images.dart';

class MobileAppBarWeiget extends StatelessWidget {
  const MobileAppBarWeiget({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: ColorsCode.primary_color,
      bottomOpacity: 0.0,
      elevation: 0.0,
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
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            child: Image.asset(
              Images.logo_icon,
              height: 80,
              width: 80,
            ),
          ),
        ),
      ],
    );
  }
}
