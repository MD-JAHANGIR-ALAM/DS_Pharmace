import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors_code.dart';
import '../../utils/styles.dart';
import '../home_page/homepage.dart';
import '../widgets/drop_down_button.dart';
import 'package:image_picker/image_picker.dart';

class CreateBranch extends StatefulWidget {
  const CreateBranch({super.key});

  @override
  State<CreateBranch> createState() => _CreateBranchState();
}

class _CreateBranchState extends State<CreateBranch> {

  final _formKey = GlobalKey<FormState>();

  File? image;

  Future _getImage() async {
    final XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 80);

    if(pickedFile == null)return;
    setState(() {
      image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: Text("Branch Create", style: Style.robotoHeader20primaryColor,)),
                  Style.distan_size20,
                  const Text("Branch Name", style: Style.dashboardBlackText400,),
                  Style.distan_size5,
                  Container(
                    height: Get.height * .06,
                    width: Get.width,
                    decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                        borderRadius: const BorderRadius.all(Radius.circular(12))),
                    child: TextFormField(
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
                      validator: (value){
                        if(value!.isEmpty){
                          return "Branch name";
                        }
                        return null;
                      },
                    ),
                  ),
                  Style.distan_size5,
                  const Text("Branch Location", style: Style.dashboardBlackText400,),
                  Style.distan_size5,
                  const DDButton(),
                  Style.distan_size5,
                  const Text("Trade license number", style: Style.dashboardBlackText400,),
                  Style.distan_size5,
                  Container(
                    height: Get.height * .06,
                    width: Get.width,
                    decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                        borderRadius: const BorderRadius.all(Radius.circular(12))),
                    child: TextFormField(
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
                      validator: (value){
                        if(value!.isEmpty){
                          return "Trade license number";
                        }
                        return null;
                      },
                    ),
                  ),
                  Style.distan_size5,
                  GestureDetector(
                    onTap: (){
                      _getImage();
                    },
                    child: Container(
                      height: Get.height * .06,
                      width: Get.width,
                      decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                          borderRadius: const BorderRadius.all(Radius.circular(12))),
                      child: const Center(
                        child: Text("Upload trade license photo"),
                      ),
                    ),
                  ),
                  Style.distan_size5,
                  const Text("Phone number", style: Style.dashboardBlackText400,),
                  Style.distan_size5,
                  Container(
                    height: Get.height * .06,
                    width: Get.width,
                    decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                        borderRadius: const BorderRadius.all(Radius.circular(12))),
                    child: TextFormField(
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
                      validator: (value){
                        if(value!.isEmpty){
                          return "Phone number";
                        }
                        return null;
                      },
                    ),
                  ),
                  Style.distan_size5,
                  GestureDetector(
                    onTap: (){
                      _getImage();
                    },
                    child: Container(
                      height: Get.height * .06,
                      width: Get.width,
                      decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                          borderRadius: const BorderRadius.all(Radius.circular(12))),
                      child: const Center(
                        child: Text("Upload pharmacy image"),
                      ),

                    ),
                  ),
                  Style.distan_size20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        child: Container(
                          height: Get.height * .06,
                          width: Get.width * .440,
                          decoration: BoxDecoration(border: Border.all(color: ColorsCode.primary_color),
                              borderRadius: const BorderRadius.all(Radius.circular(12))),
                          child: const Center(
                            child: Text("BACK"),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          if(_formKey.currentState!.validate()){
                            return;
                          }
                        },
                        child: Container(
                          height: Get.height * .06,
                          width: Get.width * .440,
                          decoration: BoxDecoration(color: ColorsCode.primary_color, border: Border.all(color: ColorsCode.primary_color),
                              borderRadius: const BorderRadius.all(Radius.circular(12))),
                          child: const Center(
                            child: Text("CONFIRM", style: TextStyle(color: Colors.white),),
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
      ),
    );
  }
}
