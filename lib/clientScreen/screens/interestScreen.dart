import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/helpers/views/button.dart';

import 'customizationOption.dart';

class InterestScreen extends StatefulWidget {
  static String route = 'IneterestScreen';
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {

  // List<bool> isSelectedList = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16),
        child: ListView(
          children: [
            SizedBox(height: 20.h,),
             Align(
                 alignment: AlignmentDirectional.topStart,
                 child: IconButton(
                   onPressed: () {
                     Get.back();
                   }, icon: Icon(Icons.arrow_back_ios_new_rounded,size: 14,color: Colors.white, ),)),
            SizedBox(height: 24.h,),
            const Text(
              'Interest',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 14.h,),
            const Text(
              'Select the services that interest you the most. This will \nhelp us curate recommendations tailored just for you.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 14.h,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 181,
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF30879B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(200),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.done,color: Colors.white,),
                          SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset('assets/emoji/handshakeemoji.png',fit: BoxFit.cover)),
                          const Text(
                            'Meet & Greet',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFDFBF9),
                              fontSize: 15,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0.10,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 128,
                        height: 48,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF1B1D22),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1, color: Color(0xFF30879B)),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.add,color: Colors.white,),
                            SizedBox(
                                height: 10,
                                width: 10,
                                child: Image.asset('assets/emoji/event.png',fit: BoxFit.cover)),
                            const Text(
                              'Event',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0.10,
                                letterSpacing: -0.41,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 131,
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B1D22),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFF30879B)),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.add,color: Colors.white,),
                          Image.asset('assets/emoji/airplane.png'),
                          const SizedBox(width: 5),
                          const Text(
                            'Travel',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0.10,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 157,
                        height: 48,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF30879B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.done,color: Colors.white,),
                            Text(
                              '🚘  Transport',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFFDFBF9),
                                fontSize: 15,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0.10,
                                letterSpacing: -0.41,
                              ),
                            ),
                          ],
                        ),
                      )
                    )
                  ],
                ),
                SizedBox(height: 12.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 133,
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B1D22),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFF30879B)),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.add,color: Colors.white,),
                          Image.asset('assets/emoji/plate.png'),
                          SizedBox(width: 4.h,),
                          const Text(
                            'Dining',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0.10,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 151,
                        height: 48,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF1B1D22),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1, color: Color(0xFF30879B)),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.add,color: Colors.white,),
                            Image.asset('assets/emoji/maditation.png'),
                            SizedBox(width: 2.h,),
                            const Text(
                              'Wellness',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0.10,
                                letterSpacing: -0.41,
                              ),
                            ),
                          ],
                        ),
                      )
                    )
                  ],
                ),
                SizedBox(height: 12.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 136,
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B1D22),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFF30879B)),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.add,color: Colors.white,),
                          Text(
                            '🎁  Gifting',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0.10,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 133,
                        height: 48,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF1B1D22),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1, color: Color(0xFF30879B)),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.add,color: Colors.white,),
                            Text(
                              '❓ Others',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0.10,
                                letterSpacing: -0.41,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 100.h,),
                AppButton(
                    title: 'Next', onTap: (){
                      Get.toNamed(Customization.route);
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
