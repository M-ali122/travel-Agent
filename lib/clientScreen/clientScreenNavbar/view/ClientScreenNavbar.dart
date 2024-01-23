// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// import '../../../res/icons/svg.dart';
// import '../../ClientprofileScreen/clientProfileScreenView.dart';
// import '../../clientHome/view/clientHome.dart';
// import '../../clientRequestScreen/view/clientHistoryPage.dart';
//
// class ClientNavbar extends StatefulWidget {
//   static const String route = 'ClientBottomNavBar';
//
//   const ClientNavbar({Key? key}) : super(key: key);
//
//   @override
//   State<ClientNavbar> createState() => _ClientNavbarState();
// }
//
// class _ClientNavbarState extends State<ClientNavbar> {
//   int _currentIndex = 0;
//
//   final List<Widget> _pages = [
//     ClientHomeSreen(),
//     ClientPageRequest(),
//     ClientProfileScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       body: SafeArea(
//         child: Container(
//           padding: const EdgeInsets.only(top: 16),
//           alignment: Alignment.center,
//           child: _pages[_currentIndex],
//         ),
//       ),
//       bottomNavigationBar: Container(
//         height: 87,
//         child: BottomAppBar(
//           elevation: 0.3,
//           notchMargin: 5,
//           clipBehavior: Clip.antiAlias,
//           // color: Color(0xff090A0B),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               buildIconButton(1, Svgs.requests, "Requests"),
//               buildIconButton(2, Svgs.profile, "Profile"),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: _buildFloatingActionButton(0),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
//
//   Widget buildIconButton(int index, String iconName, String title) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _currentIndex = index;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.all(2.0),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 17.h,
//             ),
//             SvgPicture.string(
//               iconName,
//               color: _currentIndex == index ? Colors.white : Color(0xff5E5E67),
//               height: 24.h,
//               width: 24.w,
//             ),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 11,
//                 color: _currentIndex == index
//                     ? Colors.white
//                     : Color(0xff5E5E67),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildFloatingActionButton(int index,) {
//     if (_currentIndex == 0 || _currentIndex == 1 || _currentIndex == 2) {
//       return FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         child: SvgPicture.string(Svgs.image),
//         shape: CircleBorder(),
//       );
//     } else {
//       // Hide FloatingActionButton on other pages
//       return SizedBox.shrink();
//     }
//   }
//
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../res/icons/svg.dart';
import '../../ClientprofileScreen/clientProfileScreenView.dart';
import '../../clientHome/view/clientHome.dart';
import '../../clientRequestScreen/view/clientHistoryPage.dart';

class ClientNavbar extends StatefulWidget {
  static const String route = 'ClientBottomNavBar';

  const ClientNavbar({Key? key}) : super(key: key);

  @override
  State<ClientNavbar> createState() => _ClientNavbarState();
}

class _ClientNavbarState extends State<ClientNavbar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ClientHomeSreen(),
    ClientPageRequest(),
    ClientProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        padding: const EdgeInsets.only(top: 16),
        alignment: Alignment.center,
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 100,
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 28),
              child: SvgPicture.string(Svgs.bottomNabbar),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14.0),
            child: BottomAppBar(
              color: Colors.transparent,
              elevation: 0.3,
              //  notchMargin: 2,
              // clipBehavior: Clip.antiAlias,
              // color: Color(0xff090A0B),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildIconButton(1, Svgs.requests, "Requests"),
                  buildIconButton(2, Svgs.profile, "Profile"),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: _buildFloatingActionButton(0),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildIconButton(int index, String iconName, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.only(top: 12.2),
        child: Column(
          children: [
            SvgPicture.string(
              iconName,
              color: _currentIndex == index ? Colors.white : Color(0xff5E5E67),
              height: 24.h,
              width: 24.w,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                color: _currentIndex == index
                    ? Colors.white
                    : Color(0xff5E5E67),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFloatingActionButton(int index,) {
    if (_currentIndex == 0 || _currentIndex == 1 || _currentIndex == 2) {
      return Padding(
        padding: const EdgeInsets.only(top: 46.0),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _currentIndex = index;
            });
          },
          child: SvgPicture.string(Svgs.image),
          shape: CircleBorder(),
        ),
      );
    } else {
      // Hide FloatingActionButton on other pages
      return SizedBox.shrink();
    }
  }

}
