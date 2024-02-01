import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

///This is generic class for action button in whole app
class AppButton extends StatelessWidget{
  ///This will be button [title]
  final String title;
  final  onTap;
  final Color? background,foreground;
  const AppButton({super.key,required this.title, required this.onTap,this.background,this.foreground});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 343.w,
        height: 56.h,
        decoration: BoxDecoration(
          color: background?? Get.theme.primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Text(title,style: TextStyle(color: foreground??Colors.white),),
      ),
    );
  }
}