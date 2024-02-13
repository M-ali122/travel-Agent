import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/clientChet/controller/message_controller.dart';
import '../../../res/String.dart';
import '../controller/message_controller.dart';
import 'chatpage.dart';

class Inbox extends GetWidget<ChatController> {
  Inbox({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatController>(
      init: ChatController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              'Messages',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  const Divider(thickness: 1, color: Color(0xff1E2026)),
                  SizedBox(
                    height: 13.h,
                  ),
                  const SizedBox(
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,
                              size: 20, color: Color(0xff6B7280)),
                          hintText: 'Search clients',
                          hintStyle: TextStyle(
                              color: Color(
                                0xff6B7280,
                              ),
                              fontSize: 12)),
                    ),
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  // SizedBox(
                  //   height: Get.height * 0.53,
                  //   child: ListView.builder(
                  //     shrinkWrap: true,
                  //     itemCount: controller.loadMessageList.length,
                  //     itemBuilder: (context, index) {
                  //       return ListView(
                  //         scrollDirection: Axis.vertical,
                  //         shrinkWrap: true,
                  //         children: [
                  //           StreamBuilder(
                  //             stream: FirebaseFirestore.instance
                  //                 .collection(Strings().kUser)
                  //                 .doc(controller.loadMessageList[index].uid)
                  //                 .snapshots(),
                  //             builder: (context, snapshot) {
                  //               if (snapshot.connectionState ==
                  //                   ConnectionState.waiting) {
                  //                 return const Text("");
                  //               } else if (snapshot.hasError) {
                  //                 return Text('Error: ${snapshot.error}');
                  //               }
                  //               return Row(
                  //                 children: [
                  //                   const CircleAvatar(
                  //                     foregroundImage: AssetImage(
                  //                         'assets/emoji/profile2.png'),
                  //                   ),
                  //                   Expanded(
                  //                     child: ListTile(
                  //                       onTap: () {
                  //                         Get.toNamed(ChatScreen.route,
                  //                             arguments: controller
                  //                                 .loadMessageList[index]
                  //                                 .uid
                  //                                 .toString());
                  //                       },
                  //                       title: Padding(
                  //                         padding: const EdgeInsets.only(left: 50.0),
                  //                         child: Row(
                  //                           children: [
                  //                             Text(
                  //                               '${snapshot.data!['name']}',
                  //                               style: const TextStyle(
                  //                                 color: Colors.white,
                  //                                 fontSize: 16,
                  //                                 fontFamily: 'SF Pro Text',
                  //                                 fontWeight: FontWeight.w500,
                  //                                 height: 0.06,
                  //                               ),
                  //                             ),
                  //                             const Spacer(),
                  //                             const Text(
                  //                               '12:00 PM',
                  //                               style: TextStyle(
                  //                                 color: Color(0xFF9CA3AF),
                  //                                 fontSize: 11,
                  //                                 fontFamily: 'SF Pro Text',
                  //                                 fontWeight: FontWeight.w400,
                  //                                 height: 0.12,
                  //                               ),
                  //                             ),
                  //                           ],
                  //                         ),
                  //                       ),
                  //                       subtitle: Padding(
                  //                         padding:  const EdgeInsets.only(
                  //                             left: 50.0, top: 16),
                  //                         child: Row(
                  //                           children: [
                  //                             Text(
                  //                               // 'This is demo message text'
                  //                               "${snapshot.data!['email']}",
                  //                               style: const TextStyle(
                  //                                 color: Colors.white,
                  //                                 fontSize: 14,
                  //                                 fontFamily: 'SF Pro Text',
                  //                                 fontWeight: FontWeight.w400,
                  //                                 height: 0.07,
                  //                               ),
                  //                             ),
                  //                             const Spacer(),
                  //                             // Container(
                  //                             //   width: 20,
                  //                             //   height: 20,
                  //                             //   decoration:
                  //                             //       const ShapeDecoration(
                  //                             //     color: Color(0xFF30879B),
                  //                             //     shape: OvalBorder(),
                  //                             //   ),
                  //                             //   child: const Center(
                  //                             //     child: Text(
                  //                             //       '1',
                  //                             //       textAlign: TextAlign.center,
                  //                             //       style: TextStyle(
                  //                             //         color: Colors.white,
                  //                             //         fontSize: 10.83,
                  //                             //         fontFamily: 'SF Pro Text',
                  //                             //         fontWeight:
                  //                             //             FontWeight.w500,
                  //                             //         height: 0.13,
                  //                             //       ),
                  //                             //     ),
                  //                             //   ),
                  //                             // )
                  //                           ],
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               );
                  //             },
                  //           ),
                  //           SizedBox(
                  //             height: 20.h,
                  //           ),
                  //         ],
                  //       );
                  //     },
                  //   ),
                  // ),
                  Obx(() => SizedBox(
                    height: Get.height * 0.53,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.loadMessageList.length,
                      itemBuilder: (context, index) {
                        return ListView(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: [
                            StreamBuilder(
                              stream: FirebaseFirestore.instance
                                  .collection(Strings().kUser)
                                  .doc(controller.loadMessageList[index].uid)
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState == ConnectionState.waiting) {
                                  return const Text("");
                                } else if (snapshot.hasError) {
                                  return Text('Error: ${snapshot.error}');
                                }
                                return Row(
                                  children: [
                                    const CircleAvatar(
                                      foregroundImage: AssetImage('assets/emoji/profile2.png'),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        onTap: () {
                                          Get.toNamed(ChatScreen.route,
                                              arguments: controller.loadMessageList[index].uid.toString());
                                        },
                                        title: Padding(
                                          padding: const EdgeInsets.only(left: 50.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                '${snapshot.data!['name']}',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: 'SF Pro Text',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0.06,
                                                ),
                                              ),
                                              const Spacer(),
                                              const Text(
                                                '12:00 PM',
                                                style: TextStyle(
                                                  color: Color(0xFF9CA3AF),
                                                  fontSize: 11,
                                                  fontFamily: 'SF Pro Text',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0.12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        subtitle: Padding(
                                          padding:  const EdgeInsets.only(
                                              left: 50.0, top: 16),
                                          child: Row(
                                            children: [
                                              Text(
                                                // 'This is demo message text'
                                                "${snapshot.data!['email']}",
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontFamily: 'SF Pro Text',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0.07,
                                                ),
                                              ),
                                              const Spacer(),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        );
                      },
                    ),
                  ),)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
