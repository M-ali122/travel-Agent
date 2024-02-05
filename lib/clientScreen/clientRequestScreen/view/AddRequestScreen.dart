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
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              // itemCount: controller.laodRecommedList.length,
              itemCount: controller.recommandList.length,
              itemBuilder: (context, index) {
                // RecommandModel model = data[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    width: 343,
                    height: 220,
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
                            )
                        ),
                      ],
                    ),
                  ),
                );
              },),
          ),
        );
      },
    );

  }

}
