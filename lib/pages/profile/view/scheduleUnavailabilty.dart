import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../helpers/views/button.dart';
import '../../../res/icons/svg.dart';

class Schedule extends StatelessWidget {
  static String route = 'Schedule';
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 16.h,),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new,color: Colors.white,)
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Text(
                  'Schedule Unavailability',
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
          SizedBox(height: 16.h,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'While unavailable, your current requests will allot to\nanother manager. During this time you can still \nmessage clients with active requests.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 24.h,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'First Day',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8.h,),
          SizedBox(
            height: 55,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.calendar_month_outlined,color: Color(0xff6B7280),),
                  hintText: "dd/mm/yy",
                ),
              ),
            ),
          ),
          SizedBox(height: 18.h,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Last Day',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8.h,),
          SizedBox(
            height: 55,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.calendar_month_outlined,color: Color(0xff6B7280),),
                  hintText: "dd/mm/yy",
                ),
              ),
            ),
          ),
          SizedBox(height: 18.h,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Add a message for clients ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                        ),
                      ),
                      TextSpan(
                        text: '(Optional)',
                        style: TextStyle(
                          color: Color(0xFF6B7280),
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 40,horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1)
                ),
                hintText: "Buyers will see this message on your profile",
              ),
            ),
          ),
          SizedBox(height: 215.h,),
          AppButton(
            onTap: (){

            },
            title: 'Confrim',
          ),
          SizedBox(height: 10.h,),
        ],
      ),
    );
  }
}
