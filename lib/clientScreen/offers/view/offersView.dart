import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/clientHome/controller/recomController.dart';

import '../../clientPageSvgs/clientPageSvgs.dart';
import '../../clientRequestScreen/view/sandRequest.dart';

class OffersScreen extends GetWidget<HomeController> {
  static String route = 'OffersScreen';

  var arg = Get.arguments;

  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
             leading: IconButton(
               onPressed: () {
                 Get.back();
               },
               icon: const Icon(CupertinoIcons.back,size: 24,color: Colors.white,),
             ),
             title: Text(arg+' Offers'),
            ),
            body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
              child: controller.offerlist.isEmpty || !controller.offerlist.any((element) => element.offerType == arg)
                  ? Center(
                    child: Container(
                      height: 100.h,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade900
                      ),
                      child: Center(
                      child: Text(
                      'No offers found for $arg',
                        style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            letterSpacing: -0.4
                        ),
                      )),
                    ),
                  ):
              ListView.builder(
                shrinkWrap: true,
                itemCount: controller.offerlist.length,
                itemBuilder: (context, index) {
                  if(controller.offerlist[index].offerType == arg){
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 343.w,
                        height: 220.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          image: DecorationImage(
                              image: NetworkImage(controller.offerlist.value[index].image),
                              //  image: NetworkImage(arg[index]),
                              fit: BoxFit.cover
                          ),
                        ),
                        child: Column(
                          children: [
                            const Spacer(),
                            Container(
                                height: 50.h,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                  color: Color(0xff24272E),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: SvgPicture.string(ClientSvgs.travelIcon),
                                    ),
                                    SizedBox(width: 3.w,),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15.0),
                                            child: Text(
                                              "${controller.offerlist.value[index].offerType}",
                                              // model[index]['title'],
                                              // model.title,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontFamily: 'SF Pro Text',
                                                fontWeight: FontWeight.w500,
                                                height: 0.12,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 8.h,),
                                          Row(
                                            children: [
                                              const Padding(
                                                padding:  EdgeInsets.only(left: 13.0,),
                                                child: Icon(CupertinoIcons.clock,size: 12,color: Colors.white,),
                                              ),
                                              SizedBox(width: 4.w,),
                                              Text(
                                                "${controller.offerlist.value[index].depDate}",
                                                //controller.laodRecommedList[index]['date'],
                                                // model.dateAndTime.toString(),
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11,
                                                  fontFamily: 'SF Pro Text',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Padding(
                                        padding: const EdgeInsets.only(right: 12.0),
                                        child: TextButton(
                                          onPressed: () {
                                            //print(model.title);
                                            Get.toNamed(ClientPageSandRequest.route,
                                                arguments: controller.recommandList [index]
                                            );
                                          },
                                          child: const Text(
                                            'Request',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFF30879B),
                                              fontSize: 14,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w600,
                                              height: 0.12,
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  else {
                    return Container();
                  }
                },
              ),
            ),
          );
        },
    );

  }

}