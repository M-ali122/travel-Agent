import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../res/icons/svg.dart';
import '../../clientHome/view/clientHome.dart';

class ClientNavbar extends StatefulWidget {
  static const String route = 'ClientBottomNavBar';

  const ClientNavbar({Key? key}) : super(key: key);

  @override
  State<ClientNavbar> createState() => _ClientNavbarState();
}

class _ClientNavbarState extends State<ClientNavbar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ClientHome(),
    Text("Profile Screen"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 16),
          alignment: Alignment.center,
          child: _pages[_currentIndex],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90.h,
        width: 375.w,
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Color(0xff090A0B),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildIconButton(0, Svgs.requests, "Requests"),
              buildIconButton(1, Svgs.profile, "Profile"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.string(Svgs.image),
        shape: CircleBorder(),
      ),
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
        padding: EdgeInsets.all(2.0),
        child: Column(
          children: [
            SizedBox(
              height: 17.h,
            ),
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
}
