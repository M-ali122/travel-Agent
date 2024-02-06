import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/pages/profile/controller/profileController.dart';
import '../../../helpers/views/button.dart';

class EditProfile extends GetWidget<ProfileController> {
  static String route = 'EditProfile';
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {

        controller.name.text = controller.loadUserModel.value.name;

        controller.email.text = controller.loadUserModel.value.email;

       controller.number.text = controller.loadUserModel.value.phone;
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                )),
            centerTitle: true,
            title: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                'Edit Profile',
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
          ),
          body: ListView(
            children: [
              SizedBox(
                height: 17.h,
              ),
              Container(
                width: 375,
                height: 1,
                decoration: const BoxDecoration(color: Color(0xFF1E2025)),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Name',
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
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: TextFormField(
                    controller:controller.name,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: "Name",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
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
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.email,
                    decoration: const InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone Number',
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
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: controller.number,
                    decoration: const InputDecoration(
                      hintText: "Number",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Interests',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        height: 0.11,
                      ),
                    ),
                    Text(
                      'Add New',
                      style: TextStyle(
                        color: Color(0xFF30879B),
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Container(
                  width: 343,
                  // height: 80,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF191B20),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.20, color: Color(0x4C808080)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      itemCount: controller.loadUserModel.value.interest.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisExtent: 34,
                          childAspectRatio: 61,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFF404249)),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child:  Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${controller.loadUserModel.value.interest[index]}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  height: 0.09,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 180.h,
              ),
             controller.isBusy() ?Center(child: CircularProgressIndicator()) :  AppButton(
                onTap: () {
                  controller.updateProfile();
                },
                title: 'Confrim',
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        );
      },
    );
  }
}
