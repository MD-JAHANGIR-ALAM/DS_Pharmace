import 'package:flutter/material.dart';

import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../drawer_page/drawer_page.dart';

class StaffList extends StatelessWidget {
  StaffList({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ColorsCode.primary_color, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Positioned(
                      top: 50,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                            child: Card(
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 80,
                                          child: CircleAvatar(
                                            radius: 40,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 270,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 100,
                                                      child: Text("Name", style: Style.text_hind_style,),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                      child: Text(":", style: Style.text_hind_style),
                                                    ),
                                                    SizedBox(
                                                      width: 150,
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
                                                      width: 100,
                                                      child: Text("Designation", style: Style.text_hind_style,),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                      child: Text(":", style: Style.text_hind_style),
                                                    ),
                                                    SizedBox(
                                                      width: 150,
                                                      child: Text("I am a Flutter Apps Developer", style: Style.text_hind_style),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 100,
                                                      child: Text("E-mail", style: Style.text_hind_style,),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                      child: Text(":", style: Style.text_hind_style),
                                                    ),
                                                    SizedBox(
                                                      width: 150,
                                                      child: Text("jahangirad14@gmail.com", style: Style.text_hind_style),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 100,
                                                      child: Text("Contact Number", style: Style.text_hind_style,),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                      child: Text(":", style: Style.text_hind_style),
                                                    ),
                                                    SizedBox(
                                                      width: 150,
                                                      child: Text("01796196500", style: Style.text_hind_style),
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
                                      child: Container(
                                        height: 30,
                                        width: 80,
                                        decoration: BoxDecoration(color: ColorsCode.primary_color, borderRadius: BorderRadius.all(Radius.circular(12))),
                                        child: Center(
                                          child: Text("Edit", style: TextStyle(color: Colors.white),),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,)
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
