import 'package:flutter/material.dart';

import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../drawer_page/drawer_page.dart';
import 'branch_dashboard.dart';

class BranchList extends StatelessWidget {
  BranchList({super.key});

  final GlobalKey<ScaffoldState> _drawer = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawer,
      drawer: const Drawer(
        child: MainDrawer(isBranchListSelected: true),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: const Text("Branch List", style: Style.dashboardBlackText700,),
                  ),
                  Style.distan_size10,
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10,),
                        child: Card(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 270,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 70,
                                                  child: Text("Name", style: Style.text_hind_style,),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                  child: Text(":", style: Style.text_hind_style),
                                                ),
                                                SizedBox(
                                                  width: 180,
                                                  child: Text("Jahangir", style: Style.text_hind_style),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 70,
                                                  child: Text("Address", style: Style.text_hind_style,),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                  child: Text(":", style: Style.text_hind_style),
                                                ),
                                                SizedBox(
                                                  width: 180,
                                                  child: Text("Sundarganj, Gaibandha", style: Style.text_hind_style),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Branch_Dashboard()));
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 120,
                                      decoration: const BoxDecoration(color: ColorsCode.primary_color, borderRadius: BorderRadius.all(Radius.circular(12))),
                                      child: const Center(
                                        child: Text("View Details", style: TextStyle(color: Colors.white, fontFamily: "Roboto", fontWeight: FontWeight.bold),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,)
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
