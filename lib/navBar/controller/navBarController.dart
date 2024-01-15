import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../pages/chet/view/inbox.dart';
import '../../pages/client/viewClient.dart';
import '../../pages/home/view/homeView.dart';
import '../../pages/profile/view/profileScreen.dart';
import '../../pages/request/view/viewRequest.dart';
class BottomNavController extends GetxController {

  RxInt currentIndex = 0.obs;


  changePage(index) {
    print(index);
    currentIndex.value = index;
    update();
  }



   final List<Widget> pages = [
    HomeView(),
    ViewRequest(),
    ViewClient(),
    Inbox(),
    ProfileScreen(),
];




















  // var currentIndex = 0.obs;

  // void changePage(int index) {
  //   currentIndex.value = index;
  // }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page'),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Business Page'),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('School Page'),
    );
  }
}
