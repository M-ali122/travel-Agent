import 'package:get/get.dart';
import 'package:travelagentapp/pages/splash/screens/account_type.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // Add any initialization logic here
    // For example, you can use Future.delayed to simulate an asynchronous operation
    splashService();
  }

  void splashService() {
    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to the next screen after 2 seconds
      Get.toNamed(AccountTypeScreen.route);
    });
  }
}
