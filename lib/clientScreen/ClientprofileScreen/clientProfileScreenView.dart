import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:travelagentapp/clientScreen/ClientprofileScreen/Controller/client_profile_controller.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/view/sandRequest.dart';
import 'package:travelagentapp/res/icons/svg.dart';
import '../clientHome/controller/recomController.dart';
import '../clientPageSvgs/clientPageSvgs.dart';
import 'ClientProfileSetting.dart';
import 'clientEditProfile.dart';

class ClientProfileScreen extends GetWidget<ClientProfileController> {

  HomeController homeController = Get.put(HomeController());

  ClientProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientProfileController>(
      init: ClientProfileController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text(
              'Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.07000000029802322),
                    shape: const OvalBorder(),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Get.toNamed(CLientProfileSetting.route);
                    },
                    icon: const Center(
                      child: Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                      ),
                    ),
                    padding: const EdgeInsets.only(bottom: 3.8, top: 4),
                  ),
                ),
              )
            ],
          ),
          body: Obx(() => ListView(
            children: [
              Container(
                width: 375,
                height: 260,
                decoration:  BoxDecoration(color: Color(0xFF1B1C21)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // SizedBox(height: 20.h,),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        controller.user.value.profile != null
                            ? Container(
                          width: 120,
                          height: 120,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                              //FileImage(File(controller.user.value.profile!)),
                            NetworkImage(controller.user.value.profile),
                            ),
                            shape: const OvalBorder(
                              side: BorderSide(
                                  width: 4.98, color: Color(0x304E7B86)),
                            ),
                          ),
                        )
                            : Container(
                             width: 120,
                              height: 120,
                             child:  CircleAvatar(
                              backgroundColor: Color(0xff222326),
                             radius: 40,
                               child: SvgPicture.string(
                              Svgs.defaultProfile,
                              width: 38,
                              height: 38,
                            ),
                          ),
                          // decoration: const ShapeDecoration(
                          //   image: DecorationImage(
                          //       image: AssetImage(
                          //           'assets/emoji/profile2.png'),fit: BoxFit.cover
                          //   ),
                          //   shape: OvalBorder(
                          //     side: BorderSide(
                          //         width: 4.98, color: Color(0x304E7B86)
                          //     ),
                          //   ),
                          // ),
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.picImage();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 105, top: 45),
                            child: Container(
                                width: 30,
                                height: 30,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF30879B),
                                  shape: OvalBorder(),
                                ),
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 17,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '${controller.user.value.name}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(ClientEditProfile.route);
                      },
                      child: Container(
                        width: 105,
                        height: 28,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF30879B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.31),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.edit_outlined,
                              size: 10,
                              color: Colors.white,
                            ),
                            Text(
                              'Edit Profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11.35,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0.11,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 87,
                          height: 22,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9, vertical: 4),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF191B20),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.20, color: Color(0x4C808080)),
                              borderRadius: BorderRadius.circular(38),
                            ),
                          ),
                          child: const Text(
                            '#Destination ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: -0.24,
                            ),
                          ),
                        ),
                        Container(
                          width: 82,
                          height: 22,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9, vertical: 4),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF191B20),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.20, color: Color(0x4C808080)),
                              borderRadius: BorderRadius.circular(38),
                            ),
                          ),
                          child: const Text(
                            '#Adventure',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: -0.24,
                            ),
                          ),
                        ),
                        Container(
                          width: 68,
                          height: 22,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9, vertical: 4),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF191B20),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.20, color: Color(0x4C808080)),
                              borderRadius: BorderRadius.circular(38),
                            ),
                          ),
                          child: const Text(
                            '#Cultural',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: -0.24,
                            ),
                          ),
                        ),
                        Container(
                          width: 53,
                          height: 22,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9, vertical: 4),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF191B20),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.20, color: Color(0x4C808080)),
                              borderRadius: BorderRadius.circular(38),
                            ),
                          ),
                          child: const Text(
                            '#Yoga',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: -0.24,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 376,
                height: 4,
                decoration: const BoxDecoration(color: Color(0xFF1E2025)),
              ),
              SizedBox(
                height: 16.h,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Favourites',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: homeController.recommandList.length,
                  itemBuilder: (context, index) {
                    return homeController.isRequestFavorited(homeController.recommandList[index].recommandId.toString())?
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Container(
                        width: 343,
                        height: 220,
                        decoration: ShapeDecoration(
                          image:  DecorationImage(
                              image: NetworkImage(homeController.recommandList.value[index].image),
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
                                      child: GestureDetector(
                                        onTap: () {
                                          print('on tap work ');
                                          String requestId = homeController.recommandList[index].recommandId.toString();
                                          if (homeController.isRequestFavorited(requestId)) {
                                            homeController.removeFav(requestId);
                                            print('remove requestId is $requestId');
                                          } else {
                                            // controller.addFav(requestId);
                                            homeController.addfav(requestId);
                                            print('addfav is $requestId');
                                          }
                                        },
                                        child: homeController.isRequestFavorited(homeController.recommandList[index].recommandId.toString())
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
                                              "${homeController.recommandList.value[index].title}",
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
                                                "${homeController.recommandList.value[index].depDate}",
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
                                                arguments: homeController.recommandList [index]
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
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    ):
                    Container();
                  },),
              ),
              const SizedBox(height: 30,),

            ],
          ),)
        );
      },
    );
  }
}
