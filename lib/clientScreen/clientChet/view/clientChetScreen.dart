import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

import 'package:travelagentapp/clientScreen/clientChet/controller/message_controller.dart';
import 'package:travelagentapp/helpers/views/message_bubble.dart';
import 'package:travelagentapp/res/String.dart';

import '../../ClientprofileScreen/Controller/client_profile_controller.dart';

class ClientChatScreen extends GetWidget<MessageController> {
  static String route = 'ClientChatScresdsdsn';
  // String arg = Get.arguments;
  ClientChatScreen({super.key});

  ClientProfileController clientProfileController = Get.put(ClientProfileController());
  @override
  Widget build(BuildContext context) {
    var managerId = clientProfileController.user.value.managerId;
    return GetBuilder<MessageController>(
      init: MessageController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: Colors.white,
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection(Strings().kUser)
                        .doc(managerId)
                        .snapshots(),
                    builder:
                        (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Text("Loading..");
                      }
                      if (snapshot.hasError) {
                        return const Text('Loading...');
                      }
                      if (!snapshot.hasData) {
                        return const Text('Loading...');
                      }
                      Map<String, dynamic> userData =
                          snapshot.data!.data() as Map<String, dynamic>;
                      return Text(
                        "${userData!['name']}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600,
                          height: 0.08,
                        ),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 66.0, top: 5),
                  child: Text(
                    'Online',
                    style: TextStyle(
                      color: Color(0xFF30879B),
                      fontSize: 11,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              const Icon(
                Icons.more_horiz,
                color: Colors.white,
              )
            ],
          ),
          body: Column(
            children: [
              Container(
                height: Get.height *0.77,
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection(Strings().kMessage)
                      .orderBy('dateTime', descending: true)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                          child:
                              CircularProgressIndicator()); // Show a loader while waiting for data
                    }
                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    }
                    if (!snapshot.hasData) {
                      return const Text('Loading...');
                    }
                    var box = GetStorage();
                    var id = box.read("uid");
                    // Filter messages based on participants
                    List filteredMessages = snapshot.data!.docs.where((doc) {
                      List participants = doc['participants'];
                      return participants.contains("$id") &&
                          participants.contains(managerId);
                    }).toList();

                    return ListView.builder(
                      shrinkWrap: true,
                      reverse: true,
                      // controller: controller.scrollController,
                      itemCount: filteredMessages.length,
                      itemBuilder: (context, index) {
                        var messageData = filteredMessages[index].data();
                        Timestamp? timestamp = messageData?["dateTime"];
                        DateTime dateTime = timestamp?.toDate() ?? DateTime.now(); // Use current time if timestamp is null
                        String formattedDateTime = DateFormat('hh:mm a').format(dateTime);
                        return MessageBubble(
                            sender: "me",
                            text: messageData['msg'],
                            time: formattedDateTime,
                            isMe: messageData['sendBy'] == id
                                ? true
                                : false); // Assuming 'message' is the key for message content
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          bottomSheet: Container(
            height: 80,
            width: double.infinity,
            decoration: const BoxDecoration(
              // color: Colors.transparent,
                color: Color(0xff16171B),
                border: Border(
                    top: BorderSide(width: 1, color: Color(0xff1E2026)))),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: SizedBox(
                    height: 50,
                    width: 250,
                    child: TextField(
                      controller: controller.msgController,
                      decoration: InputDecoration(
                          prefixIcon: Transform.rotate(
                              angle: 12,
                              child: const Icon(
                                Icons.attachment_outlined,
                                color: Color(0xff8A96B3),
                              )),
                          hintText: "Message",
                          hintStyle: const TextStyle(
                            color: Color(0xff8A96B3),
                            fontSize: 11,
                          ),
                          suffixIcon: const Icon(Icons.emoji_emotions_outlined,
                              color: Color(0xff8A96B3)),
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: InkWell(
                    onTap: () {
                      controller.sendMessage(managerId);
                    },
                    child: Container(
                      width: 44.94,
                      height: 44.94,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF30879B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.97),
                        ),
                      ),
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 19,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
