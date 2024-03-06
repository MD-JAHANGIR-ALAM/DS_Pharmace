import 'package:ds_pharmace/pages/login/login_view.dart';
import 'package:ds_pharmace/pages/staff_page/staff_list.dart';
import 'package:ds_pharmace/pages/staff_page/staff_page.dart';
import 'package:ds_pharmace/pages/transaction_page/transaction_page.dart';
import 'package:ds_pharmace/pages/withdraw/withdraw_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/create_branch/branch_list.dart';
import 'pages/create_branch/create_branch.dart';
import 'pages/home_page/homepage.dart';
import 'pages/medicine_setup/medicine_list.dart';
import 'pages/medicine_setup/medicine_setup.dart';
import 'pages/order_page/order_page.dart';
import 'pages/personal_info/personal_information.dart';
import 'pages/wallet_page/add_wallet.dart';
import 'pages/wallet_page/wallet_page.dart';



void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        'HomePage': (context) => const HomePage(),
        'Profile': (context) => const Profile_Info(),
        'CreateBranch': (context) => const CreateBranch(),
        'WalletPage': (context) => WalletPage(),
        'TransactionPage': (context) => TransactionPage(),
        'OrderPage': (context) => const OrderPage(),
        'MedicineSetup': (context) => const MedicineSetup(),
        'MedicineList': (context) => MedicineList(),
        'StaffPage': (context) => StaffPage(),
        'StaffList': (context) => StaffList(),
        'BranchList': (context) => BranchList(),
        'AddWallet': (context) => const AddWallet(),
        'WithdrawPage': (context) => WithdrawPage(),
      },
      title: "DS Pharmacy",
      debugShowCheckedModeBanner: false,
    );
  }
}


