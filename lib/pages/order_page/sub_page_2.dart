import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:ds_pharmace/pages/order_page/by_seller.dart';
import 'package:flutter/material.dart';
import '../../utils/colors_code.dart';

class SubPage_2 extends StatelessWidget {
  const SubPage_2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: ColorsCode.primary_color,
                labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    child: Text("By Seller", style: TextStyle(color: Colors.black),),
                  ),
                  Tab(
                    child: Text("By Heroboy", style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    SubPage201(),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
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
