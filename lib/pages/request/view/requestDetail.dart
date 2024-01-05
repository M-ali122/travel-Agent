import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../res/icons/svg.dart';

class RequestDetail extends StatelessWidget {
  static const String route = 'RequestDetail';

  const RequestDetail({super.key});

  @override
  Widget build(BuildContext context) {
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
                const Text(
                  'Travel to Dubai',
                  style: TextStyle(
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
                  child: const Center(child: Text(
                    'Pending',
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
                const Row(
                  children: [
                    Text(
                      'Departure Date & Time',
                      style: TextStyle(
                        color: Color(0xFF30879B),
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Fri 15 Dec 04:00 AM',
                      textAlign: TextAlign.right,
                      style: TextStyle(
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
                const Row(
                  children: [
                    Text(
                      'Return Date & Time',
                      style: TextStyle(
                        color: Color(0xFF30879B),
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Wed 20 Dec 10:00 PM',
                      textAlign: TextAlign.right,
                      style: TextStyle(
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
                const Row(
                  children: [
                    Text(
                      'Number of People',
                      style: TextStyle(
                        color: Color(0xFF30879B),
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '2 People',
                      textAlign: TextAlign.right,
                      style: TextStyle(
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
                            prefixIcon: Transform.rotate(
                                angle: 12,
                                child: Icon(Icons.attachment_outlined,color: Color(0xff8A96B3),)),
                            hintText: "Message",
                            hintStyle: TextStyle(color:Color(0xff8A96B3),fontSize: 11,),
                            suffixIcon: Icon(Icons.emoji_emotions_outlined,color:Color(0xff8A96B3)),
                            fillColor: Color(0xff17181C)
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
                          color: Color(0xFF30879B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.97),
                          ),
                        ),
                        child: Icon(Icons.send,color: Colors.white,size: 19,),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

