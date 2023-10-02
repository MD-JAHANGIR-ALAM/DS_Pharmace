import 'package:flutter/material.dart';
import '../../utils/colors_code.dart';
import '../../utils/styles.dart';
import '../drawer_page/drawer_page.dart';


class OrderDetails extends StatelessWidget {
  OrderDetails({super.key});

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
                const Positioned(
                  top: 50,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Complete Order details", style: Style.dashboardBlackText700,),
                          SizedBox(height: 15,),
                          Text("Order ID: #", style: Style.text_hind_style,),
                          SizedBox(height: 10,),
                          Text("Customer Info :-", style: Style.dashboardBlackText700,),
                          SizedBox(height: 5,),
                          Text("Contact", style: Style.text_hind_style,),
                          SizedBox(height: 5,),
                          Text("Delivery Address", style: Style.text_hind_style,),
                          SizedBox(height: 10,),
                          Text("Pharmacy Info :-", style: Style.dashboardBlackText700,),
                          SizedBox(height: 10,),
                          Text("Payment Info :-", style: Style.dashboardBlackText700,),
                          SizedBox(height: 10,),
                          Text("Delivery Info :-", style: Style.dashboardBlackText700,),
                          SizedBox(height: 10,),
                          Text("Order Items :-", style: Style.dashboardBlackText700,),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Name", style: Style.text_hind_style,),
                              SizedBox(width: 80,),
                              Text("Quality", style: Style.text_hind_style,),
                              SizedBox(width: 20,),
                              Text("Unit Price", style: Style.text_hind_style,),
                              SizedBox(width: 20,),
                              Text("Total Price", style: Style.text_hind_style,),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Item Price", style: Style.text_hind_style,),
                              SizedBox(width: 220,),
                              Text("BDT 700", style: Style.text_hind_style,),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Vat", style: Style.text_hind_style,),
                              SizedBox(width: 300,),
                              Text("00", style: Style.text_hind_style,),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Tax", style: Style.text_hind_style,),
                              SizedBox(width: 300,),
                              Text("00", style: Style.text_hind_style,),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total Price", style: Style.text_hind_style,),
                              SizedBox(width: 250,),
                              Text("700", style: Style.text_hind_style,),
                            ],
                          ),
                        ],
                      ),
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
