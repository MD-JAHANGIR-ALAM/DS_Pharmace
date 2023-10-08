import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../drawer_page/drawer_page.dart';


class Profile_Info extends StatefulWidget {
  const Profile_Info({super.key});

  @override
  State<Profile_Info> createState() => _Profile_InfoState();
}

class _Profile_InfoState extends State<Profile_Info> {

  final GlobalKey<ScaffoldState> _drawer = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawer,
      drawer: const Drawer(
        child: MainDrawer(
            isHomeSelected: false,
            isProfileSelected: true,
            isCreateBranchSelected: true,
            isWalletSelected: true,
            isTransactionSelected: true,
            isOrderSelected: true
        ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height * .150,
              width: Get.width,
              decoration: const BoxDecoration(
                  color: ColorsCode.primary_color, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
              ),
              child: const Center(
                child: Icon(
                  Icons.account_circle,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
            Style.distan_size15,
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: Get.height * .05,
                    width: Get.width,
                    decoration: const BoxDecoration(color: ColorsCode.primary_color, borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                const Positioned(
                    child: ExpansionTile(
                      title: Text("Personal Information" , style: TextStyle(color: Colors.white),),
                      children: [
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name : MD. Jahangir Mia"),
                                Divider(
                                  height: 3,
                                ),
                                Text("Phone : 01796-196500"),
                                Divider(
                                  height: 3,
                                ),
                                Text("Email : jahangirad14@gmail.com"),
                                Style.distan_size10,
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                )
              ],
            ),
            Style.distan_size15,
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: Get.height * .05,
                    width: Get.width,
                    decoration: const BoxDecoration(color: ColorsCode.primary_color, borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                const Positioned(
                    child: ExpansionTile(
                      title: Text("Shop Address" , style: TextStyle(color: Colors.white),),
                      children: [
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Shop No : 1"),
                                Divider(
                                  height: 3,
                                ),
                                Text("Name : My Shop"),
                                Divider(
                                  height: 3,
                                ),
                                Text("Address : Sundarganj, Gaibandha"),
                                Style.distan_size10,
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Shop No : 2"),
                                Divider(
                                  height: 3,
                                ),
                                Text("Name : My Shop"),
                                Divider(
                                  height: 3,
                                ),
                                Text("Address : Sundarganj, Gaibandha"),
                                Style.distan_size10,
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Shop No : 3"),
                                Divider(
                                  height: 3,
                                ),
                                Text("Name : My Shop"),
                                Divider(
                                  height: 3,
                                ),
                                Text("Address : Sundarganj, Gaibandha"),
                                Style.distan_size10,
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Shop No : 4"),
                                Divider(
                                  height: 3,
                                ),
                                Text("Name : My Shop"),
                                Divider(
                                  height: 3,
                                ),
                                Text("Address : Sundarganj, Gaibandha"),
                                Style.distan_size10,
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Shop No : 5"),
                                Divider(
                                  height: 3,
                                ),
                                Text("Name : My Shop"),
                                Divider(
                                  height: 3,
                                ),
                                Text("Address : Sundarganj, Gaibandha"),
                                Style.distan_size10,
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
