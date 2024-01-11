import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'chatpage.dart';

class Inbox extends StatelessWidget {

  Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 16.h,),
              const Center(
                child: Text(
                  'Clients',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                    height: 0.06,
                  ),
                ),
              ),
              SizedBox(height: 17.h),
              const Divider(thickness: 1,color: Color(0xff1E2026)),
              SizedBox(height: 13.h,),
              const SizedBox(
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, size: 20, color: Color(0xff6B7280)),
                      hintText: 'Search clients',
                      hintStyle: TextStyle(color: Color(0xff6B7280,), fontSize: 12)),
                ),
              ),
              SizedBox(height: 26.h,),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Unread messages (2)',
                  style: TextStyle(
                    color: Color(0xFF9CA3AF),
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    height: 0.07,
                  ),
                ),
              ),
              SizedBox(height: 27.h,),
             SizedBox(
               height: 250,
               child: ListView(
                 scrollDirection: Axis.vertical,
                 shrinkWrap: true,
                 children: [
                   Row(
                     children: [
                      CircleAvatar(
                        foregroundImage: AssetImage(
                            'assets/emoji/profile.png'
                        ),
                      ),
                       Expanded(
                         child: ListTile(
                           onTap: () {
                             Get.toNamed(ChatScreen.route);
                           },
                           title: const Padding(
                             padding: EdgeInsets.only(left: 50.0),
                             child: Row(
                               children: [
                                 Text(
                                   'Sarah Shahi',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 16,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w500,
                                     height: 0.06,
                                   ),
                                 ),
                                 Spacer(),
                                 Text(
                                   '12:00 PM',
                                   style: TextStyle(
                                     color: Color(0xFF9CA3AF),
                                     fontSize: 11,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.12,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           subtitle: Padding(
                             padding: const EdgeInsets.only(left: 50.0,top: 16),
                             child: Row(
                               children: [
                                 const Text(
                                   'This is demo message text',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 14,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.07,
                                   ),
                                 ),
                                 const Spacer(),
                                 Container(
                                   width: 20,
                                   height: 20,
                                   decoration: const ShapeDecoration(
                                     color: Color(0xFF30879B),
                                     shape: OvalBorder(),
                                   ),
                                   child: const Center(child: Text(
                                     '1',
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 10.83,
                                       fontFamily: 'SF Pro Text',
                                       fontWeight: FontWeight.w500,
                                       height: 0.13,
                                     ),
                                   ),),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 20.h,),
                   Row(
                     children: [
                       CircleAvatar(
                         foregroundImage: AssetImage(
                             'assets/emoji/profile.png'
                         ),
                       ),
                       Expanded(
                         child: ListTile(
                           title: const Padding(
                             padding: EdgeInsets.only(left: 50.0),
                             child: Row(
                               children: [
                                 Text(
                                   'Ashlynn Dias',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 16,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w500,
                                     height: 0.06,
                                   ),
                                 ),
                                 Spacer(),
                                 Text(
                                   '12:00 PM',
                                   style: TextStyle(
                                     color: Color(0xFF9CA3AF),
                                     fontSize: 11,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.12,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           subtitle: Padding(
                             padding: const EdgeInsets.only(left: 50.0,top: 16),
                             child: Row(
                               children: [
                                 const Text(
                                   'This is demo message text',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 14,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.07,
                                   ),
                                 ),
                                 const Spacer(),
                                 Container(
                                   width: 20,
                                   height: 20,
                                   decoration: const ShapeDecoration(
                                     color: Color(0xFF30879B),
                                     shape: OvalBorder(),
                                   ),
                                   child: const Center(child: Text(
                                     '1',
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 10.83,
                                       fontFamily: 'SF Pro Text',
                                       fontWeight: FontWeight.w500,
                                       height: 0.13,
                                     ),
                                   ),),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 20.h,),
                   Row(
                     children: [
                       CircleAvatar(
                         foregroundImage: AssetImage(
                             'assets/emoji/profile.png'
                         ),
                       ),
                       Expanded(
                         child: ListTile(
                           title: const Padding(
                             padding:  EdgeInsets.only(left: 50.0),
                             child: Row(
                               children: [
                                 Text(
                                   'Carter Lipshutz',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 16,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w500,
                                     height: 0.06,
                                   ),
                                 ),
                                 Spacer(),
                                 Text(
                                   '12:00 PM',
                                   style: TextStyle(
                                     color: Color(0xFF9CA3AF),
                                     fontSize: 11,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.12,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           subtitle: Padding(
                             padding: const EdgeInsets.only(left: 50.0,top: 16),
                             child: Row(
                               children: [
                                 const Text(
                                   'This is demo message text',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 14,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.07,
                                   ),
                                 ),
                                 const Spacer(),
                                 Container(
                                   width: 20,
                                   height: 20,
                                   decoration: const ShapeDecoration(
                                     shape: OvalBorder(),
                                   ),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 20.h,),
                   Row(
                     children: [
                       CircleAvatar(
                         foregroundImage: AssetImage(
                             'assets/emoji/profile.png'
                         ),
                       ),
                       Expanded(
                         child: ListTile(
                           title: const Padding(
                             padding: EdgeInsets.only(left: 50.0),
                             child: Row(
                               children: [
                                 Text(
                                   'Zain Kenter',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 16,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w500,
                                     height: 0.06,
                                   ),
                                 ),
                                 Spacer(),
                                 Text(
                                   '12:00 PM',
                                   style: TextStyle(
                                     color: Color(0xFF9CA3AF),
                                     fontSize: 11,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.12,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           subtitle: Padding(
                             padding: const EdgeInsets.only(left: 50.0,top: 16),
                             child: Row(
                               children: [
                                 const Text(
                                   'This is demo message text',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 14,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.07,
                                   ),
                                 ),
                                 const Spacer(),
                                 Container(
                                   width: 20,
                                   height: 20,
                                   decoration: const ShapeDecoration(
                                     shape: OvalBorder(),
                                   ),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 20.h,),
                   Row(
                     children: [
                       CircleAvatar(
                         foregroundImage: AssetImage(
                             'assets/emoji/profile.png'
                         ),
                       ),
                       Expanded(
                         child: ListTile(
                           title: const Padding(
                             padding: EdgeInsets.only(left: 50.0),
                             child: Row(
                               children: [
                                 Text(
                                   'Ruben Baptista',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 16,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w500,
                                     height: 0.06,
                                   ),
                                 ),
                                 Spacer(),
                                 Text(
                                   '12:00 PM',
                                   style: TextStyle(
                                     color: Color(0xFF9CA3AF),
                                     fontSize: 11,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.12,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           subtitle: Padding(
                             padding: const EdgeInsets.only(left: 50.0,top: 16),
                             child: Row(
                               children: [
                                 const Text(
                                   'This is demo message text',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 14,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.07,
                                   ),
                                 ),
                                 const Spacer(),
                                 Container(
                                   width: 20,
                                   height: 20,
                                   decoration: const ShapeDecoration(
                                     shape: OvalBorder(),
                                   ),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 20.h,),
                   Row(
                     children: [
                       CircleAvatar(
                         foregroundImage: AssetImage(
                             'assets/emoji/profile.png'
                         ),
                       ),
                       Expanded(
                         child: ListTile(
                           title: const Padding(
                             padding: EdgeInsets.only(left: 50.0),
                             child: Row(
                               children: [
                                 Text(
                                   'Dulce Curtis',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 16,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w500,
                                     height: 0.06,
                                   ),
                                 ),
                                 Spacer(),
                                 Text(
                                   '12:00 PM',
                                   style: TextStyle(
                                     color: Color(0xFF9CA3AF),
                                     fontSize: 11,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.12,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           subtitle: Padding(
                             padding: const EdgeInsets.only(left: 50.0,top: 16),
                             child: Row(
                               children: [
                                 const Text(
                                   'This is demo message text',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 14,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.07,
                                   ),
                                 ),
                                 const Spacer(),
                                 Container(
                                   width: 20,
                                   height: 20,
                                   decoration: const ShapeDecoration(
                                     shape: OvalBorder(),
                                   ),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 20.h,),
                   Row(
                     children: [
                       CircleAvatar(
                         foregroundImage: AssetImage(
                             'assets/emoji/profile.png'
                         ),
                       ),
                       Expanded(
                         child: ListTile(
                           title: const Padding(
                             padding: EdgeInsets.only(left: 50.0),
                             child: Row(
                               children: [
                                 Text(
                                   'Dulce Rhiel Madsen',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 15,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w500,
                                     height: 0.06,
                                   ),
                                 ),
                                 Spacer(),
                                 Text(
                                   '12:00 PM',
                                   style: TextStyle(
                                     color: Color(0xFF9CA3AF),
                                     fontSize: 11,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.12,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           subtitle: Padding(
                             padding: const EdgeInsets.only(left: 50.0,top: 16),
                             child: Row(
                               children: [
                                 const Text(
                                   'This is demo message text',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 14,
                                     fontFamily: 'SF Pro Text',
                                     fontWeight: FontWeight.w400,
                                     height: 0.07,
                                   ),
                                 ),
                                 const Spacer(),
                                 Container(
                                   width: 20,
                                   height: 20,
                                   decoration: const ShapeDecoration(
                                     shape: OvalBorder(),
                                   ),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ],
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
