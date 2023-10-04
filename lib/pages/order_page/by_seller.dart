import 'package:ds_pharmace/pages/order_page/order_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors_code.dart';

class SubPage201 extends StatelessWidget {
  const SubPage201({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 6,
          itemBuilder: (context, index){
            return Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text("Medicine"),
                    subtitle: Text("Order on #25648895235"),
                    trailing: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetails()));
                      },
                      child: Container(
                        height: Get.height * .80,
                        width: Get.width * .250,
                        color: ColorsCode.primary_color,
                        child: Center(child: Text("View Details", style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}
