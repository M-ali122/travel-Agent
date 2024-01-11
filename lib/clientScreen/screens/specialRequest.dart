import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/helpers/views/button.dart';
import 'package:travelagentapp/res/theme.dart';

import 'LocationDetial.dart';

class SpeciaRequest extends StatefulWidget {

  static String route = 'SpeciaRequest';

  const SpeciaRequest({Key? key}) : super(key: key);

  @override
  State<SpeciaRequest> createState() => _SpeciaRequestState();
}

class _SpeciaRequestState extends State<SpeciaRequest> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: ListView(
          children: [
            SizedBox(height: 5.h,),
            Align(
                alignment: AlignmentDirectional.topStart,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 24, color: Colors.white,))),
            SizedBox(height: 16.h,),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                'Special Request',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w600,
                  height: 0.04,
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            const Padding(
              padding: EdgeInsets.only(left: 14.0),
              child: Text(
                'Any specific requirements or special'
                    ' requests? Let us\nknow, '
                    'and well make sure to cater to your needs',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w400,
              ),
                    ),
            ),
            SizedBox(height: 24.h,),
             Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                width: double.infinity,
                height: 150,
                child: Align(
                  child: TextField(//textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.top,
                    maxLines: null,
                    expands: true,
                    decoration: InputDecoration(
                        hintText: 'Write request here...',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 100.h,),
            AppButton(
                title: 'Next',
                onTap: (){
                  Get.toNamed(LocationDetail.route);
                }
            ),
            SizedBox(height: 10.h,),
          ],
        ),
      ),
    );
  }
}
