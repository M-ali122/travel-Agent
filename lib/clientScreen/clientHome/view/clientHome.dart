import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/clientHome/controller/recomController.dart';
import 'package:travelagentapp/clientScreen/clientHome/view/memberScreen.dart';
import 'package:travelagentapp/res/icons/svg.dart';

import '../../../res/String.dart';
import '../../ClientprofileScreen/Controller/client_profile_controller.dart';
import '../../clientChet/view/clientChetScreen.dart';
import '../../clientChet/view/client_chat_list.dart';
import '../../clientPageSvgs/clientPageSvgs.dart';
import '../../clientRequestScreen/view/sandRequest.dart';
import '../../offers/view/offersView.dart';
import '../../offers/view/travel.dart';

class ClientHomeSreen extends GetWidget<HomeController> {
   ClientHomeSreen({super.key});

  var offersTitle = [
    'Meet & Greet','Events','Travel','Transport',
    'Dining','Wellness','Gifting','Others'
  ];

  ClientProfileController clientProfileController = Get.put(ClientProfileController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(22, 23, 27, 1),
              leading: clientProfileController.user.value.profile != null
                  ? Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: ShapeDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                      NetworkImage(clientProfileController.user.value.profile),
                    ),
                    shape:  const CircleBorder()
                      ),
                    ),
                  )
                  : Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const ShapeDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/emoji/profile2.png'),
                        fit: BoxFit.cover
                    ),
                          shape: CircleBorder()
                      ),
                    ),
                  ),
              title: Container(
                width: 150,
                height: 36,
                decoration: ShapeDecoration(
                  color: const Color(0xFF30879B),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child:  Center(
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(BecomMemeber.route);
                    },
                    child: const Text(
                      'Become a Member',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 17.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(ClientChatScreen.route);
                      // Get.toNamed(ClientChatListScreen.route);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: ShapeDecoration(
                        shape: OvalBorder(
                          side: BorderSide(
                            width: 1.67,
                            color: Colors.white.withOpacity(0.09000000357627869),
                          ),
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.string(Svgs.clientMessageIcon,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(height: 16.h,),
                  Container(
                    width: 343,
                    height: 1,
                    decoration: const BoxDecoration(color: Color(0xFF24262D)),
                  ),
                  SizedBox(height: 20.h,),
                  const Text(
                    'Explore',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 0.07,
                    ),
                  ),
                  SizedBox(height: 14.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(
                              OffersScreen.route,
                            arguments: offersTitle[0],
                          );
                        },
                        child: Column(
                          children: [
                            SvgPicture.string(ClientSvgs.meetandGreetIcon),
                            SizedBox(height: 6.h,),
                            const Text(
                              'Meet & Greet',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            OffersScreen.route,
                            arguments: offersTitle[1],
                          );
                        },
                        child: Column(
                          children: [
                            SvgPicture.string(ClientSvgs.eventSvg),
                            SizedBox(height: 6.h,),
                            const Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Text(
                                'Events',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(
                            TravelScreen.route,
                            arguments: offersTitle[2],
                          );
                      },
                        child: Column(
                          children: [
                            SvgPicture.string(ClientSvgs.travel),
                            SizedBox(height: 6.h,),
                            const Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Text(
                                'Travel',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            TravelScreen.route,
                            arguments: offersTitle[3],
                          );
                        },
                        child: Column(
                          children: [
                            SvgPicture.string(ClientSvgs.transportSvg),
                            SizedBox(height: 6.h,),
                            const Text(
                              'Transport',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 26.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            OffersScreen.route,
                            arguments: offersTitle[4],
                          );
                        },
                        child: Column(
                          children: [
                            SvgPicture.string(ClientSvgs.plateSvg),
                            SizedBox(height: 6.h,),
                            const Text(
                              'Dining',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            OffersScreen.route,
                            arguments: offersTitle[5],
                          );
                        },
                        child: Column(
                          children: [
                            SvgPicture.string(ClientSvgs.wellness),
                            SizedBox(height: 6.h,),
                            const Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Text(
                                'Wellness',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            OffersScreen.route,
                            arguments: offersTitle[6],
                          );
                        },
                        child: Column(
                          children: [
                            SvgPicture.string(ClientSvgs.gifiting),
                            SizedBox(height: 6.h,),
                            const Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Text(
                                'Gifting',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            OffersScreen.route,
                            arguments: offersTitle[7],
                          );
                        },
                        child: Column(
                          children: [
                            SvgPicture.string(ClientSvgs.others),
                            SizedBox(height: 6.h,),
                            const Text(
                              'Others',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.h,),
                  Container(
                    width: 343,
                    height: 1,
                    decoration: const BoxDecoration(color: Color(0xFF24262D)),
                  ),
                  const SizedBox(height: 16.03,),
                  const Text(
                    'Recommended Feed',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 0.09,
                    ),
                  ),
                  SizedBox(height: 16.h,),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.recommandList.length,
                      itemBuilder: (context, index) {
                        bool isSubmitted = controller.isRequestFavorited(controller.recommandList[index].recommandId.toString());
                        // Determine the text to display on the TextButton based on the submission status
                        String buttonText = isSubmitted ? 'Submitted' : 'Request';

                        return Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            width: 343,
                            height: 220,
                            decoration: ShapeDecoration(
                               image:  DecorationImage(
                              image: NetworkImage(controller.recommandList.value[index].image),
                                 fit: BoxFit.cover
                              ),
                              color: Colors.black.withOpacity(0.10000000149011612),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment:Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 14.0,top: 15),
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.black.withOpacity(0.6000000238418579),
                                        shape: const OvalBorder(),
                                      ),
                                      child:  Center(
                                        // child:  IconButton(
                                        //     onPressed: (){
                                        //       print('on tap work ');
                                        //       controller.addfav(
                                        //           controller.recommandList[index].recommandId.toString());
                                        //     },
                                        //     icon: Icon(
                                        //       CupertinoIcons.heart,size: 16,color: Colors.white,
                                        //     ),
                                        // )
                                        child: GestureDetector(
                                          onTap: () {
                                            print('on tap work ');
                                            String requestId = controller.recommandList[index].recommandId.toString();
                                            if (controller.isRequestFavorited(requestId)) {
                                              controller.removeFav(requestId);
                                              print('remove requestId is $requestId');
                                            } else {
                                              // controller.addFav(requestId);
                                              controller.addfav(requestId);
                                              print('addfav is $requestId');
                                            }
                                          },
                                          child: controller.isRequestFavorited(controller.recommandList[index].recommandId.toString())
                                          ? const Icon(CupertinoIcons.heart_fill,size: 16,color: Colors.red,)
                                          : const Icon(CupertinoIcons.heart,size: 16,color: Colors.white,),
                                        )
                                      ),
                                    ),
                                  ),
                                ),
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
                                                  "${controller.recommandList.value[index].title}",
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
                                                     "${controller.recommandList.value[index].depDate}",
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
                                                Get.toNamed(ClientPageSandRequest.route,
                                                    arguments: controller.recommandList[index]
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
                      },),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
          );
        },
    );
  }
}
