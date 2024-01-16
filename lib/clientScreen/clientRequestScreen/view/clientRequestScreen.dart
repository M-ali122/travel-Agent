import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/res/dark_theme.dart';

import '../../../res/icons/svg.dart';

class ClientRequestDetail extends StatelessWidget {
  static const String route = 'ClientRequestDetail';

  const ClientRequestDetail({super.key});

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
                  width: 70,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.05999999865889549),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Center(child: Text(
                    'Completed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF27AE60),
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
                  'Updates from your Manager',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                    height: 0.06,
                  ),
                ),
                const SizedBox(height: 17,),
                Container(
                  width: 343,
                  height: 213,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF1B1C21),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0x1919151C)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child:  Column(
                    children: [
                      SizedBox(height: 21.h,),
                      Text(
                        'Hey, Great News, I have arranged your 2\nDubai '
                            'tickets on requested time. I'
                            ' have \nattached them below. Thanks',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 13,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 36.0),
                          child: Text(
                            '10:30 AM',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: ShapeDecoration(
                                color: Color(0xFF24262D),
                                shape: OvalBorder(),
                              ),
                              child: Center(
                                child: Transform.rotate(
                                  angle: 19.7,
                                    child: Icon(Icons.attach_file,size: 16,color: DarkTheme.primary,)
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w,),
                            Text(
                              'Ticket 1',
                              style: TextStyle(
                                color: Color(0xFF30879B),
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0.08,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 11.h,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: ShapeDecoration(
                                color: Color(0xFF24262D),
                                shape: OvalBorder(),
                              ),
                              child: Center(
                                child: Transform.rotate(
                                    angle: 19.7,
                                    child: Icon(Icons.attach_file,size: 16,color: DarkTheme.primary,)
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w,),
                            Text(
                              'Ticket 2',
                              style: TextStyle(
                                color: Color(0xFF30879B),
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0.08,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
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

