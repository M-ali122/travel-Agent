import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/clientPageSvgs/clientPageSvgs.dart';
import 'package:travelagentapp/helpers/views/button.dart';

import 'clientRequestScreen.dart';

class ClientPageSandRequest extends StatelessWidget {
  static String route = 'SandRequest';
  const ClientPageSandRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {

          },
          icon: const Icon(CupertinoIcons.back,size: 24,color: Colors.white,),
        ),
        title: const Text(
          'Send Requests',
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
      body: ListView(
        children: [
          Container(
            width: 376,
            height: 1,
            decoration: const BoxDecoration(color: Color(0xFF1E2025)),
          ),
          Container(
            width: 375,
            height: 240.52,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.10000000149011612),
            ),
          ),
          SizedBox(height: 14.h,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                SvgPicture.string(ClientSvgs.travel,height: 30,width: 30,),
                SizedBox(width: 10.w,),
                const Text(
                  'Travel to Dubai',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    height: 0.09,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h,),
          Container(
            width: 376,
            height: 4,
            decoration: const BoxDecoration(color: Color(0xFF1E2025)),
          ),
          SizedBox(height: 16.h,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Column(
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Departure Date',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 75.0),
                      child: Text(
                        'Departure Time',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 150,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B1C21),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0x1919151C)),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 13.0),
                            child: Text(
                              'Select',
                              style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Icon(Icons.calendar_month,color: Color(0xFF6B7280),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B1C21),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0x1919151C)),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 13.0),
                            child: Text(
                              'Select',
                              style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Icon(CupertinoIcons.clock,color: Color(0xFF6B7280),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h,),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Return Date',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 90.0),
                      child: Text(
                        'Return Time',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 150,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B1C21),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0x1919151C)),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 13.0),
                            child: Text(
                              'Select',
                              style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Icon(Icons.calendar_month,color: Color(0xFF6B7280),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B1C21),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0x1919151C)),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 13.0),
                            child: Text(
                              'Select',
                              style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Icon(CupertinoIcons.clock,color: Color(0xFF6B7280),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Number of People',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        height: 0.11,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 343,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF1B1C21),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Color(0x1919151C)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 13.0),
                          child: Text(
                            'Select',
                            style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0.11,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xFF6B7280),),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50.h,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: AppButton(
              title: 'Sand Request',
              onTap: (){
                Get.toNamed(ClientRequestDetail.route);
              },
            ),
          ),
          SizedBox(height: 16.h,),
        ],
      )
    );
  }
}
