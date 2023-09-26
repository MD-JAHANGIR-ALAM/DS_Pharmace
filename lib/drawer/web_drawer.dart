import 'package:flutter/material.dart';

class WebDrawer extends StatefulWidget {
  const WebDrawer({required Key key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _WebDrawerState createState() => _WebDrawerState();
}

class _WebDrawerState extends State<WebDrawer> {
  bool value = false;
  // LoginController logoutfunction;
  // _MainDrawerState() : super(LoginController()) {
  //   logoutfunction = controller as LoginController;
  // }

  void internaterror(String massge, BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(massge),
        action: SnackBarAction(
            label: 'Close', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  cerculerShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return const Drawer(
        // child: SingleChildScrollView(
        //   child: SafeArea(
        //     child: Container(
        //       color: Color(0xff464645),
        //       child: Column(
        //         children: [
        //           Container(
        //             width: double.infinity,
        //             padding: EdgeInsets.all(20),
        //             color: Color(0xff464645),
        //             child: Container(
        //               height: MediaQuery.of(context).size.height * 0.21,
        //               width: MediaQuery.of(context).size.width * 0.09,
        //               margin: EdgeInsets.only(top: 20, bottom: 10),
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.start,
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Row(
        //                     children: [
        //                       Padding(
        //                         padding: const EdgeInsets.only(left: 25),
        //                         child: Text(
        //                           'Emergency',
        //                           style: TextStyle(
        //                             fontWeight: FontWeight.bold,
        //                             fontFamily: 'Poppins',
        //                             fontSize: 20,
        //                             color: Color(0xFFFFFFFF),
        //                           ),
        //                         ),
        //                       ),
        //                       SizedBox(
        //                         width: 20,
        //                       ),
        //                       buildSwitch(),
        //                     ],
        //                   ),
        //                   SizedBox(
        //                     height: 40,
        //                   ),
        //                   Row(
        //                     children: [
        //                       Image.asset(
        //                         'assets/images/icon.png',
        //                         height: 30,
        //                         width: 50,
        //                       ),
        //                       SizedBox(
        //                         width: 20,
        //                       ),
        //                       Text(
        //                         'Digital Shastho',
        //                         style: TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           fontFamily: 'Poppins',
        //                           fontSize: 20,
        //                           //  color: Color(0xFFF58386),
        //                           color: Color(0xFFFFFFFF),
        //                         ),
        //                       )
        //                     ],
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.all(4.0),
        //                     child: Divider(
        //                       color: Color(0xFFB8B8B8),
        //                       thickness: 1,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),

        //           ListTile(
        //               leading: Icon(
        //                 Icons.home,
        //                 color: Colors.white,
        //               ),
        //               title: Text(
        //                 'Home',
        //                 style: GoogleFonts.poppins(
        //                   color: Colors.white,
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w600,
        //                 ),
        //               ),
        //               onTap: () {
        //                 // Navigator.of(context)
        //                 //     .popAndPushNamed(RouteManeger.home_page);
        //               }),
        //           ListTile(
        //               leading: Icon(
        //                 Icons.person,
        //                 color: Colors.white,
        //               ),
        //               title: Text(
        //                 'Profile',
        //                 style: GoogleFonts.poppins(
        //                   color: Colors.white,
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w600,
        //                 ),
        //               ),
        //               onTap: () {
        //                 // Navigator.of(context)
        //                 //     .popAndPushNamed(RouteManeger.profile_page);
        //               }),
        //           ListTile(
        //               leading: Icon(
        //                 Icons.add_box_sharp,
        //                 color: Colors.white,
        //               ),
        //               title: Text(
        //                 'Chamber Setup',
        //                 style: GoogleFonts.poppins(
        //                   color: Colors.white,
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w600,
        //                 ),
        //               ),
        //               onTap: () {
        //                 // Navigator.push(
        //                 //     context,
        //                 //     MaterialPageRoute(
        //                 //         builder: (context) => ChamberSetup_page()));
        //               }),
        //           ListTile(
        //               leading: Icon(
        //                 Icons.schedule,
        //                 color: Colors.white,
        //               ),
        //               title: Text(
        //                 'Schedule',
        //                 style: GoogleFonts.poppins(
        //                   color: Colors.white,
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w600,
        //                 ),
        //               ),
        //               onTap: () {
        //                 // Navigator.of(context)
        //                 //     .popAndPushNamed(RouteManeger.shecduleshow_page);
        //               }),
        //           ListTile(
        //               leading: Icon(
        //                 Icons.money,
        //                 color: Colors.white,
        //               ),
        //               title: Text(
        //                 'Fees Setup',
        //                 style: GoogleFonts.poppins(
        //                   color: Colors.white,
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w600,
        //                 ),
        //               ),
        //               onTap: () {
        //                 // Navigator.push(
        //                 //     context,
        //                 //     MaterialPageRoute(
        //                 //         builder: (context) => FeeSetup_page()));
        //               }),
        //           ListTile(
        //               leading: Icon(
        //                 Icons.touch_app_outlined,
        //                 color: Colors.white,
        //               ),
        //               title: Text(
        //                 'Appointment',
        //                 style: GoogleFonts.poppins(
        //                   color: Colors.white,
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w600,
        //                 ),
        //               ),
        //               onTap: () {
        //                 // Navigator.push(
        //                 //     context,
        //                 //     MaterialPageRoute(
        //                 //         builder: (context) => AppoinmentList_page()));
        //               }),
        //           ListTile(
        //               leading: Icon(
        //                 Icons.person_add,
        //                 color: Colors.white,
        //               ),
        //               title: Text(
        //                 'Staff Setup',
        //                 style: GoogleFonts.poppins(
        //                   color: Colors.white,
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w600,
        //                 ),
        //               ),
        //               onTap: () {
        //                 // Navigator.of(context)
        //                 //     .popAndPushNamed(RouteManeger.staff_page);
        //               }),
        //           ListTile(
        //               leading: Icon(Icons.person_pin_circle_outlined,
        //                   color: Colors.white),
        //               title: Text(
        //                 'FamilyList',
        //                 style: GoogleFonts.poppins(
        //                   color: Colors.white,
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w600,
        //                 ),
        //               ),
        //               onTap: () {
        //                 // Navigator.of(context)
        //                 //     .popAndPushNamed(RouteManeger.familylistadd_page);
        //               }),
        //           ListTile(
        //               leading: Icon(
        //                 Icons.search,
        //                 color: Colors.white,
        //               ),
        //               title: Text(
        //                 'Family search',
        //                 style: GoogleFonts.poppins(
        //                   color: Colors.white,
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w600,
        //                 ),
        //               ),
        //               onTap: () {
        //                 // Navigator.of(context)
        //                 //     .popAndPushNamed(RouteManeger.familysearch_page);
        //               }),
        //           ListTile(
        //               leading: Icon(
        //                 Icons.wallet_membership,
        //                 color: Colors.white,
        //               ),
        //               title: Text(
        //                 'Wallet Setup',
        //                 style: GoogleFonts.poppins(
        //                   color: Colors.white,
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w600,
        //                 ),
        //               ),
        //               onTap: () {
        //                 // Navigator.push(
        //                 //     context,
        //                 //     MaterialPageRoute(
        //                 //         builder: (context) => Wallet_page()));
        //               }),
        //           ListTile(
        //               leading: Icon(
        //                 Icons.transfer_within_a_station,
        //                 color: Colors.white,
        //               ),
        //               title: Text(
        //                 'Transection',
        //                 style: GoogleFonts.poppins(
        //                   color: Colors.white,
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w600,
        //                 ),
        //               ),
        //               onTap: () {
        //                 // Navigator.of(context)
        //                 //     .popAndPushNamed(RouteManeger.trangeciton_page);
        //               }),
        //           ListTile(
        //             leading: Icon(
        //               Icons.folder_special,
        //               color: Colors.white,
        //             ),
        //             title: Text(
        //               'Specialist',
        //               style: GoogleFonts.poppins(
        //                 color: Colors.white,
        //                 fontSize: 12,
        //                 fontWeight: FontWeight.w600,
        //               ),
        //             ),
        //             // onTap: () {
        //             //   Navigator.of(context)
        //             //       .popAndPushNamed(RouteManeger.addspecialist_page);
        //             // }
        //           ),

        //           // ListTile(
        //           //     leading: Icon(
        //           //       Icons.pages,
        //           //       color: Colors.white,
        //           //     ),
        //           //     title: Text(
        //           //       'Prescription',
        //           //       style: GoogleFonts.poppins(
        //           //         color: Colors.white,
        //           //         fontSize: 12,
        //           //         fontWeight: FontWeight.w600,
        //           //       ),
        //           //     ),
        //           //     onTap: () {
        //           //       Navigator.push(
        //           //           context,
        //           //           MaterialPageRoute(
        //           //               builder: (context) => Prescription_page("")));
        //           //     }),
        //           // ListTile(
        //           //     leading: Icon(Icons.room_preferences, color: Colors.white),
        //           //     title: Text(
        //           //       'Refer Patient',
        //           //       style: GoogleFonts.poppins(
        //           //         color: Colors.white,
        //           //         fontSize: 12,
        //           //         fontWeight: FontWeight.w600,
        //           //       ),
        //           //     ),
        //           //     onTap: () {
        //           //       Navigator.push(
        //           //           context,
        //           //           MaterialPageRoute(
        //           //               builder: (context) => ReferPatient_page()));
        //           //     }),
        //           // ListTile(
        //           //     leading: Icon(
        //           //       Icons.report,
        //           //       color: Colors.white,
        //           //     ),
        //           //     title: Text(
        //           //       'Report',
        //           //       style: GoogleFonts.poppins(
        //           //         color: Colors.white,
        //           //         fontSize: 12,
        //           //         fontWeight: FontWeight.w600,
        //           //       ),
        //           //     ),
        //           //     onTap: () {
        //           //       Navigator.push(
        //           //           context,
        //           //           MaterialPageRoute(
        //           //               builder: (context) => Reportlist_page()));
        //           //     }),
        //           // ListTile(
        //           //     leading: Icon(
        //           //       Icons.report,
        //           //       color: Colors.white,
        //           //     ),
        //           //     title: Text(
        //           //       'History',
        //           //       style: GoogleFonts.poppins(
        //           //         color: Colors.white,
        //           //         fontSize: 12,
        //           //         fontWeight: FontWeight.w600,
        //           //       ),
        //           //     ),
        //           //     onTap: () {
        //           //       Navigator.push(
        //           //           context,
        //           //           MaterialPageRoute(
        //           //               builder: (context) => HistoryPage()));
        //           //     }),
        //           Align(
        //             alignment: Alignment.bottomCenter,
        //             child: Container(
        //               color: Colors.green,
        //               width: double.infinity,
        //               child: ListTile(
        //                 leading: Icon(
        //                   Icons.logout,
        //                   color: Colors.white,
        //                 ),
        //                 title: Text(
        //                   'Logout',
        //                   style: GoogleFonts.poppins(
        //                     color: Colors.white,
        //                     fontSize: 12,
        //                     fontWeight: FontWeight.w600,
        //                   ),
        //                 ),
        //                 // onTap: () {
        //                 //   logoutfunction.logout(context);
        //                 // }),
        //               ),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // ),

        );
  }

  Widget buildSwitch() => Transform.scale(
        scale: 1.2,
        child: Switch.adaptive(
            activeColor: Colors.green,
            inactiveThumbColor: Colors.red,
            value: value,
            onChanged: (value) {
              setState(() {
                this.value = value;
              });
            }),
      );
}
