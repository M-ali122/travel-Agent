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

import '../clientHome/controller/recomController.dart';

class PandingView extends GetWidget<RequestController> {
  PandingView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.loadrequest();
    return GetBuilder<RequestController>(
      init: RequestController(),
      builder: (controller) {
        return Scaffold(
          body: GestureDetector(
            onTap: () {
            },
            child: controller.reqList.isEmpty ? Text('No Panding data') :
            ListView.builder(
              itemCount: controller.reqList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if(controller.reqList[index].requestStatus == "Pending"){
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
                              style: const TextStyle(
                                color: Color(0xffF2994A),
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
                }else{
                  return Container();
                }
              },
            ),
          ),
        );
      },
    );
  }
}
