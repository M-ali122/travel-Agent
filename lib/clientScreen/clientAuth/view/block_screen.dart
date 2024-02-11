import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/helpers/extensions/spacing.dart';
import 'package:travelagentapp/helpers/views/button.dart';

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
                  Container(
                      width: Get.width,
                      height: 40,
                      color: Get.theme.primaryColor,
                      child: Center(child: Text("Note",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                      ),))),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "your request is received in our system for review. Our team carefully examines the details you've submitted. After this review process, when your account becomes active, When your account becomes active, you will be able to start using the app immediately. Once activated, you can begin exploring all the features and functionalities it offers. If you have any questions or need assistance, our support team is here to help. Thank you!",textAlign: TextAlign.justify,),

                  Row(
                    children: [




                    ],
                  )
                ],
              ),
            ),
          ));
    },);
  }
}
