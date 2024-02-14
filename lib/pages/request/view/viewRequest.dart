
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/pages/tabbar/cancelled.dart';

import '../../tabbar/accepted.dart';
import '../../tabbar/completed.dart';
import '../../tabbar/pending.dart';
import '../../tabbar/tabbar_view.dart';
import '../controller/managerRequestController.dart';

class ViewRequest extends GetWidget<ManagerRequestController> {
  const ViewRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ManagerRequestController>(
      init: ManagerRequestController(),
      builder: (controller) {
          return DefaultTabController(
            length: 5,
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                leading: const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Icon(
                    Icons.calendar_month_outlined,
                    color: Color(0xffFFFFFF),
                    size: 24,
                  ),
                ),
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
                actions: [
                  // Padding(
                  //   padding: EdgeInsets.only(right: 20.0),
                  //   child: Icon(
                  //     Icons.add_circle_outline,
                  //     color: Colors.white,
                  //     size: 24,
                  //   ),
                  // ),
                ],
                centerTitle: true,
              ),
              body: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TabBar(
                      isScrollable: true,
                      labelColor: Color(0xff30889C),
                      indicatorColor: Color(0xff30889C),
                      //dividerHeight: 1,
                      dividerColor: Color(0xff1E2026), // Adjust this padding as needed
                      unselectedLabelColor: Color(0xff6B7280),
                      labelPadding: EdgeInsets.symmetric(horizontal: 12.0),
                      tabs: [
                        Tab(text: 'All'),
                        Tab(text: 'Pending'),
                        Tab(text: 'Completed'),
                        Tab(text: 'Cancelled'),
                        Tab(text: 'Accepted'),
                      ],
                    ),
                    // Add the TabBarView
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Content for Tab 1
                          Container(
                            child: Center(
                              child: TabbarView(),
                            ),
                          ),
                          // Content for Tab 2
                          Container(
                            child:  Center(
                              child: PanddingView(),
                            ),
                          ),
                          Container(
                            child:  Center(
                              child: CompletedView(),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: CancellScreen()
                            ),
                          ),
                          Container(
                            child: Center(
                                child: AcceptedScreen()
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
        },
    );
  }
}
