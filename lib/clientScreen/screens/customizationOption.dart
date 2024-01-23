import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/clientAuth/clientAuthController/clientAuthController.dart';
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
                            controller.toggleCustomization('Meet & Greet');
                            // controller.toggl(0);
                          },
                          child: Container(
                            width: 165,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isCustomizationSelected('Meet & Greet')
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
                                Icon(controller.isCustomizationSelected('Meet & Greet') ? Icons.done : Icons.add, color: Colors.white,),

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
                            controller.toggleCustomization('Event');
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              width: 139,
                              height: 48,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 13),
                              decoration: ShapeDecoration(
                                color: controller.isCustomizationSelected('Event')
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
                                  Icon(controller.isCustomizationSelected('Event') ? Icons.done : Icons.add, color: Colors.white,),

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
                            controller.toggleCustomization('Luxury');
                          },
                          child: Container(
                            width: 115,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isCustomizationSelected('Luxury')
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
                                Icon(controller.isCustomizationSelected('Luxury') ? Icons.done : Icons.add, color: Colors.white,),

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
                            controller.toggleCustomization('Cultural');
                          },
                          child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 122,
                                height: 48,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 13),
                                decoration: ShapeDecoration(
                                  color: controller.isCustomizationSelected('Cultural')
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
                                    Icon(controller.isCustomizationSelected('Cultural') ? Icons.done : Icons.add, color: Colors.white,),

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
                            controller.toggleCustomization('Cuisines');
                          },
                          child: Container(
                            width: 127,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isCustomizationSelected('Cuisines')
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
                                Icon(controller.isCustomizationSelected('Cuisines') ? Icons.done : Icons.add, color: Colors.white,),
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
                            controller.toggleCustomization('Fine Dining');

                          },
                          child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 144,
                                height: 48,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 13),
                                decoration: ShapeDecoration(
                                  color: controller.isCustomizationSelected('Fine Dining')
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
                                    Icon(controller.isCustomizationSelected('Fine Dining') ? Icons.done : Icons.add, color: Colors.white,),

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
                            controller.toggleCustomization('Casual');
                          },
                          child: Container(
                            width: 114,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isCustomizationSelected('Casual')
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
                                Icon(controller.isCustomizationSelected('Casual') ? Icons.done : Icons.add, color: Colors.white,),

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
                            controller.toggleCustomization('Vegan');
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 3.0),
                            child: Container(
                              width: 111,
                              height: 48,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 13),
                              decoration: ShapeDecoration(
                                color: controller.isCustomizationSelected('Vegan')
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
                                  Icon(controller.isCustomizationSelected('Vegan') ? Icons.done : Icons.add, color: Colors.white,),

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
                            controller.toggleCustomization('Spa');
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
                                color: controller.isCustomizationSelected('Spa')
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
                                  Icon(controller.isCustomizationSelected('Spa') ? Icons.done : Icons.add, color: Colors.white,),
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
                            controller.toggleCustomization('Yoga');
                          },
                          child: Container(
                            width: 102,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isCustomizationSelected('Yoga')
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
                                Icon(controller.isCustomizationSelected('Yoga') ? Icons.done : Icons.add, color: Colors.white,),

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
                            controller.toggleCustomization('Meditation');
                          },
                          child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 142,
                                height: 48,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 13),
                                decoration: ShapeDecoration(
                                  color: controller.isCustomizationSelected('Meditation')
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
                                    Icon(controller.isCustomizationSelected('Meditation') ? Icons.done : Icons.add, color: Colors.white,),

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
                            controller.toggleCustomization('Occasions');
                          },
                          child: Container(
                            width: 140,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isCustomizationSelected('Occasions')
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
                                Icon(controller.isCustomizationSelected('Occasions') ? Icons.done : Icons.add, color: Colors.white,),

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
                            controller.toggleCustomization('Types of Gifts');
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              width: 164,
                              height: 48,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 13),
                              decoration: ShapeDecoration(
                                color: controller.isCustomizationSelected('Types of Gifts')
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
                                  Icon(controller.isCustomizationSelected('Types of Gifts') ? Icons.done : Icons.add, color: Colors.white,),

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
                        onTap: () async{
                          ClientAuthController _controller = Get.put(ClientAuthController());
                          _controller.clientModel.value.interestSecond = controller.selectedCustomization.value;
                          _controller.firstTimeDataStore();
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
