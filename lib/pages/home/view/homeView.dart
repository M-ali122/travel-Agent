import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:travelagentapp/pages/profile/controller/profileController.dart';
import 'package:travelagentapp/pages/request/controller/managerRequestController.dart';
import 'package:travelagentapp/res/dark_theme.dart';

import '../../../clientScreen/clientRequestScreen/model/requestModel.dart';
import '../../../res/String.dart';

class HomeView extends GetWidget <ManagerRequestController>{
  HomeView({super.key});

  var arrColor = [const Color(0xff9BCFDB), const Color(0xffFBE8AC), const Color(0xff82D6A6)];
  var arrTime = ['08:00', '10:00', '12:00',];
  var arrScheduleText = [
    'Yoga Classes',
    'Lamborghini on Rent',
    'Dubai Tour Arrangement',
    'Dubai Tour Arrangement',
  ];
  var arrtext = ['Priority Today', 'To-do Tasks', 'Completed '];
  var arrNumbers = ['16', '122', '300'];
  var dateTime = [
    'Fri 15 Dec 08:00- 10:00 AM',
    'Fri 15 Dec 12:00',
    'Fri 15 Dec 14:00- 16:00 AM',
    'Fri 15 Dec 14:00- 16:00 AM',
  ];
  var arrIcon = [
    const Icon(Icons.keyboard_arrow_up, color: Color(0xff6FCF97), size: 0),
    const Icon(Icons.keyboard_arrow_up, color: Color(0xff6FCF97), size: 10),
    const Icon(Icons.keyboard_arrow_up, color: Colors.white, size: 10),
  ];
  var iconPercent = [' new tasks', '15%', '15%'];

  ProfileController profileController = Get.put(ProfileController());

   var box = GetStorage();
  @override
  Widget build(BuildContext context) {
    var id = box.read('uid');
    return GetBuilder<ManagerRequestController>(
      init: ManagerRequestController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3.0,right: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              CupertinoIcons.sun_max_fill,
                              color: DarkTheme.primary,
                              size: 14.37,
                            ),
                            SizedBox(
                              width: 6.h,
                            ),
                            Text(
                              controller.getCurrentDayAndDate(),
                              style: TextStyle(fontSize: 10.78, color: DarkTheme.primary),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "Hi, ${profileController.loadUserModel.value.name}",
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                    foregroundImage: NetworkImage(profileController.loadUserModel.value.profile),
                  )
                ],
              ),
            ),
            body:  Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const Divider(thickness: 1,color: Color(0xff212730),),
                  SizedBox(
                    height: 16.h,
                  ),
                  const Text(
                    'Let’s check how would manage your day ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Container(
                          width: 90,
                          height: 100,
                          decoration: ShapeDecoration(
                            color: arrColor[0],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 9.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  arrtext[0],
                                  style: const TextStyle(
                                    color: Color(0xFF111827),
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0.16,
                                  ),
                                ),
                                Text(
                                  "${controller.priorityToday}", // Using filtered list length
                                  style: const TextStyle(
                                    color: Color(0xFF111827),
                                    fontSize: 28,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w600,
                                    height: 0.03,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '',
                                      style: TextStyle(
                                        color: Color(0xFF111827),
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w500,
                                        height: 0.16,
                                      ),
                                    ),
                                    Text(
                                      iconPercent[0],
                                      style: const TextStyle(
                                        color: Color(0xFF111827),
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w500,
                                        height: 0.16,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Container(
                          width: 90,
                          height: 100,
                          decoration: ShapeDecoration(
                            color: arrColor[1],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 9.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  arrtext[1],
                                  style: const TextStyle(
                                    color: Color(0xFF111827),
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0.16,
                                  ),
                                ),
                                Text(
                                  '${controller.todoTask}',
                                  style: const TextStyle(
                                    color: Color(0xFF111827),
                                    fontSize: 28,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w600,
                                    height: 0.03,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      iconPercent[0],
                                      style: const TextStyle(
                                        color: Color(0xFF111827),
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w500,
                                        height: 0.16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Container(
                          width: 90,
                          height: 100,
                          decoration: ShapeDecoration(
                            color: arrColor[2],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 9.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  arrtext[2],
                                  style: const TextStyle(
                                    color: Color(0xFF111827),
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0.16,
                                  ),
                                ),
                                Text(
                                  '${controller.complected}',
                                  style: const TextStyle(
                                    color: Color(0xFF111827),
                                    fontSize: 28,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w600,
                                    height: 0.03,
                                  ),
                                ),
                                Row(
                                  children: [
                                    arrIcon[2],
                                    Text(
                                      iconPercent[2],
                                      style: const TextStyle(
                                        color: Color(0xFF111827),
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w500,
                                        height: 0.16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: Text(
                      'Today Schedule',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        height: 0.07,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                controller.reqList.isEmpty ? const Column(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Text("No Task For Today",style: TextStyle(
                      color: Colors.grey
                    ),),
                  ],
                ):  SizedBox(
                    height: Get.height * 0.32,
                    child: Obx(() => ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: controller.reqList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {

                        RequestModel reqlist = controller.reqList[index];
                        // Timestamp? timestamp = reqlist.recommendation.depDate;
                        // DateTime today = DateTime.now();
                        // DateTime? requestDate = timestamp?.toDate();
                        // Timestamp? datestamp = controller.reqList[index].recommendation.depDate;
                        // DateTime date = datestamp?.toDate() ?? DateTime.now();
                        // String depDate = DateFormat('yyyy-MM-dd hh:mm a').format(date);

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


                        // if(requestDate!.year == today.year
                        //    && requestDate.month == today.month
                        //    && requestDate.day == today.day){
                          if (reqlist.requestStatus == "Accepted") {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10.0),
                                      child: SizedBox(
                                        width: 38,
                                        height: 14,
                                        child: Text(
                                          '08:00',
                                          style: TextStyle(
                                            color: Color(0xFF9CA3AF),
                                            fontSize: 12,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0.18,
                                            letterSpacing: 0.30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Container(
                                      width: 282,
                                      height: 1,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF21262F),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    StreamBuilder(
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
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Container(
                                        width: 261,
                                        height: 80,
                                        decoration: const BoxDecoration(
                                          color: Color(0xff23262D),
                                          borderRadius: BorderRadius.all(Radius.circular(14)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 12.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 22,
                                              ),
                                              Text(
                                                '${recommendation?.title ??
                                                    '${controller.reqList[index].type}'}',
                                                // '${controller.reqList[index].title}',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontFamily: 'SF Pro Text',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0.14,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 16,
                                              ),
                                              Row(
                                                children: [
                                                  const Icon(
                                                    CupertinoIcons.clock,
                                                    color: Color(0xff6B7280),
                                                    size: 12,
                                                  ),
                                                  const SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    '${depDate}', // Convert timestamp to date and then to string
                                                    style: const TextStyle(
                                                      color: Color(0xFF6B7280),
                                                      fontSize: 11,
                                                      fontFamily: 'SF Pro Text',
                                                      fontWeight: FontWeight.w400,
                                                      height: 0.19,
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  const Padding(
                                                    padding: EdgeInsets.only(right: 12.0, bottom: 10),
                                                    child: Icon(
                                                      Icons.circle_outlined,
                                                      color: Color(0xffFFFFFF),
                                                      size: 24,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          } else {
                            return Container(
                            );
                          }
                        // }else {
                        //   return Container(
                        //   );
                        // }
                      },
                    )),
                  ),

                ],
              ),
            ),
          );
        },
    );
  }
}
