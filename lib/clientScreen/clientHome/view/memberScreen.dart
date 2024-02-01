import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelagentapp/res/icons/svg.dart';

import '../../clientPageSvgs/clientPageSvgs.dart';

class BecomMemeber extends StatelessWidget {
  static String route = 'BecomeMember';
  const BecomMemeber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(22, 23, 27, 1),
        automaticallyImplyLeading: false,
        title: const Padding(
          padding:  EdgeInsets.only(left: 73.0),
          child: Column(
            children: [
              Text(
                'Lifestyle Manager',
                style: TextStyle(
                  color: Color(0xFF9CA3AF),
                  fontSize: 11,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,

                ),
              ),
              Text(
                'Zuhran Ahmad',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(
                    width: 1.67,
                    color: Colors.white.withOpacity(0.09000000357627869),
                  ),
                ),
              ),
              child: Center(
                child: SvgPicture.string(Svgs.clientMessageIcon,),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: ListView(
          children: [
            SizedBox(height: 16.h,),
            Container(
              width: 343,
              height: 1,
              decoration: const BoxDecoration(color: Color(0xFF24262D)),
            ),
            SizedBox(height: 20.h,),
            const Text(
              'Explore',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
                height: 0.07,
              ),
            ),
            SizedBox(height: 14.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SvgPicture.string(ClientSvgs.meetandGreetIcon),
                    SizedBox(height: 6.h,),
                    const Text(
                      'Meet & Greet',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.string(ClientSvgs.eventSvg),
                    SizedBox(height: 6.h,),
                    const Padding(
                      padding: EdgeInsets.only(left: 3.0),
                      child: Text(
                        'Events',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.string(ClientSvgs.travel),
                    SizedBox(height: 6.h,),
                    const Padding(
                      padding: EdgeInsets.only(left: 3.0),
                      child: Text(
                        'Travel',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.string(ClientSvgs.transportSvg),
                    SizedBox(height: 6.h,),
                    const Text(
                      'Transport',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 26.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SvgPicture.string(ClientSvgs.plateSvg),
                    SizedBox(height: 6.h,),
                    const Text(
                      'Dining',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.string(ClientSvgs.wellness),
                    SizedBox(height: 6.h,),
                    const Padding(
                      padding: EdgeInsets.only(left: 3.0),
                      child: Text(
                        'Wellness',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.string(ClientSvgs.gifiting),
                    SizedBox(height: 6.h,),
                    const Padding(
                      padding: EdgeInsets.only(left: 3.0),
                      child: Text(
                        'Gifting',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.string(ClientSvgs.others),
                    SizedBox(height: 6.h,),
                    const Text(
                      'Others',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16.03,),
            Container(
              width: 343,
              height: 1,
              decoration: const BoxDecoration(color: Color(0xFF24262D)),
            ),
            const SizedBox(height: 16.03,),
            const Text(
              'Recommended Feed',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
                height: 0.09,
              ),
            ),
            SizedBox(height: 16.h,),
            Container(
              width: 343,
              height: 220,
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.10000000149011612),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Align(
                    alignment:Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 14.0,top: 15),
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: ShapeDecoration(
                          color: Colors.black.withOpacity(0.6000000238418579),
                          shape: OvalBorder(),
                        ),
                        child: Center(
                          child: Icon(CupertinoIcons.heart,size: 16,color: Colors.white,),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                      height: 50.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        color: Color(0xff24272E),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: SvgPicture.string(ClientSvgs.travelIcon),
                          ),
                          SizedBox(width: 3.w,),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Travel to Dubai',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                    height: 0.12,
                                  ),
                                ),
                                SizedBox(height: 8.h,),
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 13.0,),
                                      child: Icon(CupertinoIcons.clock,size: 12,color: Colors.white,),
                                    ),
                                    SizedBox(width: 4.w,),
                                    Text(
                                      'Sat 9 Dec 07:00 AM',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Text(
                              'Request',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF30879B),
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0.12,
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            Container(
              width: 343,
              height: 220,
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.10000000149011612),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Align(
                    alignment:Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 14.0,top: 15),
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: ShapeDecoration(
                          color: Colors.black.withOpacity(0.6000000238418579),
                          shape: OvalBorder(),
                        ),
                        child: Center(
                          child: Icon(CupertinoIcons.heart,size: 16,color: Colors.white,),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                      height: 50.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        color: Color(0xff24272E),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: SvgPicture.string(ClientSvgs.yogaSvg),
                          ),
                          SizedBox(width: 3.w,),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Yoga Classes',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                    height: 0.12,
                                  ),
                                ),
                                SizedBox(height: 8.h,),
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 13.0,),
                                      child: Icon(CupertinoIcons.clock,size: 12,color: Colors.white,),
                                    ),
                                    SizedBox(width: 4.w,),
                                    Text(
                                      'Sat 9 Dec 07:00 AM',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Text(
                              'Request',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF30879B),
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0.12,
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
