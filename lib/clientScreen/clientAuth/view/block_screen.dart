import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/helpers/extensions/spacing.dart';
import 'package:travelagentapp/helpers/views/button.dart';
import 'package:travelagentapp/pages/splash/controller/splashController.dart';

import '../../../pages/splash/screens/account_type.dart';
import '../controller/clientAuthController.dart';

class BlockScreen extends GetWidget<ClientAuthController>{
  static const String route = "BlockScreen";
  const BlockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientAuthController>(
      init: ClientAuthController(),
      builder: (controller) {
      return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Account Status"),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Your Request : ",style: TextStyle(
                          color: Get.theme.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                      Text("Pending",style: TextStyle(
                        color: Colors.red
                      ),),
                      Spacer(),
                      InkWell(
                        onTap: (){
                          SplashController sc=Get.put(SplashController());
                          sc.splashService();

                        },
                        child: Row(
                          children: [
                            Text("Refresh",style: TextStyle(
                                color: Colors.red,
                              fontSize: 12
                            ),),
                            Icon(Icons.refresh,color: Colors.red,size: 15,),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  Text(
                    "Congratulations you have successfully requested an account! We will review and approve your account in 10 working days and let you know. After approval you will be able to use the app. Thank you for your patience",textAlign: TextAlign.justify,),
                 SizedBox(
                   height: 80,
                 ),
                 AppButton(title: "Logout", onTap: (){
                   var box = GetStorage();
                   box.remove('uid');
                   Get.offAll(Get.offAllNamed(AccountTypeScreen.route));
                 }),
                ],
              ),
            ),
          ));
    },);
  }
}
