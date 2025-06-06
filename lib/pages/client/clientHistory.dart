import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../res/icons/svg.dart';

class ClientHistory extends StatelessWidget {
  static final String route = 'ClientHistory';
  ClientHistory({super.key});

  var clintHistory = [
    'Travel to Dubai',
    'Yoga Classes',
    'Meet & Greet',
  ];

  
  var imageUrl = [
    'assets/emoji/dubia.png',
    'assets/emoji/yogaClasses.png',
    'assets/emoji/meetGreet.png',
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
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
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: SvgPicture.string(Svgs.clientPageIcon),
        ),],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16),
        child: ListView(
          shrinkWrap: true,
          children: [
            Center(
              child: Container(
                width: 375,
                height: 1,
                decoration: const BoxDecoration(color: Color(0xFF1E2025)),
              ),
            ),
            SizedBox(height: 20.h,),
            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration:  ShapeDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/emoji/profile2.png'),fit: BoxFit.cover),
                  shape: OvalBorder(
                    side: BorderSide(
                      width: 5,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Color(0x304E7B86),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            const Center(
              child: Text(
                'Faizan Ahmad',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 87,
                  height: 22,
                  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF191B20),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.20, color: Color(0x4C808080)),
                      borderRadius: BorderRadius.circular(38),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
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
                    ],
                  ),
                ),
                Container(
                  width: 82,
                  height: 22,
                  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF191B20),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.20, color: Color(0x4C808080)),
                      borderRadius: BorderRadius.circular(38),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
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
                    ],
                  ),
                ),
                Container(
                  width: 68,
                  height: 22,
                  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF191B20),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.20, color: Color(0x4C808080)),
                      borderRadius: BorderRadius.circular(38),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
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
                    ],
                  ),
                ),
                Container(
                  width: 53,
                  height: 22,
                  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF191B20),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.20, color: Color(0x4C808080)),
                      borderRadius: BorderRadius.circular(38),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
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
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 36.h,),
            const Row(
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    color: Color(0xFF30879B),
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                  ),
                ),
                Spacer(),
                Text(
                  'example-email@gmai.com',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                  ),
                )
              ],
            ),
            SizedBox(height: 15.h,),
            Container(
              width: 343,
              height: 1,
              decoration: const BoxDecoration(color: Color(0xFF24262D)),
            ),
            SizedBox(height: 16.h,),
            const Row(
              children: [
                Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Color(0xFF30879B),
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                  ),
                ),
                Spacer(),
                Text(
                  '+12 123456789',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                  ),
                )
              ],
            ),
            SizedBox(height: 15.h,),
            Container(
              width: 343,
              height: 1,
              decoration: const BoxDecoration(color: Color(0xFF24262D)),
            ),
            SizedBox(height: 16.h,),
            const Row(
              children: [
                Text(
                  'Country',
                  style: TextStyle(
                    color: Color(0xFF30879B),
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                  ),
                ),
                Spacer(),
                Text(
                  'Pakistan',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                  ),
                )
              ],
            ),
            SizedBox(height: 15.h,),
            Container(
              width: 343,
              height: 1,
              decoration: const BoxDecoration(color: Color(0xFF24262D)),
            ),
            SizedBox(height: 28.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'History',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                    height: 0.07,
                  ),
                ),
                Container(
                  width: 32,
                  height: 32,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF242529),
                    shape: OvalBorder(),
                  ),
                  child: const Icon(CupertinoIcons.search,color: Colors.white,),
                )
              ],
            ),
            SizedBox(height: 16.h,),
            Expanded(
              child: ListView.builder(
                itemCount: clintHistory.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
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
                            image: DecorationImage(image: AssetImage(imageUrl[index]),fit:BoxFit.cover),
                            color: Colors.black.withOpacity(0.10000000149011612),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        title: Text(
                          '${clintHistory[index]}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 0.10,
                          ),
                        ),
                        subtitle: Row(
                          children: [
                            const Icon(CupertinoIcons.clock,size: 12,color: Color(0xff6B7280),),
                            SizedBox(width: 4.w,),
                            const Text(
                              'Sat 9 Dec 07:00 AM',
                              style: TextStyle(
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
                          child: const Center(
                            child: Text(
                              'Completed',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF27AE60),
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
                },),
            ),
          ],
        ),
      ),
    );
  }
}
