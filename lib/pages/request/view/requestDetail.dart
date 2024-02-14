import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/controller/requestController.dart';
import 'package:travelagentapp/helpers/views/button.dart';
import 'package:travelagentapp/pages/request/controller/managerRequestController.dart';

import '../../../res/icons/svg.dart';

class RequestDetail extends GetWidget<ManagerRequestController> {
  static const String route = 'RequestDetail';

  RequestDetail({super.key});
  var arg = Get.arguments;

  @override
  Widget build(BuildContext context) {

    Timestamp? timestamp = arg.returnDate;
    DateTime dateTime = timestamp?.toDate() ?? DateTime.now();
    String formatedReturnTime = DateFormat('yyyy-mm-dd hh:mm a').format(dateTime);
    Timestamp? datestamp = arg.returnDate;
    DateTime date = datestamp?.toDate() ?? DateTime.now();
    String depdate = DateFormat('yyyy-mm-dd hh:mm a').format(date);
    return GetBuilder<ManagerRequestController>(
      init: ManagerRequestController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 65,
              elevation: 2,
              shadowColor: Colors.grey.withOpacity(0.4),
              leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios,size: 24,color: Colors.white,),
              ),
              title: const Text(
                'Requests Details',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w600,
                  height: 0.06,
                ),
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF242529),
                      shape: OvalBorder(),
                    ),
                    child: const Center(
                      child: Icon(Icons.more_horiz,color: Color(0xffFFFFFF),),
                    ),
                  ),
                )
              ],
            ),
            body: ListView(
              children: [
                Container(
                  width: 375,
                  height: 240.52,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.10000000149011612),
                    image: DecorationImage(image: NetworkImage(arg.recommendation.image),fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16,top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF242529),
                          shape: OvalBorder(),
                        ),
                        child: Center(
                          child: SvgPicture.string(Svgs.worldIcon),),
                      ),
                      SizedBox(width: 8.w,),
                       Text(
                        '${arg.recommendation.title}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 68,
                        height: 20,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.05999999865889549),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(child: Text(
                          '${arg.requestStatus}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFFF2C94C),
                            fontSize: 11,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 0.13,
                          ),
                        ),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h,),
                const Divider(color: Color(0xff1E2026),thickness: 4),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Details',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600,
                          height: 0.06,
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Row(
                        children: [
                          const Text(
                            'Departure Date & Time',
                            style: TextStyle(
                              color: Color(0xFF30879B),
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            depdate,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      const Divider(color: Color(0xff1E2026),thickness: 1),
                      SizedBox(height: 20.h,),
                      Row(
                        children: [
                          const Text(
                            'Return Date & Time',
                            style: TextStyle(
                              color: Color(0xFF30879B),
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '$formatedReturnTime',
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      const Divider(color: Color(0xff1E2026),thickness: 1),
                      SizedBox(height: 20.h,),
                      Row(
                        children: [
                          const Text(
                            'Number of People',
                            style: TextStyle(
                              color: Color(0xFF30879B),
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '${arg.numberOfPeople}',
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      const Divider(color: Color(0xff1E2026),thickness: 1),
                      SizedBox(height: 20.h,),
                      const Text(
                        'Details',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600,
                          height: 0.06,
                        ),
                      ),
                      const SizedBox(height: 16,),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              width: 343,
                              height: 165,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF1B1C21),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 0.20, color: Color(0x4C808080)),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 25,
                              height: 23.2,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF242529),
                                shape: OvalBorder(
                                  side: BorderSide(width: 1, color: Color(0xFF1617B)),
                                ),
                              ),
                              child:  const Icon(Icons.keyboard_arrow_up,color: Color(0xff8A96B3),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 110.0,left: 10),
                            child: SizedBox(
                              height: 50,
                              width: 250,
                              child: TextField(
                                decoration: InputDecoration(
                                    // prefixIcon: Transform.rotate(
                                    //     angle: 12,
                                    //     child: const Icon(Icons.attachment_outlined,color: Color(0xff8A96B3),)),
                                    hintText: "Message",
                                    hintStyle: const TextStyle(color:Color(0xff8A96B3),fontSize: 11,),
                                    suffixIcon: const Icon(Icons.emoji_emotions_outlined,color:Color(0xff8A96B3)),
                                    fillColor: const Color(0xff17181C)
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 270,
                            top: 110,
                            child: Container(
                              width: 41.94,
                              height: 41.94,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF30879B),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.97),
                                ),
                              ),
                              child: const Icon(Icons.send,color: Colors.white,size: 19,),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      arg.requestStatus == 'Accepted' ? AppButton(
                          title: 'Cancel',
                          onTap: (){
                            controller.statusChanger(arg.requestId.toString(),"Cancelled","");
                            Get.back();
                          }
                      ):
                      SizedBox(
                        height: 54.h,
                        child: AppButton(
                          title: 'Request Accept',
                          onTap: (){
                            var box = GetStorage();
                            var uid = box.read('uid');
                              controller.statusChanger(arg.requestId.toString(),"Accepted",uid);
                              Get.back();
                          },
                        ),
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
    );
  }
}

