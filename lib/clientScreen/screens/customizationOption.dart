import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/helpers/views/button.dart';

import 'languagePreferences.dart';

class Customization extends StatefulWidget {
  static String route = 'Customization';
  const Customization({super.key});

  @override
  State<Customization> createState() => _CustomizationState();
}

class _CustomizationState extends State<Customization> {

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
                      width: 155,
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
                          SizedBox(width: 5.h,),
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
                        width: 139,
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
                            SizedBox(width: 2 .h,),
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
                      width: 115,
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
                          SizedBox(width: 5),
                          Text(
                            'Luxury',
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
                          width: 122,
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
                              SizedBox(width: 5),
                              Text(
                                'Cultural',
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
                      width: 127,
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
                           SizedBox(width: 5.h),
                          const Text(
                            'Cuisines',
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
                          width: 144,
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
                                'Fine Dining',
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
                      width: 114,
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
                          SizedBox(width: 3.w,),
                          const Text(
                            'Casual',
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
                      padding: const EdgeInsets.only(left: 3.0),
                      child: Container(
                        width: 111,
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
                              'Vegan',
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0,),
                      child: Container(
                        width: 94,
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
                              'Spa',
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
                      width: 102,
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
                            'Yoga',
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
                        child:Container(
                          width: 142,
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
                                'Meditation',
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
                      width: 140,
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
                            'Occasions',
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
                          width: 164,
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
                                'Types of Gifts',
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
                SizedBox(height: 24.h,),
                Container(
                  width: 343,
                  height: 123,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF1B1C21),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0x1919151C)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 14.0,top: 13),
                    child: Text(
                      'Any specific interests not covered',
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 12,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 10.h,),
                AppButton(
                    title: 'Next', onTap: (){
                      Get.toNamed(LanguagePrefence.route);
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
