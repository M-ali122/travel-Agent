import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/helpers/views/toast.dart';

import '../../clientAuth/controller/clientAuthController.dart';
import '../../clientAuth/model/clientModel.dart';
import '../../clientScreenNavbar/view/ClientScreenNavbar.dart';

class DataCollectionController extends GetxController {
  // Rx<ClintModel> clintModel=<ClintModel>.obs;

  Rx<ClientModel> dataModel = ClientModel().obs;

  RxList<String> selectedInterests = <String>[].obs;

  void toggleInterest(String index) {
    if (selectedInterests.contains(index)) {
      selectedInterests.remove(index);
    } else {
      selectedInterests.add(index);
      print('selected $selectedInterests');
    }
    update();
  }

  bool isInterestSelected(String index) {
    return selectedInterests.contains(index);
  }

  /// customization screen option
  RxList<String> selectedCustomization = <String>[].obs;

  void toggleCustomization(String index) {
    if (selectedCustomization.contains(index)) {
      selectedCustomization.remove(index);
    } else {
      selectedCustomization.add(index);
      print('selected Customization $selectedCustomization');
    }
    update();
  }

  bool isCustomizationSelected(String index) {
    return selectedCustomization.contains(index);
  }

  var languages = ['English', 'Arabic', 'French', 'Dutch','Urdu'];
  RxString selectedLanguage = "".obs;

  void changeLanguage(String index) {
    selectedLanguage.value = index;
    update();
  }

  void getLocation() async {
    ClientAuthController _controller = Get.put(ClientAuthController());


    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      showErrorMessage("Location Service Disabled");
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        showErrorMessage("Location permissions are denied");
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      showErrorMessage("Location permissions are permanently denied, we cannot request permissions.");
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }
    var loaction = await Geolocator.getCurrentPosition();
    print(loaction);


    _controller.clientModel.value.location = loaction.toString();
    _controller.clientModel.value.lat = loaction.latitude.toString();
    _controller.clientModel.value.lon = loaction.longitude.toString();

    _controller.firstTimeDataStore();

    Get.offAllNamed(ClientNavbar.route);

  }
}
