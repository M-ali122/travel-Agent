import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/Admin/controller/AdminController.dart';
import 'package:travelagentapp/Admin/pages/life_style_manager.dart';
import 'package:travelagentapp/Admin/pages/recommandation.dart';
import 'package:travelagentapp/Admin/pages/users.dart';

class AdminHome extends GetWidget<AdminController> {
  static const String route = "AdminHome";
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdminController>(
      init: AdminController(),
      builder: (controller) {
        return DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Wellcome Admin'),
                bottom: TabBar(
                  isScrollable: true,
                  indicatorColor: Color(0xFF30879B),
                  labelColor: Colors.white,
                  tabs: [
                    Tab(icon: Icon(Icons.recommend), text: "Recommandation"),
                    Tab(
                        icon: Icon(Icons.manage_accounts_rounded),
                        text: "LifeStyleManage"),
                    Tab(icon: Icon(Icons.people_alt), text: "Users"),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  RecommanationScreen(),
                  LifeStyleManageScreen(),
                  UsersScreen(),
                ],
              ),
            ));
      },
    );
  }
}
