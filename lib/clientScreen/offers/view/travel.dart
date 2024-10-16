import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/clientHome/model/recomModel.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/controller/requestController.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/model/requestModel.dart';

import '../../../helpers/views/button.dart';
import '../../clientPageSvgs/clientPageSvgs.dart';

class TravelScreen extends GetWidget<RequestController>{
  static String route = 'TravelScreen';

  var arg = Get.arguments;

   RecommandModel model = RecommandModel();

  TextEditingController offersMessage = TextEditingController();

  Widget build(BuildContext context){
    return GetBuilder<RequestController>(
      init: RequestController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(CupertinoIcons.back)
              ),
              centerTitle: true,
              title:  const Text('Custom Request'),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  SizedBox(height: 25.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Departure Date',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 7.h,),
                          GestureDetector(
                            onTap: () => controller.selectDepartureDate(context),
                            child: Container(
                              width: 150,
                              height: 50,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF1B1C21),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0x1919151C)),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Visibility(
                                     visible: controller.departureDate.value != null,
                                      child: Obx(() =>  Text(
                                        "${controller.departureDate}".split(' ')[0],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'SF Pro Text',
                                          fontWeight: FontWeight.w500,
                                          height: 0.11,
                                        ),
                                      ),)
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Icon(Icons.calendar_month, color: Color(0xFF6B7280),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Departure Time',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 7,),
                          GestureDetector(
                            onTap: () => controller.selectDepartureTime(context),
                            child: Container(
                              width: 150,
                              height: 50,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF1B1C21),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0x1919151C)),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Visibility(
                                      visible: controller.departureTime != null,
                                      child: Obx(() => Text(
                                          controller.departureTime.value.format(context),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'SF Pro Text',
                                          fontWeight: FontWeight.w500,
                                          height: 0.11,
                                        ),
                                      ),)
                                    ),
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.only(right: 16.0),
                                    child:  Icon(CupertinoIcons.clock, color: Color(0xFF6B7280),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Return Date',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 7,),
                          GestureDetector(
                            onTap: () => controller.selectReturnDate(context),
                            child: Container(
                              width: 150,
                              height: 50,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF1B1C21),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0x1919151C)),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Visibility(
                                        visible: controller.returnDate.value != null,
                                        child: Obx(() => Text(
                                          "${controller.returnDate}".split(' ')[0],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                            height: 0.11,
                                          ),
                                        ),)
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Icon(Icons.calendar_month, color: Color(0xFF6B7280),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Return Time',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 7,),
                          GestureDetector(
                            onTap: () => controller.selectReturnTime(context),
                            child: Container(
                              width: 150,
                              height: 50,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF1B1C21),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0x1919151C)),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Visibility(
                                      visible: controller.returnTime.value != null,
                                      child: Obx(() => Text(
                                        controller.returnTime.value.format(context),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'SF Pro Text',
                                          fontWeight: FontWeight.w500,
                                          height: 0.11,
                                        ),
                                      ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Icon(CupertinoIcons.clock, color: Color(0xFF6B7280),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: Get.width,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B1C21),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0x1919151C)),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Visibility(
                                visible: controller.selectedNumberOfPeople.value != null,
                                child: Obx(() => Text(
                                  "${controller.selectedNumberOfPeople.value}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                    height: 0.11,
                                  ),
                                ),)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<int>(
                                value: controller.selectedNumberOfPeople.value,
                                items: controller.numberOfPeopleOptions.map((int value) {
                                  return DropdownMenuItem<int>(
                                    value: value,
                                    child: Text(value.toString()), // Change the color here
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  controller.updateNumberOfPeople(value!);
                                },
                                icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xFF6B7280)),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 160.h,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xff1B1D22),
                    ),
                    child: TextField(
                      controller: offersMessage, // Assign the controller here
                      onChanged: (value) {
                        controller.addDataFromTextField(value); // Call the function here
                      },
                      decoration: const InputDecoration(
                        hintText: 'Custom Request',
                      ),
                    ),
                  ),
                  SizedBox(height: 60.h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: AppButton(
                        title: 'Submit',
                        onTap: (){
                          controller.addOffersRequest(offersMessage.text.toString(),
                          );
                        }
                    ),
                  ),
                  SizedBox(height: 30.h,),
                ],
              ),
            ),
          );
        },
    );
  }

}