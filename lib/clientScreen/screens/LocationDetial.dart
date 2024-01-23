import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/screens/controller/DataCollectionController.dart';
import 'package:travelagentapp/helpers/views/button.dart';
import 'package:travelagentapp/res/dark_theme.dart';

import '../../res/icons/svg.dart';
import '../clientScreenNavbar/view/ClientScreenNavbar.dart';

class LocationDetail extends GetWidget<DataCollectionController> {
  static String route = 'LocationDetail';

  const LocationDetail({Key? key}) : super(key: key);

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
                )),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: ListView(
              children: [
                SizedBox(
                  height: 24.h,
                ),
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
                SizedBox(
                  height: 20.h,
                ),
                const Text(
                  'Useful for location-based recommendations or services\nlike transportation and local events.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 65.h,
                ),
                Container(
                  width: 300,
                  height: 300,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF181A1F),
                    shape: OvalBorder(),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 26.h,
                      ),
                      SvgPicture.string(Svgs.locationIcon),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: 111.27,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text(
                                'CURRENT LOCATION',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Text(
                              'CITY, COUNTRY',
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
                SizedBox(
                  height: 100.h,
                ),
                AppButton(title: 'Use my location', onTap: () {

                  controller.getLocation();
                  Get.offAllNamed(ClientNavbar.route);
                }),
                SizedBox(
                  height: 10.h,
                ),
                TextButton(
                  onPressed: () {
                    Get.offAllNamed(ClientNavbar.route);
                  },
                  child: const Text(
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
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
