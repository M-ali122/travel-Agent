import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  static String route = 'ChatScreen';
  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 20.h,),
          ListTile(
            title: Text(
              'Sarah Shahi',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
                height: 0.08,
              ),
            ),
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(CupertinoIcons.back,color: Colors.white,),
            ),
            subtitle: Text(
              'Online',
              style: TextStyle(
                color: Color(0xFF30879B),
                fontSize: 11,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            trailing: Icon(Icons.more_horiz,color: Colors.white,),
          ),
          Container(
            width: 375,
            height: 1,
            decoration: BoxDecoration(color: Color(0xFF1E2025)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0,right: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h,),
                Container(
                  width: 291,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: Color(0xFF30879B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Hi Sarah! This is Zuhran, your personal \nmanager. I noticed your interset in a \n '
                          'Dubai tour. How can I assist you today?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ),
                SizedBox(height: 8.h,),
                Text(
                  '10:30 AM',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(height: 32.h,),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      width: 291,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: Color(0xFF212329),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Hi Sarah! Yes, Im excited about \nexploring Dubai. Id like to book a tour\nfor next week. Can you help with that?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      )
                  ),
                ),
                SizedBox(height: 8.h,),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    '10:30 AM',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(height: 32.h,),
                Container(
                    width: 291,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Color(0xFF30879B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                    ),
                    child: Center(
                        child: Text(
                          'Absolutely, Sarah! What dates are you \nconsidering for the tour?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                    )
                ),
                SizedBox(height: 8.h,),
                Text(
                  '10:30 AM',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(height: 32.h,),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      width: 291,
                      height: 60,
                      decoration: ShapeDecoration(
                        color: Color(0xFF212329),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                      ),
                      child: Center(
                          child: Text(
                            'Im thinking Wednesday or Thursday next\nweek, whichever works better.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                      )
                  ),
                ),
                SizedBox(height: 8.h,),
                Align(
                  alignment: Alignment.topRight,
                  child: const Text(
                    '10:30 AM',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(height: 32.h,),
                Container(
                    width: 291,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Color(0xFF212329),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                    ),
                    child: Center(
                        child: Text(
                          'Alex! Ill be in touch shortly with the \nconfirmed details. Have a wonderful day!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                    )
                ),
                SizedBox(height: 8.h,),
                const Text(
                  '10:30 AM',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color:  Color(0xff111827),
          border: Border(top: BorderSide(width: 1,color: Color(0xff1E2026)))
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SizedBox(
                height: 50,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Transform.rotate(
                          angle: 12,
                          child: Icon(Icons.attachment_outlined,color: Color(0xff8A96B3),)),
                      hintText: "Message",
                      hintStyle: TextStyle(color:Color(0xff8A96B3),fontSize: 11,),
                      suffixIcon: Icon(Icons.emoji_emotions_outlined,color:Color(0xff8A96B3)),
                      fillColor: Color(0xff17181C)
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Container(
                width: 44.94,
                height: 44.94,
                decoration: ShapeDecoration(
                  color: Color(0xFF30879B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.97),
                  ),
                ),
                child: Icon(Icons.send,color: Colors.white,size: 19,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
