import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../res/icons/svg.dart';
import 'clientHistory.dart';

class ViewClient extends StatelessWidget {
   ViewClient({Key? key});

   var clientName = [
     'Faizan Ahmend',
     'Sarah Shahi',
     'Cooper Saris',
     'Zaire Schleifer',
     'Jaydon Rhiel Madsen',
     'Cristofer Korsgaard',
     'Angel Saris',
     'Marley Franci'
   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: ListView(
            children: [
              SizedBox(height: 16.h),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 130.0),
                    child: Text(
                      'Clients',
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
                  Spacer(),
                  SvgPicture.string(Svgs.clientPageIcon),
                ],
              ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, size: 20, color: Color(0xff6B7280)),
                      hintText: 'Search clients',
                      hintStyle: TextStyle(color: Color(0xff6B7280,), fontSize: 12)),
                ),
              ),
              SizedBox(height: 29.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed(ClientHistory.route);
                },
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: clientName.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: SizedBox(
                            width: 130.38,
                            child: Text(
                              '${clientName[index]}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0.06,
                              ),
                            ),
                          ),
                          subtitle: SizedBox(
                            width: 172,
                            child: Text(
                              'example-email@gmail.com',
                              style: TextStyle(
                                color: Color(0xFF9CA3AF),
                                fontSize: 13,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0.07,
                              ),
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFF242529),
                                    shape: OvalBorder(),
                                  ),
                                  child:  Center(
                                    child: SvgPicture.string(Svgs.chetIcon),
                                  ),
                                  ),
                                ),
                              SizedBox(width: 16),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFF242529),
                                    shape: OvalBorder(),
                                  ),
                                  child: const Center(
                                    child: Icon(Icons.more_horiz,color: Color(0xffFFFFFF),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(thickness: 1,color: Color(0xff24272D)),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
