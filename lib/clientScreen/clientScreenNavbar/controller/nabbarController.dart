import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../ClientprofileScreen/clientProfileScreenView.dart';
import '../../clientHome/view/clientHome.dart';
import '../../clientRequestScreen/view/clientHistoryPage.dart';


class ClientNavbarController extends GetxController {

  RxInt currentIndex = 0.obs;


  changePage(index) {
    print(index);
    currentIndex.value = index;
    update();
  }



  final List<Widget> pages = [

    ClientHomeSreen(),
    ClientPageRequest(),
    ClientProfileScreen(),


  ];


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
