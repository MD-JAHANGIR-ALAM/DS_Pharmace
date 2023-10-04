import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../drawer_page/drawer_page.dart';


class MedicineSetup extends StatelessWidget {
  MedicineSetup({super.key});

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
                    height: Get.height * .05,
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: ColorsCode.primary_color, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
                    child: Positioned(
                      top: 50,
                      child: SizedBox(
                        child: Column(
                          children: [
                            TextFormField(
                              textInputAction: TextInputAction.go,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: ColorsCode.primary_color),
                                    borderRadius: BorderRadius.all(Radius.circular(12))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: ColorsCode.primary_color),
                                    borderRadius: BorderRadius.all(Radius.circular(12))),
                                hintText: "Search",
                                hintStyle: Style.text_hind_style,
                              ),
                            ),
                            Style.distan_size15,
                            ListView.builder(
                              shrinkWrap: true,
                                itemCount: 6,
                                itemBuilder: (context, index){
                                  return Card(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text("Napa${index}"),
                                          subtitle: Text("Order on #25648895235"),
                                          trailing: GestureDetector(
                                            child: Container(
                                              height: Get.height * .05,
                                              width: Get.width * .250,
                                              color: ColorsCode.primary_color,
                                              child: Center(child: Text("Add to card", style: TextStyle(color: Colors.white),)),
                                            ),
                                          ),
                                          leading: CircleAvatar(
                                            radius: 30,
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }
                            ),
                          ],
                        ),
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
