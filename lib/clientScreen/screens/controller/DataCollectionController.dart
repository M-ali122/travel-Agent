import 'package:get/get.dart';

import '../../clientAuth/clientAutModel/clientModel.dart';

class DataCollectionController extends GetxController {
   // Rx<ClintModel> clintModel=<ClintModel>.obs;

  Rx<ClientModel> dataModel =  ClientModel().obs;

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

  var languages = ['English', 'Arabic', 'French', 'Dutch', 'French', 'Urdu'];
  RxInt selectedLanguage = 0.obs;

  void changeLanguage(int index){

    selectedLanguage.value = index;
    update();

  }



  void languagePrefence (String index){

  }




  void uploadData(){
    print('');

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
