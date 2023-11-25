import 'package:flutter/material.dart';
import '../../utils/colors_code.dart';
import '../../utils/styles.dart';
import '../widgets/drop_down_button.dart';
import 'package:get/get.dart';

class AddWallet extends StatelessWidget {
  const AddWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsCode.primary_color,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(onPressed: (){}, child: Text("Save", style: TextStyle(color: Colors.white),)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Add Wallet", style: Style.dashboardBlackText700,),
              Style.distan_size10,
              Container(
                height: Get.height * .06,
                width: Get.width,
                child: const BankAccount(),
              ),
              Style.distan_size5,
              Container(
                height: Get.height * .06,
                width: Get.width,
                child: const PaymentMethod(),
              ),
              Style.distan_size5,
              Container(
                height: Get.height * .06,
                width: Get.width,
                child: const Account(),
              ),
              Style.distan_size10,
              const Text("Account no", style: Style.dashboardBlackText400,),
              Style.distan_size5,
              Container(
                height: Get.height * .06,
                width: Get.width,
                decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Account no",
                      hintStyle: Style.text_hind_style,
                    ),
                  ),
                ),
              ),
              Style.distan_size5,
              const Text("Account name", style: Style.dashboardBlackText400,),
              Style.distan_size5,
              Container(
                height: Get.height * .06,
                width: Get.width,
                decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Account name",
                      hintStyle: Style.text_hind_style,
                    ),
                  ),
                ),
              ),
              Style.distan_size5,
              const Text("Branch name", style: Style.dashboardBlackText400,),
              Style.distan_size5,
              Container(
                height: Get.height * .06,
                width: Get.width,
                decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Branch name",
                      hintStyle: Style.text_hind_style,
                    ),
                  ),
                ),
              ),
              Style.distan_size5,
            ],
          ),
        ),
      ),
    );
  }
}
