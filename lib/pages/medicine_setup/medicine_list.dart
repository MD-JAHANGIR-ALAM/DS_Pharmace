import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../drawer_page/drawer_page.dart';

class MedicineList extends StatelessWidget {
  MedicineList({super.key});

  final GlobalKey<ScaffoldState> _drawer = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawer,
      drawer: const Drawer(
        child: MainDrawer(isMedicineListSelected: true,),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Get.height * .05,
            width: Get.width,
            decoration: const BoxDecoration(
                color: ColorsCode.primary_color, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10, right: 15),
            child: Text("Shop Medicine list", style: Style.dashboardBlackText700,),
          ),
          Style.distan_size5,
          const Divider(
            height: 3,
          ),
          Style.distan_size5,
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index){
                    return const Card(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("Napa"),
                            subtitle: Text("Generic : Napa"),
                            // trailing: GestureDetector(
                            //   onTap: (){
                            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetails()));
                            //   },
                            //   child: Container(
                            //     height: Get.height * .04,
                            //     width: Get.width * .250,
                            //     color: ColorsCode.primary_color,
                            //     child: const Center(child: Text("View Details", style: TextStyle(color: Colors.white),)),
                            //   ),
                            // ),
                          )
                        ],
                      ),
                    );
                  }
              ),
            ),
          )
        ],
      ),
    );
  }
}
