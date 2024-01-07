import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../helpers/views/button.dart';
import '../../../res/icons/svg.dart';

class ChangePassword extends StatelessWidget {
  static String route = 'ChangePassword';
  const ChangePassword({super.key});

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
                padding: EdgeInsets.only(left: 70.0),
                child: Text(
                  'Change Password',
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
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Old Password',
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
                  hintText: "Enter your old Password",
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
                  'New Password',
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
                  hintText: "Enter new password",
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
                  'Confrim Password',
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
                  hintText: "Re-enter your password",
                ),
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
