import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:travelagentapp/pages/request/view/requestDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/res/String.dart';

import '../../clientScreen/clientAuth/clientAuthController/clientAuthController.dart';
import '../request/controller/managerRequestController.dart';

class PanddingView extends GetWidget<ManagerRequestController> {
  PanddingView({super.key});


  ClientAuthController clientAuthController = Get.put(ClientAuthController());

  var requestType = [
    'Travel To Dubia',
    'Yoga Class',
    'Meet & Greet',
    'Lamborghini'
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ManagerRequestController>(
      init: ManagerRequestController(),
      builder: (controller) {
        return Scaffold(
          body: controller.reqList.isEmpty ||
              !controller.reqList.any((element) => element.requestStatus == 'Pending')
              ? Center(child: const Text('No Pandding Data found')):
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: controller.reqList.length,
              itemBuilder: (context, index) {
                if(controller.reqList[index].requestStatus == "Pending"){
                  return Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      width: 343,
                      height: 150,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF191B20),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.20, color: Color(0x4C808080)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          ListTile(
                            leading: SizedBox(
                              width: 50,
                              height: 50,
                              child: StreamBuilder(
                                stream: FirebaseFirestore.instance
                                    .collection(Strings().kUser)
                                    .doc(controller.reqList[index].uid.toString())
                                    .snapshots(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError || !snapshot.hasData) {
                                    return const CircleAvatar(
                                      foregroundImage: AssetImage('assets/emoji/profile2.png'),
                                    );
                                  }
                                  final data = snapshot.data;
                                  if (data == null || data['profile'] == null) {
                                    return const CircleAvatar(
                                      foregroundImage: AssetImage('assets/emoji/profile2.png'),
                                    );
                                  }
                                  return CircleAvatar(
                                    foregroundImage: NetworkImage(data['profile'].toString()),
                                  );
                                },
                              ),
                            ),
                            title: Row(
                              children: [
                                Text(
                                  '${controller.reqList.value[index].recommendation.title}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed(RequestDetail.route,
                                      arguments: controller.reqList [index],
                                    );
                                    print('argument is ${controller.reqList[index]}');
                                  },
                                  child: Container(
                                      height: 35,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: const Color(0xff30889C)),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Take Action',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                              letterSpacing: 0.30,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4.h,
                                          ),
                                          const Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 10,
                                            color: Colors.white,
                                          )
                                        ],
                                      )),
                                ),
                              ],
                            ),
                            // subtitle: const Text.rich(
                            //   TextSpan(
                            //     children: [
                            //       TextSpan(
                            //         text: 'Requested by ',
                            //         style: TextStyle(
                            //           color: Color(0xFF6B7280),
                            //           fontSize: 12,
                            //           fontFamily: 'SF Pro Text',
                            //           fontWeight: FontWeight.w400,
                            //           height: 0,
                            //           letterSpacing: 0.30,
                            //         ),
                            //       ),
                            //       TextSpan(
                            //         text: 'Sarah Shahi',
                            //         style: TextStyle(
                            //           color: Color(0xFF30879B),
                            //           fontSize: 12,
                            //           fontFamily: 'SF Pro Text',
                            //           fontWeight: FontWeight.w400,
                            //           height: 0,
                            //           letterSpacing: 0.30,
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
            
                            subtitle: Row(
                              children: [
                                const Text('Requested by',
                                  style: TextStyle(
                                    color: Color(0xFF6B7280),
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 0.30,
                                  ),
                                ),
                                StreamBuilder(
                                  stream: FirebaseFirestore.instance.collection(Strings().kUser).doc(
                                      controller.reqList[index].uid.toString()
                                  ).snapshots(),
                                  builder: (context, snapshot) {
            
                                    if(snapshot.hasError){
                                      return const Text("");
                                    }
                                    if(!snapshot.hasData){
                                      return const Text("");
                                    }
                                    return  Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: Text(snapshot.data!['name'],
                                        style: const TextStyle(
                                          color: Color(0xFF30879B),
                                          fontSize: 12,
                                          fontFamily: 'SF Pro Text',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: 0.30,
                                        ),
                                      ),
                                    );
            
                                  },
                                )
                              ],
                            ),
            
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              color: Color(0xfff24272F),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Row(
                              children: [
                                // const Padding(
                                //   padding: EdgeInsets.only(left: 8.0),
                                //   child: Text(
                                //     'Request number:',
                                //     style: TextStyle(
                                //       color: Colors.white,
                                //       fontSize: 12,
                                //       fontFamily: 'SF Pro Text',
                                //       fontWeight: FontWeight.w500,
                                //       height: 0,
                                //       letterSpacing: 0.50,
                                //     ),
                                //   ),
                                // ),
                                // const SizedBox(
                                //   width: 4,
                                // ),
                                // const Text(
                                //   '352096',
                                //   style: TextStyle(
                                //     color: Color(0xFF6B7280),
                                //     fontSize: 12,
                                //     fontFamily: 'SF Pro Text',
                                //     fontWeight: FontWeight.w400,
                                //     height: 0,
                                //     letterSpacing: 0.50,
                                //   ),
                                // ),
                                //const Spacer(),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Order Date:',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    controller.reqList.value[index].recommendation.depDate,
                                    style: const TextStyle(
                                      color: Color(0xFF6B7280),
                                      fontSize: 12,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Row(
                              children: [
                                // Padding(
                                //   padding: EdgeInsets.only(left: 8.0),
                                //   child: Text(
                                //     'Quantity:',
                                //     style: TextStyle(
                                //       color: Colors.white,
                                //       fontSize: 12,
                                //       fontFamily: 'SF Pro Text',
                                //       fontWeight: FontWeight.w500,
                                //       height: 0,
                                //       letterSpacing: 0.50,
                                //     ),
                                //   ),
                                // ),
            
                                // SizedBox(
                                //   width: 4,
                                // ),
                                // Text(
                                //   '2 x items',
                                //   style: TextStyle(
                                //     color: Color(0xFF6B7280),
                                //     fontSize: 12,
                                //     fontFamily: 'SF Pro Text',
                                //     fontWeight: FontWeight.w400,
                                //     height: 0,
                                //     letterSpacing: 0.50,
                                //   ),
                                // ),
                                // Spacer(),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Return Date:',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    controller.reqList.value[index].returnDate.toString(),
                                    style: const TextStyle(
                                      color: Color(0xFF6B7280),
                                      fontSize: 12,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
