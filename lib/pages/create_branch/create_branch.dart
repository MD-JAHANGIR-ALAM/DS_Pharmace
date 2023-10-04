import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors_code.dart';
import '../../utils/styles.dart';
import '../widgets/drop_down_button.dart';

class CreateBranch extends StatelessWidget {
  CreateBranch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text("Branch Create", style: Style.robotoHeader20primaryColor,)),
                Style.distan_size20,
                Text("Branch Name", style: Style.dashboardBlackText400,),
                Style.distan_size5,
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsCode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsCode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    hintText: "Branch Name",
                    hintStyle: Style.text_hind_style,
                  ),
                ),
                Style.distan_size5,
                Text("Branch Location", style: Style.dashboardBlackText400,),
                Style.distan_size5,
                DDButton(),
                Style.distan_size5,
                Text("Trade license number", style: Style.dashboardBlackText400,),
                Style.distan_size5,
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsCode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsCode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    hintText: "Trade license number",
                    hintStyle: Style.text_hind_style,
                  ),
                ),
                Style.distan_size5,
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: Get.height * .06,
                    width: Get.width,
                    decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Center(
                      child: Text("Upload trade license photo"),
                    ),
                  ),
                ),
                Style.distan_size5,
                Text("Phone number", style: Style.dashboardBlackText400,),
                Style.distan_size5,
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsCode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsCode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    hintText: "Phone number",
                    hintStyle: Style.text_hind_style,
                  ),
                ),
                Style.distan_size5,
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: Get.height * .06,
                    width: Get.width,
                    decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Center(
                      child: Text("Upload pharmacy image"),
                    ),
                  ),
                ),
                Style.distan_size20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: Get.height * .06,
                        width: Get.width * .440,
                        decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Center(
                          child: Text("BACK"),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: Get.height * .06,
                        width: Get.width * .440,
                        decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Center(
                          child: Text("CONFIRM"),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
