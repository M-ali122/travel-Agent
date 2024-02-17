import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/model/requestModel.dart';

import '../../../clientScreen/clientHome/model/recomModel.dart';
import '../../../res/String.dart';

class ManagerRequestController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    loadHomeTask();
    loadrequest();
  }

  void statusChanger(String id, status, userid) async {
    await firestore.collection(Strings().kRequest).doc(id.toString()).update({
      "accepterId": userid,
      "requestStatus": status,
      "currentTime": DateTime.now(),
    }).then((value) {
      if (status == 'Accepted') {
        Get.snackbar('Request Accepted', 'The request has been accepted.',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.white
        );
      } else if (status == 'Cancelled') {
        Get.snackbar('Request Cancelled', 'The request has been cancelled.',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.white);
      }
      loadrequest();
      print('Request Accepted');
    });
  }

  Rx<RequestModel> request = RequestModel().obs;
  var firestore = FirebaseFirestore.instance;

  final RxList<RecommandModel> recommandList = <RecommandModel>[].obs;

  void loadRecommended() async {
    recommandList.clear();
    CollectionReference reference = firestore.collection(Strings().kRecom);
    QuerySnapshot querySnapshot = await reference.get();
    if (querySnapshot.docs.isNotEmpty) {
      querySnapshot.docs.forEach((element) {
        RecommandModel recommandModel =
        RecommandModel.fromJson(element.data() as Map<String, dynamic>);
        recommandList.add(recommandModel);
        update();
      });
    } else {}
  }

  RxList<RequestModel> reqList = <RequestModel>[].obs;

  // void loadrequest() async {
  //   print("LoadReq");
  //   reqList.clear();
  //   var res = await firestore.collection(Strings().kRequest).get();
  //
  //   if (res.docs.isNotEmpty) {
  //     DateTime today = DateTime.now();
  //     res.docs.forEach((element) {
  //
  //       RequestModel requestModel = RequestModel.fromJson(element.data());
  //       reqList.add(requestModel);
  //     });
  //     update();
  //   } else {}
  // }

  void loadrequest() async {
    try {
      // var box = GetStorage();
      // var id = box.read('uid');
      reqList.clear();

      var res = await firestore
          .collection(Strings().kRequest)
          .get();

      print('Number of documents received: ${res.docs.length}');

      if (res.docs.isNotEmpty) {
        // res.docs.forEach((element) {
        //   try {
        //     print('Request data by new: ${element.data()}');
        //     RequestModel requestModel = RequestModel.fromJson(element.data());
        //     reqList.add(requestModel);
        //   } catch (e) {
        //     print('Error parsing request data: $e');
        //   }
        // });
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



  List<RequestModel> filterRequestsByCurrentDate() {
    List<RequestModel> filteredList = [];
    reqList.forEach((request) {
      if (request.recommendation.returnDate != null &&
          request.recommendation.returnDate.day == DateTime.now().day &&
          request.recommendation.returnDate.month == DateTime.now().month &&
          request.recommendation.returnDate.year == DateTime.now().year) {
        filteredList.add(request); // Add the request to the filtered list
        print('request date is $filteredList ${request.depDate}');
      }
    });
    return filteredList; // Return the filtered list
  }

  int priorityToday = 0;
  int todoTask = 0;
  int complected = 0;

  void loadHomeTask() async {
    var box = GetStorage();
    var id = box.read('uid');
    try {
      var res = await firestore.collection(Strings().kRequest).where("accepterId",isEqualTo: id).get();
      if (res.docs.isNotEmpty) {
        DateTime today = DateTime.now();
        res.docs.forEach((element) {
          Timestamp timestamp = element.data()["requestDetail"]["depDate"]; // Assuming 'timestamp' is the field storing the server timestamp
          DateTime requestDate = timestamp.toDate();

          if (requestDate.year == today.year &&
              requestDate.month == today.month &&
              requestDate.day == today.day) {
            element.reference.update({
              "requestStatus": "Accepted"
            });
            priorityToday += 1;
          } else if (requestDate.isAfter(today)) {
            todoTask += 1;
          } else {
            element.reference.update({
              "requestStatus": "Completed"
            });
            complected += 1;
          }

          update();
        });
      }
    } catch (e) {
      print(e);
    }
  }


  List<RequestModel> beforeDate() {
    List<RequestModel> beforeList = [];
    reqList.forEach((request) {
      if (request.recommendation != null &&
          request.recommendation.depDate != null) {
        DateTime returnDateTime = request.recommendation.depDate.toDate();
        if (returnDateTime.isBefore(DateTime.now())) {
          beforeList.add(request);
          print('request date is $beforeList ${request.depDate}');
        }
      }
    });
    return beforeList;
  }


  String getCurrentDayAndDate() {
    DateTime now = DateTime.now();
    String dayOfWeek = DateFormat('EEE').format(now).toUpperCase();
    String formattedDate = DateFormat('dd MMM').format(now).toUpperCase();
    return '$dayOfWeek $formattedDate';
  }


}