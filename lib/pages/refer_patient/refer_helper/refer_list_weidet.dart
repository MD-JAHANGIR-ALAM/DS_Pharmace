// ignore_for_file: deprecated_member_use, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colors_code.dart';
import '../../../utils/styles.dart';

class ReferDoctorListWeiget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, right: 6, left: 6, bottom: 2),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: ColorsCode.page_background_color, //E9F2F2
            borderRadius: BorderRadius.circular(2),
            boxShadow: const [
              BoxShadow(
                color: ColorsCode.drawer_background_colors,
                blurRadius: 6,
                offset: Offset(0, 2),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2, left: 10, right: 8),
                child: Row(
                  children: [
                    const SizedBox(

                      width: 100,
                      child: Text('Patient Name',
                          style: Style.alltext_block_text_style),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2, left: 10, right: 8),
                child: Row(
                  children: [
                    const SizedBox(

                      width: 100,
                      child: Text('Patient Id',
                          style: Style.alltext_block_text_style),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 8, top: 2),
                child: Row(
                  children: [
                    const SizedBox(

                      width: 100,
                      child: Text('Refer By',
                          style: Style.alltext_block_text_style),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 8, top: 2),
                child: Row(
                  children: [
                    const SizedBox(

                      width: 100,
                      child: Text('Refer To',
                          style: Style.alltext_block_text_style),
                    ),

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

// // ignore: must_be_immutable
// class ChmberWeiget extends StatefulWidget {
//   var chambermodel;
//   ChmberWeiget({Key key, this.chambermodel}) : super(key: key);
//   @override
//   _ChmberWeigetState createState() => _ChmberWeigetState(this.chambermodel);
// }

// class _ChmberWeigetState extends StateMVC<ChmberWeiget> {
//   var chambermodel;
//   FunctionController chmmberController = FunctionController();
//   _ChmberWeigetState(this.chambermodel) : super(FunctionController());
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Padding(
//         padding:
//             const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
//         child: Stack(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height * 0.15,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   color: Color(0xffffffff), //E9F2F2
//                   borderRadius: BorderRadius.circular(2),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 6,
//                       offset: Offset(0, 2),
//                     )
//                   ]),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding:
//                             const EdgeInsets.only(top: 10, left: 16, right: 8),
//                         child: Row(
//                           children: [
//                             Text(
//                               'Chamber Name: ',
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 12,
//                                   fontFamily: 'Poppins'),
//                             ),
//                             Text(
//                               "${chambermodel['chamber_name'].toString()}",
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 12,
//                                   fontFamily: 'Poppins'),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding:
//                             const EdgeInsets.only(left: 16, right: 8, top: 5),
//                         child: Row(
//                           children: [
//                             Text(
//                               'Address: ',
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 12,
//                                   fontFamily: 'Poppins'),
//                             ),
//                             Text(
//                               "${chambermodel['address'].toString()}",
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 12,
//                                   fontFamily: 'Poppins'),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding:
//                             const EdgeInsets.only(left: 16, right: 8, top: 5),
//                         child: Row(
//                           children: [
//                             Text(
//                               'Description: ',
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 12,
//                                   fontFamily: 'Poppins'),
//                             ),
//                             Text(
//                               "${chambermodel['description'].toString()}",
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 12,
//                                   fontFamily: 'Poppins'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     ChamberPage(chambermodel)),
//                           );
//                         },
//                         style: ElevatedButton.styleFrom(
//                             shape: CircleBorder(),
//                             primary: Color(0xffffffff),
//                             textStyle: TextStyle(
//                                 fontSize: 12, fontWeight: FontWeight.bold)),
//                         child: Icon(
//                           Icons.edit,
//                           color: Colors.green,
//                         ),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) =>
//                                 msgthrow(context),
//                           );
//                         },
//                         style: ElevatedButton.styleFrom(
//                             shape: CircleBorder(),
//                             primary: Color(0xffffffff),
//                             textStyle: TextStyle(
//                                 fontSize: 12, fontWeight: FontWeight.bold)),
//                         child: Icon(
//                           Icons.delete_outline,
//                           color: Colors.red,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget msgthrow(BuildContext context) {
//     return new AlertDialog(
//       title: const Text(
//         'Are you sure? You want to delete',
//         style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             fontSize: 12,
//             fontFamily: 'Poppins'),
//       ),
//       content: new Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.center,
//       ),
//       actions: <Widget>[
//         new FlatButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           textColor: Theme.of(context).primaryColor,
//           child: Text("No"),
//         ),
//         // ignore: deprecated_member_use
//         new FlatButton(
//           onPressed: () {
//             chmmberController.chamberdelete(
//                 chambermodel['id'].toString(), context);
//           },
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(5.0),
//               side: BorderSide(color: Colors.green[200])),
//           textColor: Colors.black,
//           child: const Text('Yes'),
//         ),
//       ],
//     );
//   }
// }
