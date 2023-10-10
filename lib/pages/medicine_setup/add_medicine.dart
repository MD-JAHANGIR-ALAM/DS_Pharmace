import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors_code.dart';
import '../../utils/styles.dart';
import '../widgets/custom_text.dart';

class AddMedicine extends StatelessWidget {
  const AddMedicine({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: Get.height * .250,
        width: Get.width,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(500))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Text("Add Medicine", style: Style.dashboardBlackText700,),
              Style.distan_size10,
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText("Buying prize"),
                    Style.widthdistan_size5,
                    CustomText("Selling prize"),
                    Style.widthdistan_size5,
                    CustomText("Quantily"),
                  ],
                ),
              ),
              Style.distan_size10,
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: ColorsCode.text_border_color)
                          ),
                        hintText: "0"
                      ),
                    ),
                  ),
                  Style.widthdistan_size5,
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: ColorsCode.text_border_color)
                          ),
                          hintText: "0"
                      ),
                    ),
                  ),
                  Style.widthdistan_size5,
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: ColorsCode.text_border_color)
                          ),
                          hintText: "0"
                      ),
                    ),
                  ),
                ],
              ),
              Style.distan_size10,
              Padding(
                padding: const EdgeInsets.only(left: 140),
                child: Row(
                  children: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Cancel", style: TextStyle(color: Colors.black12),)),
                    Style.widthdistan_size10,
                    TextButton(onPressed: (){

                    }, child: Text("Confirm", style: TextStyle(color: ColorsCode.primary_color),))
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
