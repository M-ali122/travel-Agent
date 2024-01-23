import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {
  static const String route = "AdminHome";
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Wellcom Admin'),
            bottom: TabBar(
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
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
        ));
  }
}
