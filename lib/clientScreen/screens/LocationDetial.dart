import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/helpers/views/button.dart';
import 'package:travelagentapp/res/dark_theme.dart';

import '../../res/icons/svg.dart';
import '../clientScreenNavbar/view/ClientScreenNavbar.dart';

class LocationDetail extends StatefulWidget {

  static String route = 'LocationDetail';

  const LocationDetail({Key? key}) : super(key: key);

  @override
  State<LocationDetail> createState() => _LocationDetailState();
}

class _LocationDetailState extends State<LocationDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 24, color: Colors.white,)
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: ListView(
          children: [
            SizedBox(height: 24.h,),
            const Text(
              'LocationDetail',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
                height: 0.04,
              ),
            ),
            SizedBox(height: 20.h,),
            const Text(
              'Useful for location-based recommendations or services\nlike transportation and local events.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 65.h,),
            Container(
              width: 300,
              height: 300,
              decoration: ShapeDecoration(
                color: Color(0xFF181A1F),
                shape: OvalBorder(),
              ),
              child: Column(
                children: [
                  SizedBox(height: 26.h,),
                  SvgPicture.string(Svgs.locationIcon),
                  SizedBox(height: 20.h,),
                  Container(
                    width: 111.27,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text('CURRENT LOCATION',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                          ),
                        ),
                        Text('CITY, COUNTRY',
                          style: TextStyle(
                            color: DarkTheme.primary,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 100.h,),
            AppButton(
                title: 'Use my location',
                onTap: (){

                }
            ),
            SizedBox(height: 10.h,),
            TextButton(
                onPressed: () {
                  Get.toNamed(ClientNavbar.route);
                },
                child:Text(
                  'Skip for now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF9CA3AF),
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                  ),
                ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
