import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import '../../clientAuth/clientAutModel/clientModel.dart';
import '../../clientAuth/clientAuthController/clientAuthController.dart';

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
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    var loaction = await Geolocator.getCurrentPosition();
    print(loaction);


    _controller.clientModel.value.location = loaction.toString();
    _controller.firstTimeDataStore();

  }
}
