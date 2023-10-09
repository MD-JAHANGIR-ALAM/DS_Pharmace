import 'package:flutter/material.dart';

import '../../utils/colors_code.dart';
import '../../utils/styles.dart';
import '../widgets/drop_down_button.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Add Wallet", style: Style.dashboardBlackText700,),
            Style.distan_size10,
            BankAccount(),
            Style.distan_size5,
            PaymentMethod(),
            Style.distan_size5,
            Account(),
            Style.distan_size10,
            const Text("Account no", style: Style.dashboardBlackText400,),
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
                hintText: "Account no",
                hintStyle: Style.text_hind_style,
              ),
            ),
            Style.distan_size5,
            const Text("Account name", style: Style.dashboardBlackText400,),
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
                hintText: "Account name",
                hintStyle: Style.text_hind_style,
              ),
            ),
            Style.distan_size5,
            const Text("Branch name", style: Style.dashboardBlackText400,),
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
                hintText: "Branch name",
                hintStyle: Style.text_hind_style,
              ),
            ),
            Style.distan_size5,
          ],
        ),
      ),
    );
  }
}
