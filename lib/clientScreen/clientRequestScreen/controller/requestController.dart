import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/clientScreen/ClientprofileScreen/Controller/client_profile_controller.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/model/requestModel.dart';
import '../../../res/String.dart';

class RequestController extends GetxController {
  ClientProfileController profileController =
      Get.put(ClientProfileController());

  bool requestSent = false;


  @override
  void onInit() {
    super.onInit();
    request.value = RequestModel();
    loadrequest();
  }

  Rx<RequestModel> request = RequestModel().obs;
  var firestore = FirebaseFirestore.instance;


  Future<void> addRequest(Map<String,dynamic> model) async {
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
      requestData['requestDetail'] = model;
      requestData['requestStatus'] = 'Pending';
      requestData['accepterId'] = null;
      requestData['requestId'] = id;
      requestData['type'] = null;



      var box = GetStorage();
      String uid = box.read("uid");
      requestData['uid'] = uid.toString();
      await FirebaseFirestore.instance
          .collection(Strings().kRequest)
          .doc(id.toString())
          .set(requestData);
       requestSent = true;
      Get.back();
      Get.snackbar(
        'Success',
        'Request added successfully',
        duration: const Duration(seconds: 2),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.white
      );

      update();
    } catch (e) {
      Get.back();

      Get.snackbar(
        'Error.',
        'Failed to add request. Please try again.',
        duration: const Duration(seconds: 2),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.white
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
    } else {}
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

  // void loadrequest() async {
  //   var box = GetStorage();
  //   var id = box.read('uid');
  //   reqList.clear();
  //
  //   var res = await firestore
  //       .collection(Strings().kRequest)
  //       .where("uid", isEqualTo: id.toString())
  //       .get();
  //
  //
  //    print('res is in model $res');
  //
  //   if (res.docs.isNotEmpty) {
  //     res.docs.forEach((element) {
  //       RequestModel requestModel = RequestModel.fromJson(element.data());
  //       reqList.add(requestModel);
  //     });
  //     update();
  //   } else {}
  //
  //
  //
  // }

  // void loadrequest() async {
  //   try {
  //     var box = GetStorage();
  //     var id = box.read('uid');
  //     reqList.clear();
  //
  //     var res = await firestore
  //         .collection(Strings().kRequest)
  //         .where("uid", isEqualTo: id.toString())
  //         .get();
  //
  //     print('res is in model ${res.docs.length}');
  //
  //     if (res.docs.isNotEmpty) {
  //       res.docs.forEach((element) {
  //         print('Request data by new: ${element.data()}');
  //         RequestModel requestModel = RequestModel.fromJson(element.data());
  //         reqList.add(requestModel);
  //
  //         print('new reqlist is ${reqList.length}');
  //       });
  //       update();
  //     } else {
  //       print('No requests found');
  //     }
  //   } catch (e) {
  //     print('Error loading requests: $e');
  //   }
  // }

  // void loadrequest() async {
  //   try {
  //     var box = GetStorage();
  //     var id = box.read('uid');
  //     reqList.clear();
  //
  //     var res = await firestore
  //         .collection(Strings().kRequest)
  //         .where("uid", isEqualTo: id.toString())
  //         .get();
  //
  //     print('Number of documents received: ${res.docs.length}');
  //
  //     if (res.docs.isNotEmpty) {
  //       // res.docs.forEach((element) {
  //       //   try {
  //       //     print('Request data by new: ${element.data()}');
  //       //     RequestModel requestModel = RequestModel.fromJson(element.data());
  //       //     reqList.add(requestModel);
  //       //   } catch (e) {
  //       //     print('Error parsing request data: $e');
  //       //   }
  //       // });
  //       res.docs.forEach((element) {
  //         final requestData = element.data();
  //         if (requestData != null) {
  //           try {
  //             print('Request data by new: $requestData');
  //             RequestModel requestModel = RequestModel.fromJson(requestData);
  //             reqList.add(requestModel);
  //           } catch (e) {
  //             print('Error parsing request data: $e');
  //           }
  //         } else {
  //           print('Document data is null');
  //         }
  //       });
  //       print('Updated reqList length: ${reqList.length}');
  //       update();
  //     } else {
  //       print('No requests found');
  //     }
  //   } catch (e) {
  //     print('Error loading requests: $e');
  //   }
  // }

  void loadrequest() async {
    try {
      var box = GetStorage();
      var id = box.read('uid');
      reqList.clear(); // Clear reqList before populating new data

      var res = await firestore
          .collection(Strings().kRequest)
          .where("uid", isEqualTo: id.toString())
          .get();

      print('Number of documents received: ${res.docs.length}');

      if (res.docs.isNotEmpty) {
        res.docs.forEach((element) {
          final requestData = element.data();
          if (requestData != null) {
            try {
              print('Request data by new: $requestData');
              RequestModel requestModel = RequestModel.fromJson(requestData);
              reqList.add(requestModel);
            } catch (e) {
              print('Error parsing request data: $e');
            }
          } else {
            print('Document data is null');
          }
        });
        print('Updated reqList length: ${reqList.length}');
        update();
      } else {
        print('No requests found');
      }
    } catch (e) {
      print('Error loading requests: $e');
    }
  }

  Rx<RequestModel> offeresRequest = RequestModel().obs;

  Future<void> addOffersRequest(String offersMessage) async {
    try {
      _toggle();
      var id = DateTime.now().microsecondsSinceEpoch;
      Map<String, dynamic> requestData = request.value.recommendation ?? {};
      requestData['departureTime'] =
          '${departureTime.value.hour}:${departureTime.value.minute}';
      requestData['returnTime'] =
          '${returnTime.value.hour}:${returnTime.value.minute}';

      requestData['departureDate'] = departureDate.value;
      requestData['returnDate'] = returnDate.value;
      requestData['numberOfPeople'] = selectedNumberOfPeople.value;
      // requestData['requestDetail'] = model.toJson();
      requestData['requestStatus'] = 'Pending';
      requestData['accepterId'] = profileController.user.value.managerId;
      requestData['requestId'] = id;
      requestData['description'] = offersMessage;
      requestData['type'] = 'TravelRequest';

      var box = GetStorage();
      String uid = box.read("uid");
      requestData['uid'] = uid.toString();
      await FirebaseFirestore.instance
          .collection(Strings().kRequest)
          .doc(id.toString())
          .set(requestData);
      Get.back();
      Get.snackbar('Success', 'Offers added successfully',
          duration: const Duration(seconds: 2),
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.white);

      update();
    } catch (e) {
      _toggle();
      Get.back();
      Get.snackbar('Error', 'Failed to add Offers. Please try again.',
          duration: const Duration(seconds: 2),
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.white);
    }
  }

  Rx<RequestModel> meetGreetOffers = RequestModel().obs;

  Future<void> addMeetGreetOffers(
    String offersMessage,
  ) async {
    _toggle();
    try {
      var id = DateTime.now().microsecondsSinceEpoch;
      Map<String, dynamic> requestData = request.value.recommendation ?? {};

      requestData['requestStatus'] = 'Pending';
      requestData['description'] = offersMessage;
      requestData['type'] = 'Custom';
      requestData['accepterId'] = profileController.user.value.managerId;
      requestData['requestId'] = id;
      requestData['currentTime'] = DateTime.now();

      var box = GetStorage();
      String uid = box.read("uid");
      requestData['uid'] = uid.toString();
      await FirebaseFirestore.instance
          .collection(Strings().kRequest)
          .doc(id.toString())
          .set(requestData);
      Get.back();
      Get.snackbar('Success', 'Offers added successfully',
          duration: const Duration(seconds: 2),
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.white);
      update();
    } catch (e) {
      _toggle();
      Get.back();
      Get.snackbar('Error', 'Failed to add Offers. Please try again.',
          duration: const Duration(seconds: 2),
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.white);
    }
  }

  RxBool busy = false.obs;
  bool isBusy() => busy.isTrue;
  void _toggle() {
    busy.toggle();
    update();
  }


  void addDataFromTextField(String text) {
    request.update((val) {
      val!.recommendation['textFieldData'] = text;
    });
  }

}
