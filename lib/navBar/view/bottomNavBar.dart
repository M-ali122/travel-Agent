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
import '../../pages/home/view/homeView.dart';
import '../../pages/request/view/viewRequest.dart';
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
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SvgPicture.string(
                        Svgs.home, // Use the provided iconName parameter
                        color:
                        // controller.currentIndex.value == index
                        //     ? Colors.white
                        //     :
                        Color(0xff5E5E67),
                        height: 24.h,
                        width: 24.w,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 11,
                            color:
                                // _currentIndex == index
                                //     ? Colors.white
                                //     :
                                Color(0xff5E5E67)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SvgPicture.string(
                        Svgs.requests, // Use the provided iconName parameter
                        color:
                        // controller.currentIndex.value == index
                        //     ? Colors.white
                        //     :
                        Color(0xff5E5E67),
                        height: 24.h,
                        width: 24.w,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 11,
                            color:
                            // _currentIndex == index
                            //     ? Colors.white
                            //     :
                            Color(0xff5E5E67)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SvgPicture.string(
                        Svgs.home, // Use the provided iconName parameter
                        color:
                        // controller.currentIndex.value == index
                        //     ? Colors.white
                        //     :
                        Color(0xff5E5E67),
                        height: 24.h,
                        width: 24.w,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 11,
                            color:
                            // _currentIndex == index
                            //     ? Colors.white
                            //     :
                            Color(0xff5E5E67)),
                      )
                    ],
                  ),
                ),

                // Icon(Icons.add),
                // Icon(Icons.add),
                // Icon(Icons.add), Icon(Icons.add), Icon(Icons.add),
                // buildIconButton(0, Svgs.home, "Home"),
                // buildIconButton(1, Svgs.requests, "Requests"),
                // buildIconButton(2, Svgs.clients, "Clients"),
                // buildIconButton(3, Svgs.messages, "Messages"),
                // buildIconButton(4, Svgs.profile, "Profile"),
              ],
            ),
          ),
        );
      },
    );
  }
}

// Widget buildIconButton(
//     int index,
//     String iconName,
//     String title,
//     ) {
//   return GestureDetector(
//     onTap: () {
//       controller.changePage(index);
//       // setState(() {
//       //   _currentIndex = index;
//       // });
//     },
//     child: Container(
//       padding: EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 17.h,
//           ),
//           SvgPicture.string(
//             iconName, // Use the provided iconName parameter
//             color: controller.currentIndex.value == index ? Colors.white : Color(0xff5E5E67),
//             height: 24.h,
//             width: 24.w,
//           ),
//           Text(
//             title,
//             style: TextStyle(
//                 fontSize: 11,
//                 color:
//                 // _currentIndex == index
//                 //     ? Colors.white
//                 //     :
//                 Color(0xff5E5E67)),
//           )
//         ],
//       ),
//     ),
//   );

// class BottomnavBar extends StatefulWidget {
//   static const String route = 'BottomNavBar';
//
//   const BottomnavBar({Key? key}) : super(key: key);
//
//   @override
//   State<BottomnavBar> createState() => _BottomnavBarState();
// }
//
// class _BottomnavBarState extends State<BottomnavBar> {
//   // int _currentIndex = 0;
//
//   // final List<Widget> _pages = [
//   //   HomeView(),
//   //   ViewRequest(),
//   //   ViewClient(),
//   //   Inbox(),
//   //   ProfileScreen(),
//   // ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Container(
//               padding: const EdgeInsets.only(top: 16),
//               alignment: Alignment.center,
//               child: _pages[_currentIndex])),
//       bottomNavigationBar: Container(
//         height: 90.h,
//         width: 375.w,
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(24), topLeft: Radius.circular(24)),
//           color: Color(0xff090A0B),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             buildIconButton(0, Svgs.home, "Home"),
//             buildIconButton(1, Svgs.requests, "Requests"),
//             buildIconButton(2, Svgs.clients, "Clients"),
//             buildIconButton(3, Svgs.messages, "Messages"),
//             buildIconButton(4, Svgs.profile, "Profile"),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget buildIconButton(
//     int index,
//     String iconName,
//     String title,
//   ) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _currentIndex = index;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 17.h,
//             ),
//             SvgPicture.string(
//               iconName, // Use the provided iconName parameter
//               color: _currentIndex == index ? Colors.white : Color(0xff5E5E67),
//               height: 24.h,
//               width: 24.w,
//             ),
//             Text(
//               title,
//               style: TextStyle(
//                   fontSize: 11,
//                   color: _currentIndex == index
//                       ? Colors.white
//                       : Color(0xff5E5E67)),
//             )
//           ],
//         ),
//       ),
//     );
//   }
