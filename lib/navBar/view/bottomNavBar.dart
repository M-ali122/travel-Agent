// import 'package:travelagentapp/pages/client/viewClient.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// import '../../pages/chet/view/inbox.dart';
// import '../../pages/home/view/homeView.dart';
// import '../../pages/profile/view/profileScreen.dart';
// import '../../pages/request/view/viewRequest.dart';
// import '../../res/icons/svg.dart';
//

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../res/icons/svg.dart';
import '../controller/navBarController.dart';

class BottomnavBar extends GetWidget<BottomNavController> {
  static const String route = 'BNavBar';
  const BottomnavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      init: BottomNavController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 16),
              alignment: Alignment.center,
              child: controller.pages[controller.currentIndex.value],
            ),
          ),
          bottomNavigationBar: Container(
            height: 90.h,
            width: 375.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24), topLeft: Radius.circular(24)),
              color: Color(0xff090A0B),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              //   buildIconButton(0, Svgs.home, "Home"),
              //   buildIconButton(1, Svgs.requests, "Requests"),
              //   buildIconButton(2, Svgs.clients, "Clients"),
              //   buildIconButton(3, Svgs.messages, "Messages"),
              //   buildIconButton(4, Svgs.profile, "Profile"),

                GestureDetector(
                  onTap: () {
                    controller.changePage(0);
                  },
                  child: Container(
                    padding: EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 17.h,
                        ),
                        SvgPicture.string(
                          Svgs.home,
                          color: controller.currentIndex.value == 0 ? Colors.white : Color(0xff5E5E67),
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 11,
                            color: controller.currentIndex.value == 0
                                ? Colors.white
                                : Color(0xff5E5E67),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                    print("jsda");
                    controller.changePage(1);
                  },
                  child: Container(
                    padding: EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 17.h,
                        ),
                        SvgPicture.string(
                          Svgs.requests,
                          color: controller.currentIndex.value == 1 ? Colors.white : Color(0xff5E5E67),
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Requests",
                          style: TextStyle(
                            fontSize: 11,
                            color: controller.currentIndex.value == 1
                                ? Colors.white
                                : Color(0xff5E5E67),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                    print("jsda");
                    controller.changePage(2);

                  },
                  child: Container(
                    padding: EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 17.h,
                        ),
                        SvgPicture.string(
                          Svgs.clients,
                          color: controller.currentIndex.value == 2 ? Colors.white : Color(0xff5E5E67),
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Clients",
                          style: TextStyle(
                            fontSize: 11,
                            color: controller.currentIndex.value == 2
                                ? Colors.white
                                : Color(0xff5E5E67),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.changePage(3);
                  },
                  child: Container(
                    padding: EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 17.h,
                        ),
                        SvgPicture.string(
                          Svgs.messages,
                          color: controller.currentIndex.value == 3 ? Colors.white : Color(0xff5E5E67),
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Messages",
                          style: TextStyle(
                            fontSize: 11,
                            color: controller.currentIndex.value == 3
                                ? Colors.white
                                : Color(0xff5E5E67),
                          ),
                        )
                      ],
                    ),
                  ),
                ),


                GestureDetector(
                  onTap: () {

                    controller.changePage(4);

                  },
                  child: Container(
                    padding: EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 17.h,
                        ),
                        SvgPicture.string(
                          Svgs.profile,
                          color: controller.currentIndex.value == 4 ? Colors.white : Color(0xff5E5E67),
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 11,
                            color: controller.currentIndex.value == 4
                                ? Colors.white
                                : Color(0xff5E5E67),
                          ),
                        )
                      ],
                    ),
                  ),
                ),



              ],
            ),
          ),
        );
      },
    );
  }
  // Widget buildIconButton(int index, String iconName, String title) {
  //   return GestureDetector(
  //     onTap: () {
  //
  //       print("jsda");
  //       print(index);
  //       controller.changePage(index);
  //       // setState(() {
  //       //   _currentIndex = index;
  //       // });
  //     },
  //     child: Container(
  //       padding: EdgeInsets.all(2.0),
  //       child: Column(
  //         children: [
  //           SizedBox(
  //             height: 17.h,
  //           ),
  //           SvgPicture.string(
  //             iconName,
  //             // color: _currentIndex == index ? Colors.white : Color(0xff5E5E67),
  //             height: 24.h,
  //             width: 24.w,
  //           ),
  //           Text(
  //             title,
  //             style: TextStyle(
  //               fontSize: 11,
  //               // color: _currentIndex == index
  //               //     ? Colors.white
  //               //     : Color(0xff5E5E67),
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

}

