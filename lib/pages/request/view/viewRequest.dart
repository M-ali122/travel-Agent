// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class ViewRequest extends StatelessWidget {
//   const ViewRequest({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(left: 16.0,right: 16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(height: 58.h,),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Icon(Icons.calendar_month_outlined,color: Color(0xffFFFFFF),size: 24,),
//                 Text(
//                   'Requests',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontFamily: 'SF Pro Text',
//                     fontWeight: FontWeight.w600,
//                     height: 0.06,
//                   ),
//                 ),
//                 Icon(Icons.add_circle_outline,color: Colors.white,size: 24,)
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../../tabbar/tabbar_view.dart';

class ViewRequest extends StatelessWidget {
  const ViewRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    color: Color(0xffFFFFFF),
                    size: 24,
                  ),
                  Text(
                    'Requests',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 0.06,
                    ),
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                    size: 24,
                  )
                ],
              ),
              // Add the TabBar
              const TabBar(
                padding: EdgeInsets.only(top: 16),
                isScrollable: true,
                labelColor: Color(0xff30889C),
                indicatorColor: Color(0xff30889C),
                //dividerHeight: 1,
                dividerColor: Color(0xff1E2026),
                unselectedLabelColor: Color(0xff6B7280),
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Pending'),
                  Tab(text: 'Completed'),
                  Tab(text: 'Cancelled'),
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
                      child: const Center(
                        child: Text('Tab 2 Content'),
                      ),
                    ),
                    Container(
                      child: const Center(
                        child: Text('Tab 3 Content'),
                      ),
                    ),
                    Container(
                      child: const Center(
                        child: Text('Tab 4 Content'),
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
  }
}
