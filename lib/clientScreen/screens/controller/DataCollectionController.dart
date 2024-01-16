import 'package:get/get.dart';

class DataCollectionController extends GetxController {
  // Rx<ClintModel> clintModel=<ClintModel>.obs;

  RxList<int> selectedInterests = <int>[].obs;

  void toggleInterest(int index) {
    if (selectedInterests.contains(index)) {
      selectedInterests.remove(index);
    } else {
      selectedInterests.add(index);
    }
    update();
  }

  bool isInterestSelected(int index) {
    return selectedInterests.contains(index);
  }

  /// customization screen option
  RxList<int> selectedCustomization = <int>[].obs;

  void toggleCustomization(int index) {
    if (selectedCustomization.contains(index)) {
      selectedCustomization.remove(index);
    } else {
      selectedCustomization.add(index);
    }
    update();
  }

  bool isCustomizationSelected(int index) {
    return selectedCustomization.contains(index);
  }
}

// [
// {
//
//
// "uid": null,
// "name": null,
// "fatherName": null,
// "phoneNumber": null,
// "eamil":null,
// "Password":null,
// "address":null,
// "loginStatus":null,
// "intrest":null,
// "recommend":null,
// "language":null,
// "specialRequest":null,
// "location":null
//
//
// }
// ]
