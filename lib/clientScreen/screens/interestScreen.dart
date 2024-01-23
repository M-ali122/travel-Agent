import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/screens/controller/DataCollectionController.dart';
import 'package:travelagentapp/helpers/views/button.dart';

import '../clientAuth/clientAuthController/clientAuthController.dart';
import 'customizationOption.dart';

class InterestScreen extends GetWidget<DataCollectionController> {
  static String route = 'IneterestScreen';
  const InterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DataCollectionController>(
      init:  DataCollectionController(),
      builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Get.back();
            }, icon: const Icon(Icons.arrow_back_ios_new_rounded,size: 24,color: Colors.white, ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0,right: 16),
          child: ListView(
            children: [
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
                      GestureDetector(
                        onTap: (){
                          controller.toggleInterest('Meet & Greet');
                        },
                        child: Container(
                          width: 181,
                          height: 48,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                          decoration: ShapeDecoration(
                            color: controller.isInterestSelected('Meet & Greet') ? const Color(0xFF30879B) : Colors.transparent,
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
                              Icon(controller.isInterestSelected('Meet & Greet') ? Icons.done : Icons.add, color: Colors.white,),

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
                      ),
                      GestureDetector(
                        onTap: (){
                          controller.toggleInterest("Event");
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            width: 128,
                            height: 48,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isInterestSelected('Event') ? const Color(0xFF30879B) : Colors.transparent,
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
                                Icon(controller.isInterestSelected('Event') ? Icons.done : Icons.add, color: Colors.white,),

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
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          controller.toggleInterest('Travel');
                        },
                        child: Container(
                          width: 131,
                          height: 48,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                          decoration: ShapeDecoration(
                            color: controller.isInterestSelected('Travel') ? const Color(0xFF30879B) : Colors.transparent,
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
                              Icon(controller.isInterestSelected('Travel') ? Icons.done : Icons.add, color: Colors.white,),
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
                      ),
                      GestureDetector(
                        onTap: (){
                          controller.toggleInterest('Transport');
                        },
                        child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              width: 157,
                              height: 48,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                              decoration: ShapeDecoration(
                                color: controller.isInterestSelected('Transport') ? const Color(0xFF30879B) : Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFF30879B)),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child:  Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(controller.isInterestSelected('Transport') ? Icons.done : Icons.add, color: Colors.white,),
                                  const Text(
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
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          controller.toggleInterest('Dining');
                        },
                        child: Container(
                          width: 133,
                          height: 48,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                          decoration: ShapeDecoration(
                            color: controller.isInterestSelected('Dining') ? const Color(0xFF30879B) : Colors.transparent,
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
                              Icon(controller.isInterestSelected('Dining') ? Icons.done : Icons.add, color: Colors.white,),
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
                      ),
                      GestureDetector(
                        onTap: (){
                          controller.toggleInterest('Wellness');

                        },
                        child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              width: 151,
                              height: 48,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                              decoration: ShapeDecoration(
                                color: controller.isInterestSelected('Wellness') ? const Color(0xFF30879B) : Colors.transparent,
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
                                  Icon(controller.isInterestSelected('Wellness') ? Icons.done : Icons.add, color: Colors.white,),

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
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          controller.toggleInterest('Gifting');
                        },
                        child: Container(
                          width: 136,
                          height: 48,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                          decoration: ShapeDecoration(
                            color: controller.isInterestSelected('Gifting') ? const Color(0xFF30879B) : Colors.transparent,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFF30879B)),
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          child:  Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(controller.isInterestSelected('Gifting') ? Icons.done : Icons.add, color: Colors.white,),

                              const Text(
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
                      ),
                      GestureDetector(
                        onTap: (){
                          controller.toggleInterest('others');
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            width: 133,
                            height: 48,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                            decoration: ShapeDecoration(
                              color: controller.isInterestSelected('others') ? const Color(0xFF30879B) : Colors.transparent,
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
                                Icon(controller.isInterestSelected('others') ? Icons.done : Icons.add, color: Colors.white,),
                                const Text(
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
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 80.h,),
                  AppButton(
                      title: 'Next', onTap: (){
                    ClientAuthController _controller = Get.put(ClientAuthController());
                    _controller.clientModel.value.interest = controller.selectedInterests.value;
                    _controller.firstTimeDataStore();
                    Get.toNamed(Customization.route);
                  }),
                  SizedBox(height: 20.h,),
                ],
              ),
            ],
          ),
        ),
      );
    },);
  }
}

