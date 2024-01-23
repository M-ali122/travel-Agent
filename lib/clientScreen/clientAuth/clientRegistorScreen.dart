import 'package:travelagentapp/helpers/extensions/spacing.dart';
import 'package:travelagentapp/helpers/views/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/pages/auth/controller/auth_controller.dart';
import '../../helpers/views/toast.dart';
import '../../res/dark_theme.dart';
import 'clientAuthController/clientAuthController.dart';

class ClientregisterScreen extends GetWidget<AuthController> {
  static const String route = 'ClientregisterScreen';
  ClientregisterScreen({super.key});

  // bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientAuthController>(
      init: ClientAuthController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create Account ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Already have an account?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 1.4
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 50, right: 10),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: DarkTheme.primary,
                              fontSize: 13,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0.05,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    'Full Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                   TextFormField(
                    onChanged: (val) =>
                    controller.clientModel.value.name = val,
                    decoration: const InputDecoration(
                      hintText: "Enter your full name",
                      //   hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)
                    ),
                  ),
                  20.height,
                  const Text(
                    'Email Address',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                    ),
                  ),
                  8.height,
                  TextFormField(
                    onChanged: (val) =>
                    controller.clientModel.value.email= val,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: "Enter your email",
                      //   hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)
                    ),
                  ),
                  20.height,
                  const Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                    ),
                  ),
                  8.height,
                  TextFormField(
                    onChanged: (val) =>
                    controller.clientModel.value.phone= val,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: "Enter your phone number",
                      //   hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)
                    ),
                  ),
                  20.height,
                  const Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                    ),
                  ),
                  8.height,
                  Obx(
                        () => TextFormField(
                      onChanged: (val) =>
                      controller.clientModel.value.password = val,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: controller.isPasswordVisible.value,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            controller.isPasswordVisible.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            controller.togglePasswordVisibility();
                          },
                        ),
                        hintText: "Enter your password",
                        //hintStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)
                      ),
                    ),
                  ),
                  20.height,
                  const Text(
                    'Confrim Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                    ),
                  ),
                  8.height,
                  Obx(
                        () => TextFormField(
                       onChanged: (val) =>
                       controller.clientModel.value.password = val,
                       keyboardType: TextInputType.visiblePassword,
                       obscureText: controller.isPasswordVisible.value,
                        decoration: InputDecoration(
                         suffixIcon: IconButton(
                          icon: Icon(
                            controller.isPasswordVisible.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            controller.togglePasswordVisibility();
                          },
                        ),
                        hintText: "Re-enter your password",
                      ),
                    ),
                  ),
                  SizedBox(height: 17.h),
                  Row(
                    children: [
                      Checkbox(
                        fillColor: MaterialStatePropertyAll(
                            controller.isChecked.value == true ? const Color(0xFF30879B) :Colors.transparent
                        ),
                        // activeColor: Color(0xFF30879B),
                        value: controller.isChecked.value,
                        onChanged: (value) {
                          controller.checkBoxToggle();
                        },
                      ),
                      Text(
                        'I agree to Terms & Conditions',
                        style: TextStyle(
                          color: DarkTheme.primary,
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: 0.12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 26.h,),
                 controller.isBusy() ?Center(child: CircularProgressIndicator(color:  Color(0xFF30879B),)) : AppButton(
                      title: 'Create Account',
                      onTap: (){
                        if(controller.isChecked.isTrue){
                          controller.registeredUser();
                        }else{
                          showErrorMessage("agree the Terms & Conditions");
                        }
                      }
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
