import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/helpers/views/button.dart';
import 'package:travelagentapp/res/notification.dart';
import '../../../clientScreen/clientAuth/view/clientLogin.dart';
import '../../../res/icons/svg.dart';
import '../../auth/view/loginscreen.dart';

class AccountTypeScreen extends StatelessWidget {
  static const String route = 'accountTypeScreen';
  const AccountTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // AwesomeNotifications().setListeners(
    //     onActionReceivedMethod: NotificationController.onActionReceivedMethod,
    //   onNotificationCreatedMethod: NotificationController.onNotificationCreatedMethod,
    //   onDismissActionReceivedMethod: NotificationController.onDismissActionReceivedMethod,
    //   onNotificationDisplayedMethod: NotificationController.onNotificationDisplayedMethod,
    // );

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

                    // AwesomeNotifications().createNotification(content: NotificationContent(id: 1, channelKey: "basic chennel",title: "Zain",body: "heool"));
                    Get.toNamed(ClientLogin.route);

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
