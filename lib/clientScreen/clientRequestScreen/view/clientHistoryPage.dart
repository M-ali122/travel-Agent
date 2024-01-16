
import 'package:flutter/material.dart';

import '../../clientTabbarScreen/tabbar.dart';


class ClientPageRequest extends StatelessWidget {
  const ClientPageRequest({super.key});

  @override
  Widget build(BuildContext context) {
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
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.add_circle_outline,
                color: Colors.white,
                size: 24,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Add the TabBar
              const TabBar(
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
                        child: ClientScreenTabbar(),
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
