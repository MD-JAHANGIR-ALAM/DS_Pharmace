import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors_code.dart';
import 'order_details.dart';

class ByHeroboy extends StatelessWidget {
  const ByHeroboy({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index){
            return Card(
              child: Column(
                children: [
                  ListTile(
                    title: const Text("Medicine"),
                    subtitle: const Text("Order on #25648895235"),
                    trailing: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetails()));
                      },
                      child: Container(
                        height: Get.height * .04,
                        width: Get.width * .250,
                        color: ColorsCode.primary_color,
                        child: const Center(child: Text("View Details", style: TextStyle(color: Colors.white),)),
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
