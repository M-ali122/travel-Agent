import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/helpers/extensions/spacing.dart';
import 'package:travelagentapp/res/dark_theme.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  var arrColor = [const Color(0xff9BCFDB), const Color(0xffFBE8AC), const Color(0xff82D6A6)];

  var arrTime = ['08:00', '10:00', '12:00', '14:00'];

  var arrScheduleText = [
    'Yoga Classes',
    'Lamborghini on Rent',
    'Dubai Tour Arrangement',
    'Dubai Tour Arrangement',
  ];

  var arrtext = ['Priority Today', 'To-do Tasks', 'Completed '];



  var arrNumbers = ['16', '122', '300'];

  var dateTime = [
    'Fri 15 Dec 08:00- 10:00 AM',
    'Fri 15 Dec 12:00',
    'Fri 15 Dec 14:00- 16:00 AM',
    'Fri 15 Dec 14:00- 16:00 AM',
  ];

  var arrIcon = [
    const Icon(Icons.keyboard_arrow_up, color: Color(0xff6FCF97), size: 0),
    const Icon(Icons.keyboard_arrow_up, color: Color(0xff6FCF97), size: 10),
    const Icon(Icons.keyboard_arrow_up, color: Colors.white, size: 10),
  ];

  var iconPercent = ['2 new tasks', '15%', '15%'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 3.0,right: 35),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.sun_max_fill,
                        color: DarkTheme.primary,
                        size: 14.37,
                      ),
                      SizedBox(
                        width: 6.h,
                      ),
                      Text(
                        "FRI 15 DEC",
                        style:
                        TextStyle(fontSize: 10.78, color: DarkTheme.primary),
                      )
                    ],
                  ),
                ),
                const Text(
                  "Hi, Zuhran",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 49.08),
              child: Icon(
                CupertinoIcons.circle_fill,
                color: Color(0xff7FE3F0),
                size: 9.92,
              ),
            ),
          ],
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            const Divider(thickness: 1,color: Color(0xff212730),),
            SizedBox(
              height: 16.h,
            ),
            const Text(
              'Let’s check how would manage your day ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            //top cards
            SizedBox(
              height: 100,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Container(
                      width: 106,
                      height: 00,
                      decoration: ShapeDecoration(
                        color: arrColor[index],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 9.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '${arrtext[index]}',
                              style: const TextStyle(
                                color: Color(0xFF111827),
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0.16,
                              ),
                            ),
                            Text(
                              '${arrNumbers[index]}',
                              style: const TextStyle(
                                color: Color(0xFF111827),
                                fontSize: 28,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0.03,
                              ),
                            ),
                            Row(
                              children: [
                                arrIcon[index],
                                Text(
                                  iconPercent[index],
                                  style: const TextStyle(
                                    color: Color(0xFF111827),
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                    height: 0.16,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 32),
              child: Text(
                'Today Schedule',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w500,
                  height: 0.07,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              height: Get.height *0.48,
              child: ListView.builder(
                // physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: dateTime.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: SizedBox(
                              width: 38,
                              height: 14,
                              child: Text(
                                '${arrTime[index]}',
                                style: const TextStyle(
                                  color: Color(0xFF9CA3AF),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  height: 0.18,
                                  letterSpacing: 0.30,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Container(
                            width: 282,
                            height: 1,
                            decoration:
                            const BoxDecoration(
                                color: Color(0xFF21262F)
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                        CircleAvatar(
                          foregroundImage: AssetImage(
                            'assets/emoji/profile2.png'
                          ),
                        ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              width: 261,
                              height: 80.h,
                              decoration: ShapeDecoration(
                                color: const Color(0xff23262D),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 22.h,
                                    ),
                                    Text(
                                      '${arrScheduleText[index]}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w500,
                                        height: 0.14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          CupertinoIcons.clock,
                                          color: Color(0xff6B7280),
                                          size: 12,
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Text(
                                          '${dateTime[index]}',
                                          style: const TextStyle(
                                            color: Color(0xFF6B7280),
                                            fontSize: 11,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0.19,
                                          ),
                                        ),
                                        const Spacer(),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              right: 12.0, bottom: 10),
                                          child: Icon(
                                            Icons.circle_outlined,
                                            color: Color(0xffFFFFFF),
                                            size: 24,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
