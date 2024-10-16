import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/pages/home/view/homeView.dart';
import 'package:travelagentapp/pages/profile/view/scheduleUnavailabilty.dart';
import 'package:travelagentapp/pages/splash/screens/account_type.dart';

import 'clientchangePassword.dart';

class CLientProfileSetting extends StatelessWidget {
  static String route = 'CLientProfileSetting';
  const CLientProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 30.h,),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new,color: Colors.white,)
              ),
              const Padding(
                padding: EdgeInsets.only(left: 110.0),
                child: Text(
                  'Setting',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                    height: 0.06,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 17.h,),
          Container(
            width: 375,
            height: 1,
            decoration: const BoxDecoration(color: Color(0xFF1E2025)),
          ),
          SizedBox(height: 24.h,),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'ACCOUNT SETTINGS',
              style: TextStyle(
                color: Color(0xFF9CA3AF),
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 0.08,
              ),
            ),
          ),
          SizedBox(height: 11.h,),
          Container(
            width: 375,
            height: 150,
            decoration: const BoxDecoration(
              color: Color(0xFF1B1C21),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment. center,
                children: [
                  SizedBox(height: 10.h,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
                    ],
                  ),
                  const Divider(thickness: 1,color: Color.fromRGBO(174, 176, 180, 0.2)),
                  InkWell(
                    onTap: (){
                      Get.toNamed(ClientChangePassword.route);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // TextButton(
                        //   onPressed:() {
                        //   Get.toNamed(ClientChangePassword.route);
                        // }, child:
                        Text(
                          'Change Password ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
                      ],
                    ),
                  ),
                  const Divider(thickness: 1,color: Color.fromRGBO(174, 176, 180, 0.2)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Update Location',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
                    ],
                  ),
                  const Divider(thickness: 1,color: Color.fromRGBO(174, 176, 180, 0.2)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.toNamed(Schedule.route);
                        },
                        child: const Text(
                          'Schedule Unavailability',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0.07,
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
                    ],
                  ),
                  const Divider(thickness: 1,color: Color.fromRGBO(174, 176, 180, 0.2)),
                ],
              ),
            ),
          ),

          // Communication Preferences

          // SizedBox(height: 32.h,),
          // const Padding(
          //   padding: EdgeInsets.only(left: 16.0),
          //   child: Text(
          //     'COMMUNICATION PREFERENCE',
          //     style: TextStyle(
          //       color: Color(0xFF9CA3AF),
          //       fontSize: 14,
          //       fontFamily: 'SF Pro Display',
          //       fontWeight: FontWeight.w400,
          //       height: 0.08,
          //     ),
          //   ),
          // ),
          // SizedBox(height: 11.h,),
          // Container(
          //   width: 375.w,
          //   height: 76.h,
          //   decoration: const BoxDecoration(
          //     color: Color(0xFF1B1C21),
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 16.0,right: 16),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         SizedBox(height: 1.h,),
          //         const Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Text(
          //               'Notification Settings',
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 14,
          //                 fontFamily: 'SF Pro Display',
          //                 fontWeight: FontWeight.w400,
          //                 height: 0.07,
          //               ),
          //             ),
          //             Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
          //           ],
          //         ),
          //         const Divider(thickness: 1,color: Color.fromRGBO(174, 176, 180, 0.2)),
          //         const Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Text(
          //               'Language Settings ',
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 14,
          //                 fontFamily: 'SF Pro Display',
          //                 fontWeight: FontWeight.w400,
          //                 height: 0.07,
          //               ),
          //             ),
          //             Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          //Preferences Management

          SizedBox(height: 32.h,),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'PREFERENCES MANAGEMENT',
              style: TextStyle(
                color: Color(0xFF9CA3AF),
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 0.08,
              ),
            ),
          ),
          SizedBox(height: 11.h,),
          Container(
            width: 375.w,
            height: 76.h,
            decoration: const BoxDecoration(
              color: Color(0xFF1B1C21),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.h,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Service Preferences',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
                    ],
                  ),
                  const Divider(thickness: 1,color: Color.fromRGBO(174, 176, 180, 0.2)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Customization Options',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Notification Management
          // SizedBox(height: 32.h,),
          // const Padding(
          //   padding: EdgeInsets.only(left: 16.0),
          //   child: Text(
          //     'NOTIFICATION MANAGEMENT',
          //     style: TextStyle(
          //       color: Color(0xFF9CA3AF),
          //       fontSize: 14,
          //       fontFamily: 'SF Pro Display',
          //       fontWeight: FontWeight.w400,
          //       height: 0.08,
          //     ),
          //   ),
          // ),
          // SizedBox(height: 11.h,),
          // Container(
          //   width: 375.w,
          //   height: 76.h,
          //   decoration: const BoxDecoration(
          //     color: Color(0xFF1B1C21),
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 16.0,right: 16),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         SizedBox(height: 1.h,),
          //         const Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Text(
          //               'Notification Preferences',
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 14,
          //                 fontFamily: 'SF Pro Display',
          //                 fontWeight: FontWeight.w400,
          //                 height: 0.07,
          //               ),
          //             ),
          //             Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
          //           ],
          //         ),
          //         const Divider(thickness: 1,color: Color.fromRGBO(174, 176, 180, 0.2)),
          //         const Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Text(
          //               'Customization Options',
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 14,
          //                 fontFamily: 'SF Pro Display',
          //                 fontWeight: FontWeight.w400,
          //                 height: 0.07,
          //               ),
          //             ),
          //             Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),


          // Privacy
          SizedBox(height: 32.h,),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child:  Text(
              'PRIVACY',
              style: TextStyle(
                color: Color(0xFF9CA3AF),
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 0.08,
              ),
            ),
          ),
          SizedBox(height: 11.h,),
          Container(
            width: 375.w,
            height: 76.h,
            decoration: const BoxDecoration(
              color: Color(0xFF1B1C21),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.h,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
                    ],
                  ),
                  const Divider(thickness: 1,color: Color.fromRGBO(174, 176, 180, 0.2)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
                    ],
                  ),
                ],
              ),
            ),
          ),



          // SUPPORT AND HELP
          SizedBox(height: 32.h,),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'SUPPORT AND HELP',
              style: TextStyle(
                color: Color(0xFF9CA3AF),
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 0.08,
              ),
            ),
          ),
          SizedBox(height: 11.h,),
          Container(
            width: 375.w,
            height: 76.h,
            decoration: const BoxDecoration(
              color: Color(0xFF1B1C21),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.h,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'FAQs/Help Center',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
                    ],
                  ),
                  const Divider(thickness: 1,color: Color.fromRGBO(174, 176, 180, 0.2)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Contact Support',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
                    ],
                  ),
                ],
              ),
            ),
          ),



          // OTHERS
          SizedBox(height: 32.h,),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'OTHERS',
              style: TextStyle(
                color: Color(0xFF9CA3AF),
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 0.08,
              ),
            ),
          ),
          SizedBox(height: 11.h,),
          Container(
            width: 375.w,
            height: 76.h,
            decoration: const BoxDecoration(
              color: Color(0xFF1B1C21),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.h,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Deactivate this account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
                    ],
                  ),
                  const Divider(thickness: 1,color: Color.fromRGBO(174, 176, 180, 0.2)),
                  // GestureDetector(
                  //   onTap: (){
                  //     final box = GetStorage();
                  //     Get.defaultDialog(
                  //       title: 'Log Out',
                  //       titleStyle: const TextStyle(
                  //         color: Colors.white,
                  //         fontWeight: FontWeight.w300
                  //       ),
                  //       content: const Text('Are you sure to log Out'),
                  //       confirmTextColor: Colors.white,
                  //       cancelTextColor: Colors.white,
                  //       onConfirm: () {
                  //         box.remove('uid');
                  //         Get.offAll(Get.offAllNamed(AccountTypeScreen.route));
                  //
                  //       },
                  //       backgroundColor: const Color(0xFF1B1C21),
                  //       onCancel: () {
                  //         Get.back();
                  //       },
                  //     );
                  //   },
                  //   child: const Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         'Logout',
                  //         style: TextStyle(
                  //           color: Color(0xFFEB5757),
                  //           fontSize: 14,
                  //           fontFamily: 'SF Pro Display',
                  //           fontWeight: FontWeight.w400,
                  //           height: 0.07,
                  //         ),
                  //       ),
                  //       Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
                  //     ],
                  //   ),
                  // ),
                  InkWell(
                    onTap: () {
                      final box = GetStorage();
                      Get.defaultDialog(
                        title: 'Log Out',
                        titleStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                        ),
                        content: const Text('Are you sure you want to log out?'),
                        confirmTextColor: Colors.white,
                        cancelTextColor: Colors.white,
                        onConfirm: () {
                          box.remove('uid');
                          Get.offAll(Get.offAllNamed(AccountTypeScreen.route));
                        },
                        backgroundColor: const Color(0xFF1B1C21),
                        onCancel: () {
                          Get.back();
                        },
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Logout',
                          style: TextStyle(
                            color: Color(0xFFEB5757),
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0.07,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 12, color: Colors.white,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h,),
        ],
      ),
    );
  }
}
