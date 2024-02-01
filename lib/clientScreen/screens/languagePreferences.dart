import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/screens/controller/DataCollectionController.dart';
import 'package:travelagentapp/helpers/views/button.dart';
import 'package:travelagentapp/res/dark_theme.dart';

import '../clientAuth/controller/clientAuthController.dart';
import 'LocationDetial.dart';

class LanguagePrefence extends GetWidget<DataCollectionController> {
  static String route = 'LanguagePreference';
   LanguagePrefence({super.key});

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
              icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 24, color: Colors.white,)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: ListView(
            children: [
              SizedBox(height: 24.h,),
              const Text(
                'Language Preferences',
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
                'Choose your preferred language for communication.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 24.h,),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.languages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: GestureDetector(
                      onTap: () {
                        controller.changeLanguage(controller.languages[index]);
                      },
                      child: Container(
                        width: 343,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1B1C21),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: controller.selectedLanguage == controller.languages[index]
                                      ? DarkTheme.primary
                                      : const Color(0xFF1B1C21),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xff6B7280),
                                    width: 1.5,
                                  ),
                                ),
                                child: Center(
                                  child: controller.selectedLanguage == controller.languages[index]
                                      ? const Icon(Icons.done, size: 14, color: Colors.white)
                                      : null,
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w,),
                            Text(
                              '${controller.languages[index]}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0.08,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 100.h,),
              AppButton(
                  title: 'Next',
                  onTap: (){
                    ClientAuthController _controller = Get.put(ClientAuthController());
                    _controller.clientModel.value.languagePreference = controller.selectedLanguage.value;
                    _controller.firstTimeDataStore();
                    Get.toNamed(LocationDetail.route);
                  }
              ),
              SizedBox(height: 10.h,),
            ],
          ),
        ),
      );
      },
    );
  }
}

