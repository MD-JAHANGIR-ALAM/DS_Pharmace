import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/drawer_page/drawer_page.dart';
import '../utils/colors_code.dart';
import '../utils/images.dart';
import '../utils/styles.dart';

class TransactionPage extends StatelessWidget {
  TransactionPage({super.key});

  final GlobalKey<ScaffoldState> _drawer = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawer,
      drawer: const Drawer(
        child: MainDrawer(),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorsCode.primary_color,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Image.asset(
          Images.logo,
          scale: 25,
          color: Colors.white,
        ),
        leading: IconButton(onPressed: (){
          _drawer.currentState!.openDrawer();
        }, icon: Icon(Icons.menu, size: 25,)),
        actions: <Widget>[
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
            onPressed: () {
            },
          ),

        ],
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: Get.height * .05,
                width: Get.width,
                decoration: BoxDecoration(
                    color: ColorsCode.primary_color, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Text("Transaction", style: Style.dashboardBlackText700,),
              ),
              Style.distan_size5,
              Divider(
                height: 3,
              ),
              Style.distan_size5,
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: ButtonsTabBar(
                  backgroundColor: ColorsCode.primary_color,
                  labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          child: Center(child: Text("Complete", style: TextStyle(color: Colors.black),))
                      ),
                    ),
                    Tab(
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          child: Center(child: Text("Panding", style: TextStyle(color: Colors.black)))),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: <Widget>[
                    //Input your page
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
