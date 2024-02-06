// import 'package:travelagentapp/pages/request/view/requestDetail.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// import '../../clientScreen/clientAuth/clientAuthController/clientAuthController.dart';
// import '../request/controller/managerRequestController.dart';
//
// class TabbarView extends GetWidget<ManagerRequestController> {
//   TabbarView({super.key});
//
//
//   ClientAuthController clientAuthController = Get.put(ClientAuthController());
//
//   var requestType = [
//     'Travel To Dubia',
//     'Yoga Class',
//     'Meet & Greet',
//     'Lamborghini'
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<ManagerRequestController>(
//       init: ManagerRequestController(),
//         builder: (controller) {
//           // print('manager request list is ${controller.reqList.length}');
//           print('manager request data is $clientAuthController');
//           return Scaffold(
//             body: ListView.builder(
//               shrinkWrap: true,
//               itemCount: controller.recommandList.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(top: 10.0),
//                   child: Container(
//                     width: 343,
//                     height: 150,
//                     decoration: ShapeDecoration(
//                       color: const Color(0xFF191B20),
//                       shape: RoundedRectangleBorder(
//                         side: const BorderSide(width: 0.20, color: Color(0x4C808080)),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                           height: 10.h,
//                         ),
//                         ListTile(
//                           leading: const CircleAvatar(
//                             foregroundImage: AssetImage(
//                                 'assets/emoji/profile2.png'
//                             ),
//                           ),
//                           title: Row(
//                             children: [
//                               Text(
//                                 '${controller.recommandList.value[index].title}',
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 14,
//                                   fontFamily: 'SF Pro Text',
//                                   fontWeight: FontWeight.w500,
//                                   height: 0,
//                                   letterSpacing: 0.50,
//                                 ),
//                               ),
//                               const Spacer(),
//                               GestureDetector(
//                                 onTap: () {
//                                   Get.toNamed(RequestDetail.route,
//                                    arguments: controller.reqList [index],
//                                   );
//                                   print('argument is ${controller.reqList[index]}');
//                                 },
//                                 child: Container(
//                                     height: 35,
//                                     width: 90,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(8),
//                                         color: const Color(0xff30889C)),
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         const Text(
//                                           'Take Action',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 12,
//                                             fontFamily: 'SF Pro Text',
//                                             fontWeight: FontWeight.w500,
//                                             height: 0,
//                                             letterSpacing: 0.30,
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           width: 4.h,
//                                         ),
//                                         const Icon(
//                                           Icons.keyboard_arrow_down,
//                                           size: 10,
//                                           color: Colors.white,
//                                         )
//                                       ],
//                                     )),
//                               ),
//                             ],
//                           ),
//                           subtitle: const Text.rich(
//                             TextSpan(
//                               children: [
//                                 TextSpan(
//                                   text: 'Requested by ',
//                                   style: TextStyle(
//                                     color: Color(0xFF6B7280),
//                                     fontSize: 12,
//                                     fontFamily: 'SF Pro Text',
//                                     fontWeight: FontWeight.w400,
//                                     height: 0,
//                                     letterSpacing: 0.30,
//                                   ),
//                                 ),
//                                 TextSpan(
//                                   text: 'Sarah Shahi',
//                                   style: TextStyle(
//                                     color: Color(0xFF30879B),
//                                     fontSize: 12,
//                                     fontFamily: 'SF Pro Text',
//                                     fontWeight: FontWeight.w400,
//                                     height: 0,
//                                     letterSpacing: 0.30,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         const Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 8.0),
//                           child: Divider(
//                             height: 1,
//                             thickness: 1,
//                             color: Color(0xfff24272F),
//                           ),
//                         ),
//                          Padding(
//                           padding: const EdgeInsets.only(top: 15.0),
//                           child: Row(
//                             children: [
//                               // const Padding(
//                               //   padding: EdgeInsets.only(left: 8.0),
//                               //   child: Text(
//                               //     'Request number:',
//                               //     style: TextStyle(
//                               //       color: Colors.white,
//                               //       fontSize: 12,
//                               //       fontFamily: 'SF Pro Text',
//                               //       fontWeight: FontWeight.w500,
//                               //       height: 0,
//                               //       letterSpacing: 0.50,
//                               //     ),
//                               //   ),
//                               // ),
//                               // const SizedBox(
//                               //   width: 4,
//                               // ),
//                               // const Text(
//                               //   '352096',
//                               //   style: TextStyle(
//                               //     color: Color(0xFF6B7280),
//                               //     fontSize: 12,
//                               //     fontFamily: 'SF Pro Text',
//                               //     fontWeight: FontWeight.w400,
//                               //     height: 0,
//                               //     letterSpacing: 0.50,
//                               //   ),
//                               // ),
//                               //const Spacer(),
//                               const Padding(
//                                 padding: EdgeInsets.only(left: 8.0),
//                                 child: Text(
//                                   'Order Date:',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 12,
//                                     fontFamily: 'SF Pro Text',
//                                     fontWeight: FontWeight.w500,
//                                     height: 0,
//                                     letterSpacing: 0.50,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 8.0),
//                                 child: Text(
//                                     controller.recommandList.value[index].depDate,
//                                   style: const TextStyle(
//                                     color: Color(0xFF6B7280),
//                                     fontSize: 12,
//                                     fontFamily: 'SF Pro Text',
//                                     fontWeight: FontWeight.w400,
//                                     height: 0,
//                                     letterSpacing: 0.50,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 15.0),
//                           child: Row(
//                             children: [
//                               // Padding(
//                               //   padding: EdgeInsets.only(left: 8.0),
//                               //   child: Text(
//                               //     'Quantity:',
//                               //     style: TextStyle(
//                               //       color: Colors.white,
//                               //       fontSize: 12,
//                               //       fontFamily: 'SF Pro Text',
//                               //       fontWeight: FontWeight.w500,
//                               //       height: 0,
//                               //       letterSpacing: 0.50,
//                               //     ),
//                               //   ),
//                               // ),
//
//                               // SizedBox(
//                               //   width: 4,
//                               // ),
//                               // Text(
//                               //   '2 x items',
//                               //   style: TextStyle(
//                               //     color: Color(0xFF6B7280),
//                               //     fontSize: 12,
//                               //     fontFamily: 'SF Pro Text',
//                               //     fontWeight: FontWeight.w400,
//                               //     height: 0,
//                               //     letterSpacing: 0.50,
//                               //   ),
//                               // ),
//                               // Spacer(),
//                               const Padding(
//                                 padding: EdgeInsets.only(left: 8.0),
//                                 child: Text(
//                                   'Return Date:',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 12,
//                                     fontFamily: 'SF Pro Text',
//                                     fontWeight: FontWeight.w500,
//                                     height: 0,
//                                     letterSpacing: 0.50,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 8.0),
//                                 child: Text(
//                                   controller.recommandList.value[index].returnDate,
//                                   style: const TextStyle(
//                                     color: Color(0xFF6B7280),
//                                     fontSize: 12,
//                                     fontFamily: 'SF Pro Text',
//                                     fontWeight: FontWeight.w400,
//                                     height: 0,
//                                     letterSpacing: 0.50,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//     );
//   }
// }

// // ignore_for_file: must_be_immutable
//
// import 'package:flutter/cupertino.dart';
// import 'package:travelagentapp/clientScreen/clientRequestScreen/view/sandRequest.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// class ClientScreenTabbar extends StatelessWidget {
//   ClientScreenTabbar({super.key});
//
//   var requestType = [
//     'Travel To Dubia',
//     'Yoga Class',
//     'Meet & Greet',
//     'Lamborghini'
//   ];
//   var clintHistory = [
//     'Travel to Dubai',
//     'Yoga Classes',
//     'Meet & Greet',
//     'Lamborggini'
//   ];
//
//   var imageurl = [
//     'assets/emoji/dubia.png',
//     'assets/emoji/yogaClasses.png',
//     'assets/emoji/meetGreet.png',
//     'assets/emoji/lamborghini.png',
//   ];
//
//   var color = [
//     Color(0xffF2994A),
//     Color(0xffF2994A),
//     Color(0xff27AE60),
//     Color(0xffF2994A),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Expanded(
//         child: GestureDetector(
//           onTap: () {
//             Get.toNamed(ClientPageSandRequest.route);
//           },
//           child: ListView.builder(
//             itemCount: clintHistory.length,
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.only(top:10.0),
//                 child: Container(
//                   width: 343,
//                   height: 70,
//                   decoration: ShapeDecoration(
//                     color: Color(0xFF191B1F),
//                     shape: RoundedRectangleBorder(
//                       side: BorderSide(width: 0.20, color: Color(0x4C808080)),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                   child: ListTile(
//                     leading: Container(
//                       width: 60,
//                       height: 60,
//                       decoration: ShapeDecoration(
//                         // image: DecorationImage(
//                         //     image: AssetImage('assets/emoji/dubia.png'),fit: BoxFit.cover),
//                         image: DecorationImage(image: AssetImage(imageurl[index]),fit: BoxFit.cover),
//                         color: Colors.black.withOpacity(0.10000000149011612),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                     title: Text(
//                       '${clintHistory[index]}',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                         fontFamily: 'SF Pro Text',
//                         fontWeight: FontWeight.w500,
//                         height: 0.10,
//                       ),
//                     ),
//                     subtitle: Row(
//                       children: [
//                         Icon(CupertinoIcons.clock,size: 12,color: Color(0xff6B7280),),
//                         SizedBox(width: 4.w,),
//                         Text(
//                           'Sat 9 Dec 07:00 AM',
//                           style: TextStyle(
//                             color: Color(0xFF6B7280),
//                             fontSize: 11,
//                             fontFamily: 'SF Pro Text',
//                             fontWeight: FontWeight.w400,
//                             height: 0.19,
//                           ),
//                         ),
//                       ],
//                     ),
//                     trailing: Container(
//                       width: 68,
//                       height: 20,
//                       decoration: ShapeDecoration(
//                         color: Colors.white.withOpacity(0.05999999865889549),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Completed',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: color[index],
//                             fontSize: 10,
//                             fontFamily: 'SF Pro Text',
//                             fontWeight: FontWeight.w500,
//                             height: 0.13,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             },),
//         ),
//       ),
//     );
//   }
// }
// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/controller/requestController.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/view/sandRequest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class TabbarView extends GetWidget<RequestController> {
  TabbarView({super.key});

  @override
  Widget build(BuildContext context) {
    // controller.loadrequest();
    return GetBuilder<RequestController>(
      init: RequestController(),
      builder: (controller) {
        return Scaffold(
          body: GestureDetector(
            onTap: () {
              Get.toNamed(ClientPageSandRequest.route);
            },
            child: controller.reqList.isEmpty ? Center(child: Text("No Request Found"))
                : ListView.builder(
              itemCount: controller.reqList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Container(
                    width: 343,
                    height: 70,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF191B1F),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.20, color: Color(0x4C808080)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: ListTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  controller.reqList.value[index].recommendation.image),
                              fit: BoxFit.cover
                          ),
                          color: Colors.black.withOpacity(0.10000000149011612),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      title: Text(
                        '${controller.reqList.value[index].recommendation.title}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          const Icon(CupertinoIcons.clock,size: 12,color: Color(0xff6B7280),),
                          SizedBox(width: 4.w,),
                          Text(
                            '${controller.reqList.value[index].recommendation.depDate}',
                            style: const TextStyle(
                              color: Color(0xFF6B7280),
                              fontSize: 11,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0.19,
                            ),
                          ),
                        ],
                      ),
                      trailing: Container(
                        width: 68,
                        height: 20,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.05999999865889549),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '${controller.reqList.value[index].requestStatus}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: controller.reqList.value[index].recommendation.requestStatus == 'Completed'
                                  ? const Color(0xff27AE60):
                              controller.reqList.value[index].requestStatus == 'Cancelled' ?
                              Color(0xffFF0000) : Color(0xffF2994A),
                              fontSize: 10,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0.13,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
