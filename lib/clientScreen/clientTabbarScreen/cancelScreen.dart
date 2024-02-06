import 'package:flutter/cupertino.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/controller/requestController.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/view/sandRequest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../clientHome/controller/recomController.dart';

class CancellScreen extends GetWidget<RequestController> {
  CancellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.loadrequest();
    return GetBuilder<RequestController>(
      init: RequestController(),
      builder: (controller) {
        return Scaffold(
          body: GestureDetector(
            onTap: () {
              // Get.toNamed(ClientPageSandRequest.route);
            },
            child: controller.reqList.isEmpty ? Center(child: Text('Cancel Data not found'),) :
            ListView.builder(
              itemCount: controller.reqList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if(controller.reqList[index].recommendation.requestStatus == 'Cancelled'){
                  return Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Container(
                      width: 343,
                      height: 70,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF191B1F),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.20, color: Color(0x4C808080)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: ListTile(
                        leading: Container(
                          width: 60,
                          height: 60,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    controller.reqList.value[index].recommendation.image),
                                fit: BoxFit.cover
                            ),
                            color: Colors.black.withOpacity(0.10000000149011612),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        title: Text(
                          '${controller.reqList.value[index].recommendation.title}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 0.10,
                          ),
                        ),
                        subtitle: Row(
                          children: [
                            const Icon(CupertinoIcons.clock,size: 12,color: Color(0xff6B7280),),
                            SizedBox(width: 4.w,),
                            Text(
                              '${controller.reqList.value[index].recommendation.depDate}',
                              style: const TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 11,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0.19,
                              ),
                            ),
                          ],
                        ),
                        trailing: Container(
                          width: 68,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: Colors.white.withOpacity(0.05999999865889549),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '${controller.reqList.value[index].recommendation.requestStatus}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Color(0xffF2994A),
                                fontSize: 10,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                height: 0.13,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }else{
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
