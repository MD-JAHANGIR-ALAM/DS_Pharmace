import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../drawer_page/drawer_page.dart';
import '../widgets/drop_down_button.dart';



class StaffPage extends StatelessWidget {
  StaffPage({super.key});

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
        }, icon: const Icon(Icons.menu, size: 25,)),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Get.height * .05,
                width: Get.width,
                decoration: const BoxDecoration(
                    color: ColorsCode.primary_color, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Staff Setup", style: Style.dashboardBlackText700,),
                    Style.distan_size5,
                    const Divider(height: 3,),
                    Style.distan_size5,
                    const Text("Staff Name", style: Style.dashboardBlackText400,),
                    Style.distan_size5,
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                      ),
                    ),
                    Style.distan_size5,
                    const Text("Designation", style: Style.dashboardBlackText400,),
                    Style.distan_size5,
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Designation',
                      ),
                    ),
                    Style.distan_size5,
                    const Custom_DDButton(),
                    Style.distan_size5,
                    const Text("Surename", style: Style.dashboardBlackText400,),
                    Style.distan_size5,
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Surename',
                      ),
                    ),
                    Style.distan_size5,
                    const Text("Contact number", style: Style.dashboardBlackText400,),
                    Style.distan_size5,
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Number',
                      ),
                    ),
                    Style.distan_size5,
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: Get.height * .05,
                        width: Get.width,
                        decoration: BoxDecoration(color: ColorsCode.primary_color, border: Border.all(color: ColorsCode.primary_color),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: const Center(
                          child: Text("Upload Staff image", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    Style.distan_size5,
                    const Text("Password", style: Style.dashboardBlackText400,),
                    Style.distan_size5,
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                    Style.distan_size5,
                    const Text("Confirm password", style: Style.dashboardBlackText400,),
                    Style.distan_size5,
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm password',
                      ),
                    ),
                    Style.distan_size5,
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: Get.height * .05,
                        width: Get.width,
                        decoration: BoxDecoration(color: ColorsCode.primary_color, border: Border.all(color: ColorsCode.primary_color),
                            borderRadius: const BorderRadius.all(Radius.circular(12))),
                        child: const Center(
                          child: Text("Submit", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    Style.distan_size10,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
