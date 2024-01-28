  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:flutter_svg/flutter_svg.dart';
  import '../../../res/icons/svg.dart';
  import '../controller/splashController.dart';

  class SplashView extends GetWidget<SplashController> {
    static const String route = 'splashView';


    const SplashView({super.key});
    @override
    Widget build(BuildContext context) {
      return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: 'logo',
                    child: SvgPicture.string(
                      Svgs.image,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
