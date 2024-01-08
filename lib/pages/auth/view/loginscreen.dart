import 'package:travelagentapp/helpers/extensions/spacing.dart';
import 'package:travelagentapp/helpers/views/button.dart';
import 'package:travelagentapp/navBar/view/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../res/icons/svg.dart';

class LoginScreen extends StatefulWidget {
  static const String route = 'LoginScreen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 86.0),
                child: Text(
                  'Login in to 46 Concierge',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don’t have an account?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0.09,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: Color(0xFF30879B),
                        fontSize: 13,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        height: 0.09,
                      ),
                    ),
                    TextSpan(
                      text: 'Contact Us',
                      style: TextStyle(
                        color: Color(0xFF30879B),
                        fontSize: 13,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 52.h,
              ),
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
              SizedBox(
                height: 8.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter your email Address",
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
                TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: SvgPicture.string(
                        Svgs.textFieldIcon,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    hintText: "Enter your password",
                    //hintStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)
                  ),
                ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const Text(
                    'Stay Signed in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: 0.12,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 6.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xFF30879B),
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: 0.12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              AppButton(
                title: "Login",
                onTap: () {
                  Get.toNamed(BottomnavBar.route);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
