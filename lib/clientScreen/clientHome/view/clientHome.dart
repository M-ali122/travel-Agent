import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelagentapp/res/icons/svg.dart';

class ClientHome extends StatelessWidget {
  const ClientHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(22, 23, 27, 1),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            width: 44,
            height: 44,
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.05000000074505806),
              shape: OvalBorder(),
            ),
            child: Icon(Icons.person,color: Color.fromRGBO(255, 255, 255, 0.05),
          ),
          ),
        ),
        title: Container(
          width: 150,
          height: 36,
          decoration: ShapeDecoration(
            color: Color(0xFF30879B),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Center(
            child: Text(
              'Become a Member',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: 0.30,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(
                    width: 1.67,
                    color: Colors.white.withOpacity(0.09000000357627869),
                  ),
                ),
              ),
              child: Center(
                child: SvgPicture.string(Svgs.clientMessageIcon,),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: ListView(
          children: [
            SizedBox(height: 16.h,),
            Container(
              width: 343,
              height: 1,
              decoration: BoxDecoration(color: Color(0xFF24262D)),
            ),
            SizedBox(height: 20.h,),
            Text(
              'Explore',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
                height: 0.07,
              ),
            )
          ],
        ),
      ),
    );
  }
}
