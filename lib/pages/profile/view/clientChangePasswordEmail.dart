import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/helpers/views/button.dart';

class ConfrimPassChange extends StatelessWidget {
  static String route = 'ConfrimPassChange';
  const ConfrimPassChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () {
          Get.back();
        }, icon: Icon(CupertinoIcons.back)),
        title: Text(
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
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Divider(thickness: 1,color: Color(0xff1E2026),),
          SizedBox(height: 32.h,),
          Text(
            'Please contact me on Whatsapp\n\n+92 311 40 53544\n\nor email me \n\nzuhran.ahmad@gmail.com',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: AppButton(
                title: 'Update',
                onTap: (){

                }
            ),
          )
        ],
      ),
    );
  }
}
