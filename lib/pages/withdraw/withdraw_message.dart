import 'package:flutter/material.dart';
import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';

class WithdrawMessage extends StatelessWidget {
  const WithdrawMessage({super.key});

  @override
  Widget build(context) => WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: Scaffold(
          backgroundColor: ColorsCode.page_background_color,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 100),
                  ),
                ),
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,

                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                Style.distan_size10,
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                  ),
                ),
                Style.distan_size10,
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 30, right: 35),
                  ),
                ),
                Style.distan_size10,
              ],
            ),
          )));
}
