import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
            isProfileSelected: true,
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
                color: ColorsCode.primary_color,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    const Icon(
                      Icons.account_circle,
                      size: 80,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Jahangir",
                          style: TextStyle(
                              color: Colors.white, fontSize: 20, fontFamily: "Roboto"),
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 20.0,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 5,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Style.widthdistan_size5,
                            const Text(
                              "(0 review)",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10, fontFamily: "Roboto"),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
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
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name : MD. Jahangir Mia", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                              Divider(
                                height: 3,
                              ),
                              Text("Phone : 01796-196500", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                              Divider(
                                height: 3,
                              ),
                              Text("Email : jahangirad14@gmail.com", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                              Divider(
                                height: 3,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                )
              ],
            ),
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
                                Text("Shop No : 1", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                                Divider(
                                  height: 3,
                                ),
                                Text("Name : My Shop", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                                Divider(
                                  height: 3,
                                ),
                                Text("Address : Sundarganj, Gaibandha", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                                Divider(
                                  height: 3,
                                ),
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
                                Text("Shop No : 2", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                                Divider(
                                  height: 3,
                                ),
                                Text("Name : My Shop", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                                Divider(
                                  height: 3,
                                ),
                                Text("Address : Sundarganj, Gaibandha", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
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
                                Text("Shop No : 3", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                                Divider(
                                  height: 3,
                                ),
                                Text("Name : My Shop", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                                Divider(
                                  height: 3,
                                ),
                                Text("Address : Sundarganj, Gaibandha", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
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
                                Text("Shop No : 4", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                                Divider(
                                  height: 3,
                                ),
                                Text("Name : My Shop", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                                Divider(
                                  height: 3,
                                ),
                                Text("Address : Sundarganj, Gaibandha", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
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
                                Text("Shop No : 5", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                                Divider(
                                  height: 3,
                                ),
                                Text("Name : My Shop", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
                                Divider(
                                  height: 3,
                                ),
                                Text("Address : Sundarganj, Gaibandha", style: TextStyle(fontSize: 16, fontFamily: "Roboto"),),
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
