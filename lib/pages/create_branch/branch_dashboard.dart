import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../drawer_page/drawer_page.dart';
import '../medicine_setup/medicine_list.dart';
import '../medicine_setup/medicine_setup.dart';
import '../staff_page/staff_list.dart';
import '../staff_page/staff_page.dart';

class Branch_Dashboard extends StatelessWidget {
  Branch_Dashboard({super.key});

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
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: ColorsCode.primary_color, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Branch Dashboard", style: Style.dashboardBlackText700,),
                    Style.distan_size5,
                    const Divider(height: 3,),
                    Style.distan_size5,
                    const Text("This branch available balance", style: Style.robotoRegular_w500,),
                    Style.distan_size5,
                    Container(
                      height: MediaQuery.of(context).size.height / 4.5,
                      width: double.infinity,
                      decoration: const BoxDecoration( color: ColorsCode.primary_color, borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(Images.taka, scale: 15, color: Colors.white,),
                              const SizedBox(width: 2,),
                              const Text("0.0", style: TextStyle(color: Colors.white, fontSize: 30),)
                            ],
                          ),
                          const Text("Total Blance", style: TextStyle(color: Colors.white, fontSize: 15))
                        ],
                      ),
                    ),
                    Style.distan_size20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>StaffPage()));
                          },
                          child: Card(
                            child: Container(
                              height: Get.height * .06,
                              width: Get.width / 2.3,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12))),
                              child: const Center(
                                child: Text("Staff Setup"),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>StaffList()));
                          },
                          child: Card(
                            child: Container(
                              height: Get.height * .06,
                              width: Get.width / 2.3,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12))),
                              child: const Center(
                                child: Text("Staffs"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicineSetup()));
                          },
                          child: Card(
                            child: Container(
                              height: Get.height * .06,
                              width: Get.width / 2.3,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12))),
                              child: const Center(
                                child: Text("Branch Medicine Setup"),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicineList()));
                          },
                          child: Card(
                            child: Container(
                              height: Get.height * .06,
                              width: Get.width / 2.3,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12))),
                              child: const Center(
                                child: Text("Branch Medicine List"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
