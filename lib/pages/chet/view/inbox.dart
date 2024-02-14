import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/clientScreen/clientChet/controller/message_controller.dart';
import '../../../res/String.dart';
import '../../../res/icons/svg.dart';
import '../controller/message_controller.dart';
import 'chatpage.dart';

class Inbox extends GetWidget<ChatController> {
  Inbox({super.key});
  @override
  var box = GetStorage();
  Widget build(BuildContext context) {
    var id = box.read("uid");
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
                  } else if (snapshot.data == null || snapshot.data!.docs.isEmpty) {
                    return Text('No Data Available');
                  } else {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                             CircleAvatar(
                              backgroundColor: Get.theme.dividerColor,
                              child: Icon(Icons.person,size: 25,color: Colors.black,),
                            ),
                            Expanded(
                              child: ListTile(
                                onTap: () {
                                  Get.toNamed(ChatScreen.route,
                                      arguments: snapshot.data!.docs[index]["uid"]
                                          .toString());
                                },
                                title: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        '${snapshot.data!.docs[index]['name']}',
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
                                  padding: const EdgeInsets.only(
                                      left: 10.0, top: 16),
                                  child: Row(
                                    children: [
                                      Text(
                                        // 'This is demo message text'
                                        "${snapshot.data!.docs[index]['email']}",
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
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
