import 'package:ds_pharmace/pages/order_page/sub_page_1.dart';
import 'package:ds_pharmace/pages/order_page/sub_page_2.dart';
import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import '../../utils/colors_code.dart';
import '../../utils/styles.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  final GlobalKey<ScaffoldState> _drawer = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorsCode.primary_color,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: IconButton(onPressed: (){
          _drawer.currentState!.openDrawer();
        }, icon: Icon(Icons.menu, size: 25,)),
        actions: <Widget>[
          IconButton(
            icon: Stack(
              children: const [
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
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorsCode.primary_color, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Order", style: Style.dashboardBlackText700,),
              ),
              Divider(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ButtonsTabBar(
                  backgroundColor: ColorsCode.primary_color,
                  labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      child: Text("Waiting to Confirm/\nAssign to Heroboy", style: TextStyle(color: Colors.black),),
                    ),
                    Tab(
                      child: Text("Complete", style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    SubPage_1(),
                    SubPage_2(),
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
