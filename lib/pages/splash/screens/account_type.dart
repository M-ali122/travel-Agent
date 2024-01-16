import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/onboarding/onboardingScreen.dart';
import 'package:travelagentapp/clientScreen/screens/interestScreen.dart';
import 'package:travelagentapp/helpers/views/button.dart';

import '../../../clientScreen/clientAuth/clientAuthView/clientLogin.dart';
import '../../../res/icons/svg.dart';
import '../../auth/view/loginscreen.dart';

class AccountTypeScreen extends StatelessWidget {
  static const String route = 'accountTypeScreen';
  const AccountTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Hero(
              tag: 'logo',
              child: SvgPicture.string(
                Svgs.image,
                color: const Color(0xff30889C),
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppButton(
                  title: "Client",
                  onTap: () {
                   // Get.toNamed(InterestScreen.route);
                    Get.toNamed(ClientLogin.route);
                    // Get.toNamed(OnboardScreen.route);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                AppButton(
                  title: "Lifestyle Manager",
                  onTap: (){
                    Get.toNamed(LoginScreen.route);
                  },
                  background: Colors.white,
                  foreground: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
