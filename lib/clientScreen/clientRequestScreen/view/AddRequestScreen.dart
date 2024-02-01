 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/clientHome/controller/recomController.dart';
import 'package:travelagentapp/clientScreen/clientPageSvgs/clientPageSvgs.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/view/sandRequest.dart';

import '../../../res/icons/svg.dart';

class AddRequest extends GetWidget<HomeController>{
  static String route = 'AddRequest';
  AddRequest({super.key});

  @override

  Widget build(BuildContext context){
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromRGBO(22, 23, 27, 1),
            title: const Text('Add Request'),
            leading: IconButton(
                onPressed: (){
                  Get.back();
                }, icon: const Icon(Icons.arrow_back_ios_outlined,size: 24,),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: controller.recommandList.length,
              itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: 343.w,
                      height: 220.h,
                      decoration: ShapeDecoration(
                        image:  DecorationImage(
                          // image: AssetImage('assets/emoji/dubia.png'),fit: BoxFit.cover,
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
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 14.0,top: 15),
                              child: Container(
                                height: 24.h,
                                width: 24.w,
                                decoration: ShapeDecoration(
                                  shape: OvalBorder(),
                                  color: Colors.black.withOpacity(0.6000000238418579),
                                ),
                                child: const Center(
                                  child: Icon(CupertinoIcons.heart,size: 16,color: Colors.white,),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 50.h,
                            width: Get.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                              color: Color(0xff24272E)
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                            controller.recommandList.value[index].title,
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
                                        Padding(
                                          padding: const EdgeInsets.only(left: 13.0),
                                          child: Icon(CupertinoIcons.clock,size: 12,color: Colors.white,),
                                        ),
                                          SizedBox(width: 4.w,),
                                          Text(
                                              controller.recommandList.value[index].depDate,
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
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
            ),
          ),
        );
      },
    );

  }

}
