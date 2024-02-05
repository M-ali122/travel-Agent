import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/clientChet/controller/message_controller.dart';
import 'package:travelagentapp/clientScreen/clientHome/controller/recomController.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/controller/requestController.dart';

import '../../../res/icons/svg.dart';
import 'clientChetScreen.dart';

class ClientChatListScreen extends GetWidget<RequestController> {
  static const String route = "ClientChatListScreen";
  const ClientChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<RequestController>(
      init: RequestController(),
      builder: (controller) {
      return Scaffold(

        appBar: AppBar(

        ),
        body: GestureDetector(
          onTap: () {
            // Get.toNamed(ClientPageSandRequest.route);
          },
          child: controller.reqList.isEmpty ? Center(child: Text("No Request Found"))  : ListView.builder(
            itemCount: controller.reqList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              if(controller.reqList[index].requestStatus == "Accepted"){
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
                    trailing: InkWell(
                      onTap: (){
                        print("object");
                        Get.toNamed(ClientChatScreen.route,arguments:
                        controller.reqList[index].accepterId.toString(),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
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
                                '${controller.reqList[index].requestStatus}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: controller.reqList.value[index].recommendation.requestStatus == 'Completed'
                                      ? const Color(0xff27AE60):
                                  controller.reqList.value[index].requestStatus == 'Cancelled' ?
                                  Color(0xffFF0000) : Color(0xffF2994A),
                                  fontSize: 10,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  height: 0.13,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 17.0),
                            child: Container(
                              width: 30,
                              height: 30,
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
                        ],
                      ),
                    ),
                  ),
                ),
              );}else{
                return Container();
              }
            },
          ),
        ),





      );
    },);
  }
}
