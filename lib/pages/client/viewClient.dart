import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/pages/client/controller/client_screen_controller.dart';

import '../../res/String.dart';
import '../../res/icons/svg.dart';
import '../chet/view/chatpage.dart';
import 'clientHistory.dart';

class ViewClient extends GetWidget<ClientScreenController> {
  ViewClient({Key? key});

  var box = GetStorage();
  @override
  Widget build(BuildContext context) {
    var id = box.read("uid");
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

                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection(Strings().kUser)
                        .where("managerId", isEqualTo: id.toString())
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else if (snapshot.data == null ||
                          snapshot.data!.docs.isEmpty) {
                        return Text('No Data Available');
                      } else {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                Get.toNamed(ClientHistory.route);
                              },
                              title: SizedBox(
                                width: 130.38,
                                child: Text(
                                  "${snapshot.data!.docs[index]['name']}",
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
                                  '${snapshot.data!.docs[index]["email"]}',
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
                                  GestureDetector(
                                    onTap: (){
                                      Get.toNamed(ChatScreen.route,
                                          arguments: snapshot.data!.docs[index]["uid"]
                                              .toString());
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        width: 32,
                                        height: 32,
                                        decoration: const ShapeDecoration(
                                          color: Color(0xFF242529),
                                          shape: OvalBorder(),
                                        ),
                                        child: Center(
                                          child: SvgPicture.string(Svgs.chetIcon),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }
                    },
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
