import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:travelagentapp/pages/profile/controller/profileController.dart';

import '../../../res/dark_theme.dart';
import 'editProfile.dart';
import 'profileSetting.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text(
              'Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.07000000029802322),
                    shape: const OvalBorder(),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Get.toNamed(ProfileSetting.route);
                    },
                    icon: const Center(
                      child: Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                      ),
                    ),
                    padding: const EdgeInsets.only(bottom: 3.8, top: 4),
                  ),
                ),
              ),
            ],
          ),
          body: ListView(
            children: [
              SizedBox(
                height: 18.h,
              ),
              Container(
                width: 375,
                height: 260,
                decoration: const BoxDecoration(color: Color(0xFF1B1C21)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        controller.loadUserModel.value.profile == null
                            ? controller.loadUserModel.value.profile!= null
                                ? Container(
                                    width: 120,
                                    height: 120,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.contain,
                                        image: NetworkImage(controller.loadUserModel.value.profile)
                                      ),
                                      shape: const OvalBorder(
                                        side: BorderSide(
                                            width: 4.98,
                                            color: Color(0x304E7B86)),
                                      ),
                                    ),
                                  )
                                : const CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/emoji/profile2.png'),
                                    radius: 60,
                                  )
                            : Container(
                                width: 120,
                                height: 120,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(controller
                                          .loadUserModel.value.profile)),
                                  shape: const OvalBorder(
                                    side: BorderSide(
                                        width: 4.98, color: Color(0x304E7B86)),
                                  ),
                                ),
                              ),
                        InkWell(
                          onTap: () {
                            controller.picImage();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 105, top: 45),
                            child: Container(
                                width: 30,
                                height: 30,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF30879B),
                                  shape: OvalBorder(),
                                ),
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 17,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '${controller.loadUserModel.value.name}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      width: 297,
                      child: Text(
                        '"Crafting bespoke experiences for your lifestyle.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(EditProfile.route);
                      },
                      child: Container(
                        width: 105,
                        height: 28,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF30879B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.31),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.edit_outlined,
                              size: 10,
                              color: Colors.white,
                            ),
                            Text(
                              'Edit Profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11.35,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0.11,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: SizedBox(
                  width: 343,
                  child: Text(
                    'Your Progress',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 0.06,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 5.0,
                    percent: 0.70,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '70%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        const Text(
                          '/100',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    progressColor: DarkTheme.primary,
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: const Color(0xff38393D),
                    backgroundWidth: 1,
                  ),
                  CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 5.0,
                    percent: 0.90,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '90%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        const Text(
                          '/100',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    progressColor: DarkTheme.primary,
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: const Color(0xff38393D),
                    backgroundWidth: 1,
                  ),
                  CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 5.0,
                    percent: 0.93,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '93%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        const Text(
                          '/100',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    progressColor: DarkTheme.primary,
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: const Color(0xff38393D),
                    backgroundWidth: 1,
                  ),
                  CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 5.0,
                    percent: 0.85,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '4.5%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        const Text(
                          '/5.0',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    progressColor: DarkTheme.primary,
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: const Color(0xff38393D),
                    backgroundWidth: 1,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Response \nRate',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Text(
                      'Request\nCompletion',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Text(
                      'On time\nRequests',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  Text(
                    'Private \nRating',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 376,
                height: 4,
                decoration: const BoxDecoration(color: Color(0xFF1E2025)),
              ),
              SizedBox(
                height: 16.h,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Expertise',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w600,
                        height: 0.06,
                      ),
                    ),
                    Text(
                      'Add New',
                      style: TextStyle(
                        color: Color(0xFF30879B),
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: 343,
                height: 80,
                decoration: ShapeDecoration(
                  color: const Color(0xFF191B20),
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.20, color: Color(0x4C808080)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 61,
                          height: 24,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFF404249)),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Travel',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  height: 0.09,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 61,
                          height: 24,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFF404249)),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Events',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  height: 0.09,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 77,
                          height: 24,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFF404249)),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Wallness',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  height: 0.09,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 102,
                          height: 24,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFF404249)),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Meet & Greet',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  height: 0.09,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8),
                          child: Container(
                            width: 81,
                            height: 24,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFF404249)),
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Transport',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8),
                          child: Container(
                            width: 63,
                            height: 24,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFF404249)),
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Gifting',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8),
                          child: Container(
                            width: 77,
                            height: 24,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFF404249)),
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Dining',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 41.h,
              ),
            ],
          ),
        );
      },
    );
  }
}
