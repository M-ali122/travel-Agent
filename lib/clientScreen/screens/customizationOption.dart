import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/screens/controller/DataCollectionController.dart';
import 'package:travelagentapp/helpers/views/button.dart';

import 'languagePreferences.dart';

class Customization extends GetWidget<DataCollectionController> {
  static String route = 'Customization';
  const Customization({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DataCollectionController>(
      init: DataCollectionController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 24,
                color: Colors.white,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: ListView(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                const Text(
                  'Interest',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
                const Text(
                  'Select the services that interest you the most. This will \nhelp us curate recommendations tailored just for you.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.toggleCustomization(0);
                            // controller.toggl(0);
                          },
                          child: Container(
                            width: 165,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isCustomizationSelected(0)
                                  ? const Color(0xFF30879B)
                                  : Colors.transparent,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF30879B)),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(controller.isCustomizationSelected(0) ? Icons.done : Icons.add, color: Colors.white,),

                                SizedBox(
                                  width: 5.h,
                                ),
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
                        ),
                        GestureDetector(
                          onTap: (){
                            controller.toggleCustomization(1);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              width: 139,
                              height: 48,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 13),
                              decoration: ShapeDecoration(
                                color: controller.isCustomizationSelected(1)
                                    ? const Color(0xFF30879B)
                                    : Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0xFF30879B)),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(controller.isCustomizationSelected(1) ? Icons.done : Icons.add, color: Colors.white,),

                                  SizedBox(
                                    width: 2.h,
                                  ),
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
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            controller.toggleCustomization(2);
                          },
                          child: Container(
                            width: 115,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isCustomizationSelected(2)
                                  ? const Color(0xFF30879B)
                                  : Colors.transparent,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF30879B)),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            child:  Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(controller.isCustomizationSelected(2) ? Icons.done : Icons.add, color: Colors.white,),

                                const SizedBox(width: 5),
                                const Text(
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
                        ),
                        GestureDetector(
                          onTap: (){
                            controller.toggleCustomization(3);
                          },
                          child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 122,
                                height: 48,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 13),
                                decoration: ShapeDecoration(
                                  color: controller.isCustomizationSelected(3)
                                      ? const Color(0xFF30879B)
                                      : Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFF30879B)),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                                child:  Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(controller.isCustomizationSelected(3) ? Icons.done : Icons.add, color: Colors.white,),

                                    const SizedBox(width: 5),
                                    const Text(
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
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            controller.toggleCustomization(4);
                          },
                          child: Container(
                            width: 127,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isCustomizationSelected(4)
                                  ? const Color(0xFF30879B)
                                  : Colors.transparent,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF30879B)),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(controller.isCustomizationSelected(4) ? Icons.done : Icons.add, color: Colors.white,),
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
                        ),
                        GestureDetector(
                          onTap: (){
                            controller.toggleCustomization(5);

                          },
                          child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 144,
                                height: 48,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 13),
                                decoration: ShapeDecoration(
                                  color: controller.isCustomizationSelected(5)
                                      ? const Color(0xFF30879B)
                                      : Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFF30879B)),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                                child:  Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(controller.isCustomizationSelected(5) ? Icons.done : Icons.add, color: Colors.white,),

                                    const Text(
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
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            controller.toggleCustomization(6);
                          },
                          child: Container(
                            width: 114,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isCustomizationSelected(6)
                                  ? const Color(0xFF30879B)
                                  : Colors.transparent,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF30879B)),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(controller.isCustomizationSelected(6) ? Icons.done : Icons.add, color: Colors.white,),

                                SizedBox(
                                  width: 3.w,
                                ),
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
                        ),
                        GestureDetector(
                          onTap: (){
                            controller.toggleCustomization(7);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 3.0),
                            child: Container(
                              width: 111,
                              height: 48,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 13),
                              decoration: ShapeDecoration(
                                color: controller.isCustomizationSelected(7)
                                    ? const Color(0xFF30879B)
                                    : Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0xFF30879B)),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(controller.isCustomizationSelected(7) ? Icons.done : Icons.add, color: Colors.white,),

                                  const Text(
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
                        ),
                        GestureDetector(
                          onTap: (){
                            controller.toggleCustomization(8);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 4.0,
                            ),
                            child: Container(
                              width: 94,
                              height: 48,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 13),
                              decoration: ShapeDecoration(
                                color: controller.isCustomizationSelected(8)
                                    ? const Color(0xFF30879B)
                                    : Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0xFF30879B)),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child:  Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(controller.isCustomizationSelected(8) ? Icons.done : Icons.add, color: Colors.white,),
                                  const Text(
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
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            controller.toggleCustomization(9);
                          },
                          child: Container(
                            width: 102,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isCustomizationSelected(9)
                                  ? const Color(0xFF30879B)
                                  : Colors.transparent,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF30879B)),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            child:  Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(controller.isCustomizationSelected(9) ? Icons.done : Icons.add, color: Colors.white,),

                                const Text(
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
                        ),
                        GestureDetector(
                          onTap: (){
                            controller.toggleCustomization(10);
                          },
                          child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 142,
                                height: 48,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 13),
                                decoration: ShapeDecoration(
                                  color: controller.isCustomizationSelected(10)
                                      ? const Color(0xFF30879B)
                                      : Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFF30879B)),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                                child:  Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(controller.isCustomizationSelected(10) ? Icons.done : Icons.add, color: Colors.white,),

                                    const Text(
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
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            controller.toggleCustomization(11);
                          },
                          child: Container(
                            width: 140,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isCustomizationSelected(11)
                                  ? const Color(0xFF30879B)
                                  : Colors.transparent,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF30879B)),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            child:  Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(controller.isCustomizationSelected(11) ? Icons.done : Icons.add, color: Colors.white,),

                                const Text(
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
                        ),
                        GestureDetector(
                          onTap: (){
                            controller.toggleCustomization(12);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              width: 164,
                              height: 48,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 13),
                              decoration: ShapeDecoration(
                                color: controller.isCustomizationSelected(12)
                                    ? const Color(0xFF30879B)
                                    : Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0xFF30879B)),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child:  Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(controller.isCustomizationSelected(12) ? Icons.done : Icons.add, color: Colors.white,),

                                  const Text(
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
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Container(
                      width: 343,
                      height: 123,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B1C21),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0x1919151C)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 14.0, top: 13),
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
                     SizedBox(height: 26.h,),
                    AppButton(
                        title: 'Next',
                        onTap: () {
                          Get.toNamed(LanguagePrefence.route);
                        }),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
