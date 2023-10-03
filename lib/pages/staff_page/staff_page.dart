import 'package:flutter/material.dart';
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
                    decoration: const BoxDecoration(
                        color: ColorsCode.primary_color, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
                    child: Positioned(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Staff Setup", style: Style.dashboardBlackText700,),
                            Divider(height: 3,),
                            SizedBox(height: 5,),
                            Text("Staff Name", style: Style.dashboardBlackText400,),
                            SizedBox(height: 5,),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Name',
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Designation", style: Style.dashboardBlackText400,),
                            SizedBox(height: 5,),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Designation',
                              ),
                            ),
                            SizedBox(height: 5,),
                            Custom_DDButton(),
                            SizedBox(height: 5,),
                            Text("Surename", style: Style.dashboardBlackText400,),
                            SizedBox(height: 5,),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Surename',
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Contact number", style: Style.dashboardBlackText400,),
                            SizedBox(height: 5,),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Number',
                              ),
                            ),
                            SizedBox(height: 5,),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(color: ColorsCode.primary_color, border: Border.all(color: ColorsCode.primary_color),
                                    borderRadius: BorderRadius.all(Radius.circular(12))),
                                child: Center(
                                  child: Text("Upload Staff image", style: TextStyle(color: Colors.white),),
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Password", style: Style.dashboardBlackText400,),
                            SizedBox(height: 5,),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Confirm password", style: Style.dashboardBlackText400,),
                            SizedBox(height: 5,),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Confirm password',
                              ),
                            ),
                            SizedBox(height: 5,),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(color: ColorsCode.primary_color, border: Border.all(color: ColorsCode.primary_color),
                                    borderRadius: BorderRadius.all(Radius.circular(12))),
                                child: Center(
                                  child: Text("Submit", style: TextStyle(color: Colors.white),),
                                ),
                              ),
                            ),
                          ],
                        )
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
