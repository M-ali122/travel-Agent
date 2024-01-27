import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/Admin/controller/AdminController.dart';

class LifeStyleManageScreen extends GetWidget<AdminController> {
  static const String route = "LifeStyleManageScreen";
  const LifeStyleManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdminController>(
      init: AdminController(),
      builder: (controller) {
        return Scaffold(
          body: controller.userList.isEmpty ? Center(child: Text("Check Your Connection")) : ListView.builder(
            itemCount: controller.userList.length,
            itemBuilder: (context, index) {
              if(controller.userList[index]["userType"] == "LifeStyleManager"){
                return Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Container(
                    width: 343,
                    height: 150,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF191B20),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.20, color: Color(0x4C808080)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        ListTile(
                          leading: controller.userList[index]["profile"] != null
                              ? CircleAvatar(
                              foregroundImage: NetworkImage(
                                  "${controller.userList[index]["profile"]}")
                            // : AssetImage('assets/emoji/profile2.png'),
                          )
                              : CircleAvatar(
                            foregroundImage:
                            AssetImage('assets/emoji/profile2.png'),
                          ),
                          title: Row(
                            children: [
                              Text(
                                "${controller.userList[index]["name"]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: 0.50,
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Get.defaultDialog(
                                      backgroundColor: Color(0xFF30879B),
                                      title: "",
                                      content: Column(
                                        children: [
                                          Text("Sure You want to Block This Account",style: TextStyle(
                                            // color: Color(0xFF30879B),
                                            fontSize: 12,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.bold,
                                            height: 0,
                                            letterSpacing: 0.30,
                                          ),),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              GestureDetector(
                                                onTap: (){
                                                  Get.back();
                                                },
                                                child: Container(
                                                  width: 80,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(40),
                                                      border: Border.all(
                                                          color: Colors.white
                                                      )
                                                  ),
                                                  child: Center(child: Text("Cancel")),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: (){
                                                  controller.toggleBlockUser("${controller.userList[index]["uid"]}");
                                                },
                                                child: Container(
                                                  width: 80,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(40),
                                                      border: Border.all(
                                                          color: Colors.white
                                                      )
                                                  ),
                                                  child: Center(child: Text("Confirm")),
                                                ),
                                              ),



                                            ],
                                          )


                                        ],
                                      )
                                  );
                                },
                                child: Container(
                                    height: 35,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: const Color(0xff30889C)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'Block',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                            letterSpacing: 0.30,
                                          ),
                                        ),
                                        // SizedBox(
                                        //   width: 4.h,
                                        // ),
                                        // const Icon(
                                        //   Icons.keyboard_arrow_down,
                                        //   size: 10,
                                        //   color: Colors.white,
                                        // )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          subtitle: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Requested by ',
                                  style: TextStyle(
                                    color: Color(0xFF6B7280),
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 0.30,
                                  ),
                                ),
                                TextSpan(
                                  text: '${controller.userList[index]["email"]}',
                                  style: TextStyle(
                                    color: Color(0xFF30879B),
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 0.30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: const Divider(
                            height: 1,
                            thickness: 1,
                            color: Color(0xfff24272F),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Phone :',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '${controller.userList[index]["phone"]}',
                                style: TextStyle(
                                  color: Color(0xFF6B7280),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                  letterSpacing: 0.50,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(right: 4.0),
                                child: Text(
                                  'Active :',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Text(
                                  '${controller.userList[index]["activeStatus"]}',
                                  style: TextStyle(
                                    color: Color(0xFF6B7280),
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Id :',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '${controller.userList[index]["uid"]}',
                                style: TextStyle(
                                  color: Color(0xFF6B7280),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                  letterSpacing: 0.50,
                                ),
                              ),
                              // Spacer(),
                              // Padding(
                              //   padding: EdgeInsets.only(right: 4.0),
                              //   child: Text(
                              //     'Order Date:',
                              //     style: TextStyle(
                              //       color: Colors.white,
                              //       fontSize: 12,
                              //       fontFamily: 'SF Pro Text',
                              //       fontWeight: FontWeight.w500,
                              //       height: 0,
                              //       letterSpacing: 0.50,
                              //     ),
                              //   ),
                              // ),
                              // Padding(
                              //   padding: EdgeInsets.only(right: 8.0),
                              //   child: Text(
                              //     '15 Sep 2023',
                              //     style: TextStyle(
                              //       color: Color(0xFF6B7280),
                              //       fontSize: 12,
                              //       fontFamily: 'SF Pro Text',
                              //       fontWeight: FontWeight.w400,
                              //       height: 0,
                              //       letterSpacing: 0.50,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }else{
                return Container();
              }
            },
          ),
        );
      },
    );
  }
}
