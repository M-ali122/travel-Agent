// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:travelagentapp/clientScreen/clientRequestScreen/model/requestModel.dart';
//
// import '../../../res/String.dart';
// import '../../clientHome/model/recomModel.dart';
//
//
// class RequestController extends GetxController {
//
//   Rx<RequestModel>  request = RequestModel().obs;
//   var firestore = FirebaseFirestore.instance;
//
//   Future<void> addRequest(RecommendedModel model) async {
//     try {
//       Map<String, dynamic> requestData = request.value.toJson();
//       requestData['departureTime'] = '${departureTime.hour}:${departureTime.minute}';
//       requestData['returnTime'] = '${returnTime.hour}:${returnTime.minute}';
//
//       requestData['departureDate'] = departureDate;
//       requestData['returnDate'] = returnDate;
//       requestData['numberOfPeople'] = selectedNumberOfPeople.value;
//       requestData['requestDetail'] = model.toJson();
//
//       await FirebaseFirestore.instance.collection(Strings().kRequest).add(requestData);
//       print('request adding successfully');
//       update();
//     } catch (e) {
//       print('Error adding request: $e');
//     }
//   }
//
//   Rx<DateTime> departureDate = DateTime.now().obs;
//   Rx<TimeOfDay> departureTime = TimeOfDay.now().obs;
//   Rx<DateTime> returnDate = DateTime.now().obs;
//   Rx<TimeOfDay> returnTime = TimeOfDay.now().obs;
//   RxInt selectedNumberOfPeople = 1.obs;
//
//   List<int> numberOfPeopleOptions = [1, 2, 3, 4, 5];
//
//   Future<void> selectDepartureDate(BuildContext context) async {
//     final DateTime picked = (await showDatePicker(
//       context: context,
//       initialDate: departureDate,
//       firstDate: DateTime.now(),
//       lastDate: DateTime(2101),
//     ))!;
//     if (picked != null && picked != departureDate) {
//       departureDate = picked;
//       print('Departure date selected: $departureDate');
//       update(); // Notify the UI about the change
//     } else {
//       print('Departure date selection canceled');
//     }
//   }
//
//
//   Future<void> selectReturnDate(BuildContext context) async {
//     final DateTime picked = (await showDatePicker(
//       context: context,
//       initialDate: returnDate,
//       firstDate: DateTime.now(),
//       lastDate: DateTime(2101),
//     ))!;
//     if (picked != null && picked != returnDate) {
//       returnDate = picked;
//       print('not work');
//       update();
//     }
//     print('work');
//   }
//
//   Future<void> selectDepartureTime(BuildContext context) async {
//     final TimeOfDay picked = (await showTimePicker(
//       context: context,
//       initialTime: departureTime,
//     ))!;
//     if (picked != null && picked != departureTime) {
//       departureTime = picked;
//       update();
//     }
//   }
//
//   Future<void> selectReturnTime(BuildContext context) async {
//     final TimeOfDay picked = (await showTimePicker(
//       context: context,
//       initialTime: returnTime,
//     ))!;
//     if (picked != null && picked != returnTime) {
//       returnTime = picked;
//       update();
//     }
//   }
//
//   void updateNumberOfPeople(int value) {
//     int selectedIndex = numberOfPeopleOptions.indexOf(value);
//     numberOfPeopleOptions.removeAt(selectedIndex);
//     numberOfPeopleOptions.insert(0, value);
//     selectedNumberOfPeople.value = value;
//     print('Selected number of people: $selectedNumberOfPeople');
//     update();
//   }
//
//
//
// }
//

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/clientScreen/ClientprofileScreen/Controller/client_profile_controller.dart';
import 'package:travelagentapp/clientScreen/clientAuth/controller/clientAuthController.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/model/requestModel.dart';
import 'package:travelagentapp/pages/auth/controller/auth_controller.dart';

import '../../../res/String.dart';
import '../../clientHome/model/recomModel.dart';

class RequestController extends GetxController {

  ClientProfileController profileController = Get.put(ClientProfileController());

  @override
  void onInit() {
    super.onInit();
    request.value = RequestModel();
    loadrequest();
  }

  Rx<RequestModel> request = RequestModel().obs;
  var firestore = FirebaseFirestore.instance;
  Future<void> addRequest(RecommandModel model) async {
    try {
      var id = DateTime.now().microsecondsSinceEpoch;
      // request.value.requestId = id.toString();
      Map<String, dynamic> requestData = request.value.recommendation ?? {};
      requestData['departureTime'] =
          '${departureTime.value.hour}:${departureTime.value.minute}';
      requestData['returnTime'] =
          '${returnTime.value.hour}:${returnTime.value.minute}';

      requestData['departureDate'] = departureDate.value;
      requestData['returnDate'] = returnDate.value;
      requestData['numberOfPeople'] = selectedNumberOfPeople.value;
      requestData['requestDetail'] = model.toJson();
      requestData['requestStatus'] = 'Pending';
      requestData['accepterId'] = null;
      requestData['requestId'] = id;

      var box = GetStorage();
      String uid = box.read("uid");
      requestData['uid'] = uid.toString();
      await FirebaseFirestore.instance
          .collection(Strings().kRequest)
          .doc(id.toString())
          .set(requestData);
      Get.back();
      Get.snackbar(
        'Success',
        'Request added successfully',
        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.BOTTOM,
      );

      update();
    } catch (e) {
      Get.back();



      Get.snackbar(
        'Error.',
        'Failed to add request. Please try again.',
        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  Rx<DateTime> departureDate = DateTime.now().obs;
  Rx<TimeOfDay> departureTime = TimeOfDay.now().obs;
  Rx<DateTime> returnDate = DateTime.now().obs;
  Rx<TimeOfDay> returnTime = TimeOfDay.now().obs;
  RxInt selectedNumberOfPeople = 1.obs;

  List<int> numberOfPeopleOptions = [1, 2, 3, 4, 5];

  Future<void> selectDepartureDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: departureDate.value,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    ))!;
    if (picked != null && picked != departureDate.value) {
      departureDate.value = picked;
      update(); // Notify the UI about the change
    } else {
    }
  }

  Future<void> selectReturnDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: returnDate.value,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    ))!;
    if (picked != null && picked != returnDate.value) {
      returnDate.value = picked;
      update();
    }

  }

  Future<void> selectDepartureTime(BuildContext context) async {
    final TimeOfDay picked = (await showTimePicker(
      context: context,
      initialTime: departureTime.value,
    ))!;
    if (picked != null && picked != departureTime.value) {
      departureTime.value = picked;
      update();
    }
  }

  Future<void> selectReturnTime(BuildContext context) async {
    final TimeOfDay picked = (await showTimePicker(
      context: context,
      initialTime: returnTime.value,
    ))!;
    if (picked != null && picked != returnTime.value) {
      returnTime.value = picked;
      update();
    }
  }

  void updateNumberOfPeople(int value) {
    int selectedIndex = numberOfPeopleOptions.indexOf(value);
    numberOfPeopleOptions.removeAt(selectedIndex);
    numberOfPeopleOptions.insert(0, value);
    selectedNumberOfPeople.value = value;
    update();
  }

  RxList<RequestModel> reqList = <RequestModel>[].obs;

  void loadrequest() async {
    var box = GetStorage();
    var id = box.read('uid');
    reqList.clear();

    var res = await firestore
        .collection(Strings().kRequest)
        .where("uid", isEqualTo: id.toString())
        .get();

    if (res.docs.isNotEmpty) {
      res.docs.forEach((element) {
        RequestModel requestModel = RequestModel.fromJson(element.data());
        reqList.add(requestModel);
      });
      update();
    } else {}
  }





  void addDataFromTextField(String text) {
    // Example of adding data to the recommendation field
    request.update((val) {
      val!.recommendation['textFieldData'] = text;
    });
  }

  Rx<RequestModel> offeresRequest = RequestModel().obs;

  Future<void> addOffersRequest(String offersMessage,) async {
    try {
      var id = DateTime.now().microsecondsSinceEpoch;
      Map<String, dynamic> requestData = request.value.recommendation ?? {};
      requestData['departureTime'] =
      '${departureTime.value.hour}:${departureTime.value.minute}';
      requestData['returnTime'] =
      '${returnTime.value.hour}:${returnTime.value.minute}';

      requestData['offersMessage'] = offersMessage;
      requestData['departureDate'] = departureDate.value;
      requestData['returnDate'] = returnDate.value;
      requestData['numberOfPeople'] = selectedNumberOfPeople.value;
       // requestData['requestDetail'] = model.toJson();
      requestData['requestStatus'] = 'Pending';
      requestData['accepterId'] = profileController.user.value.managerId;
      requestData['requestId'] = id; // Adding text field data

      var box = GetStorage();
      String uid = box.read("uid");
      requestData['uid'] = uid.toString();
      await FirebaseFirestore.instance
          .collection(Strings().kOfferRequest)
          .doc(id.toString())
          .set(requestData);
      Get.back();
      Get.snackbar(
        'Success',
        'Offers added successfully',
        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.BOTTOM,
      );

      update();

    }catch (e){
      Get.back();
      Get.snackbar(
        'Error',
        'Failed to add Offers. Please try again.',
        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }


  Rx<RequestModel> meetGreetOffers = RequestModel().obs;

  Future<void> addMeetGreetOffers(String offersMessage,) async {
    try {
      var id = DateTime.now().microsecondsSinceEpoch;
      Map<String, dynamic> requestData = request.value.recommendation ?? {};

      requestData['offersMessage'] = offersMessage;
      requestData['requestStatus'] = 'Pending';

      requestData['accepterId'] = profileController.user.value.managerId;
      requestData['requestId'] = id;
      var box = GetStorage();
      String uid = box.read("uid");
      requestData['uid'] = uid.toString();
      await FirebaseFirestore.instance
          .collection(Strings().kOfferRequest)
          .doc(id.toString())
          .set(requestData);
      Get.back();
      Get.snackbar(
        'Success',
        'Offers added successfully',
        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.BOTTOM,
      );
      update();

    }catch (e){
      Get.back();
      Get.snackbar(
        'Error',
        'Failed to add Offers. Please try again.',
        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }




}
