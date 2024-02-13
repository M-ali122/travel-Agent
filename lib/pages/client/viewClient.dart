import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/pages/client/controller/client_screen_controller.dart';

import '../../res/String.dart';
import '../../res/icons/svg.dart';
import 'clientHistory.dart';

class ViewClient extends GetWidget<ClientScreenController> {
  ViewClient({Key? key});


  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientScreenController>(
      init: ClientScreenController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text(
              'Clients',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: SvgPicture.string(Svgs.clientPageIcon),
              ),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(height: 16.h),
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
                  SizedBox(height: 29.h),

                controller.loadClient.isEmpty? Column(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Text("No Client Found",style: TextStyle(
                        color: Colors.grey
                    ),),
                  ],
                ) :  Container(
                    height: Get.height * 0.58,
                    child: Obx(() => ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.loadClient.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            StreamBuilder(
                              stream: FirebaseFirestore.instance
                                  .collection(Strings().kUser)
                                  .doc(controller.loadClient[index].uid)
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return Text("");
                                } else if (snapshot.hasError) {
                                  return Text('Error: ${snapshot.error}');
                                }
                                return ListTile(
                                  onTap: () {
                                    Get.toNamed(ClientHistory.route);
                                  },
                                  title: SizedBox(
                                    width: 130.38,
                                    child: Text(
                                      "${snapshot.data!['name']}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400,
                                        height: 0.06,
                                      ),
                                    ),
                                  ),
                                  subtitle: SizedBox(
                                    width: 172,
                                    child: Text(
                                      '${snapshot.data!['email']}',
                                      style: TextStyle(
                                        color: Color(0xFF9CA3AF),
                                        fontSize: 13,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400,
                                        height: 0.07,
                                      ),
                                    ),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(right: 8.0),
                                        child: Container(
                                          width: 32,
                                          height: 32,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFF242529),
                                            shape: OvalBorder(),
                                          ),
                                          child: Center(
                                            child: SvgPicture.string(
                                                Svgs.chetIcon),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(right: 8.0),
                                        child: Container(
                                          width: 32,
                                          height: 32,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFF242529),
                                            shape: OvalBorder(),
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.more_horiz,
                                              color: Color(0xffFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            const Divider(
                                thickness: 1, color: Color(0xff24272D)),
                          ],
                        );
                      },
                    ),)
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
