
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/controller/requestController.dart';

import '../clientRequestScreen/view/AddRequestScreen.dart';
import '../offers/view/offersView.dart';
import '../offers/view/travel.dart';
import 'cancelScreen.dart';
import 'completed.dart';
import 'panding.dart';
import 'All.dart';


class ClientPageRequest extends GetWidget<RequestController> {
  const ClientPageRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RequestController>(
      init: RequestController(),
      builder: (controller) {
      return DefaultTabController(
        length: 4, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text(
              'Requests',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
              ),
            ),
            actions:  [
              Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: IconButton(
                    onPressed: () {
                      // Get.toNamed(TravelScreen.route,);
                      Get.toNamed(OffersScreen.route);
                    },
                    icon: const Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
                      size: 24,
                    ),
                  )
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Add the TabBar
                Container(
                  height: 40.h,
                  width: Get.width,
                  child: const Stack(
                    children: [
                      Positioned(
                        left: -60,
                        right: 0,
                        child: TabBar(
                          isScrollable: true,
                          labelColor: Color(0xff30889C),
                          indicatorColor: Color(0xff30889C),
                          //dividerHeight: 1,
                          dividerColor: Color(0xff1E2026),
                          unselectedLabelColor: Color(0xff6B7280),
                          // labelPadding: EdgeInsets.symmetric(horizontal: 7),
                          tabs: [
                            Tab(text: 'All'),
                            Tab(text: 'Pending'),
                            Tab(text: 'Completed'),
                            Tab(text: 'Cancelled'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Add the TabBarView
                Expanded(
                  child: TabBarView(
                    children: [
                      // Content for Tab 1
                      Container(
                        child: Center(
                          child: ClientScreenTabbar(),
                        ),
                      ),
                      // Content for Tab 2
                      Container(
                        child: Center(
                          child: PandingView(),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: CompletedScreen(),
                        ),
                      ),
                      Container(
                        child:  Center(
                          child: CancellScreen(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },);
  }
}
