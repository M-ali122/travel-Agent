import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:intl/intl.dart';
import 'package:travelagentapp/pages/request/view/requestDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/res/String.dart';

import '../../clientScreen/clientAuth/controller/clientAuthController.dart';
import '../request/controller/managerRequestController.dart';

class TabbarView extends GetWidget<ManagerRequestController> {
  TabbarView({super.key});

  ClientAuthController clientAuthController = Get.put(ClientAuthController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ManagerRequestController>(
      init: ManagerRequestController(),
      builder: (controller) {
        return Scaffold(
          body: controller.reqList.isEmpty
              ? const Center(child: Text('No Request found'))
              : ListView.builder(
            shrinkWrap: true,
            itemCount: controller.reqList.length,
            itemBuilder: (context, index) {

              final request = controller.reqList[index];
              final recommendation = request.recommendation;

              final currentDate = request.currentTime != null
                  ? DateFormat('yyyy-MM-dd hh:mm a').format(
                  request.currentTime!.toDate())
                  : 'Unknown';

              final departureDate = request.departureDate != null
                  ? DateFormat('yyyy-MM-dd hh:mm a').format(
                  request.departureDate!.toDate())
                  : '$currentDate';

              final depDate = recommendation?.depDate != null
                  ? DateFormat('yyyy-MM-dd hh:mm a').format(
                  recommendation!.depDate!.toDate())
                  : '$departureDate';

              if (controller.reqList[index].requestStatus == "Accepted") {
                return Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    width: 343,
                    height: 150,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF191B20),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.20, color: Color(0x4C808080)),
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
                                  .doc(controller.reqList[index].uid
                                  .toString())
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (snapshot.hasError ||
                                    !snapshot.hasData) {
                                  return const CircleAvatar(
                                    foregroundImage: AssetImage(
                                        'assets/emoji/profile2.png'),
                                  );
                                }
                                final data = snapshot.data;
                                if (data == null ||
                                    data['profile'] == null) {
                                  return const CircleAvatar(
                                    foregroundImage: AssetImage(
                                        'assets/emoji/profile2.png'),
                                  );
                                }
                                return CircleAvatar(
                                  foregroundImage: NetworkImage(
                                      data['profile'].toString()),
                                );
                              },
                            ),
                          ),
                          title: Row(
                            children: [
                              Text(
                                '${recommendation?.title ??
                                    '${controller.reqList[index].type}'}',
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
                                  Get.toNamed(
                                    RequestDetail.route,
                                    arguments:
                                    controller.reqList[index],
                                  );
                                  print(
                                      'argument is ${controller.reqList[index]}');
                                },
                                child: Container(
                                    height: 35,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(8),
                                        color: const Color(0xff30889C)),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
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
                          subtitle: Row(
                            children: [
                              const Text(
                                'Requested by',
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
                                stream: FirebaseFirestore.instance
                                    .collection(Strings().kUser)
                                    .doc(controller.reqList[index].uid
                                    .toString())
                                    .snapshots(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return const Text("");
                                  }
                                  if (!snapshot.hasData) {
                                    return const Text("");
                                  }
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0),
                                    child: Text(
                                      snapshot.data!['name'].toUpperCase(),
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
                          padding:
                          EdgeInsets.symmetric(horizontal: 8.0),
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
                                padding:
                                const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  depDate,
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
                            children: const [
                              Padding(
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
                                padding:
                                EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'formatedReturnTime',
                                  style: TextStyle(
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
              } else {
                return Container();
              }
            },
          ),
        );
      },
    );
  }
}
