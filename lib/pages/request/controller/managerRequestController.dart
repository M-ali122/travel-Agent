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
import 'package:travelagentapp/clientScreen/clientRequestScreen/model/requestModel.dart';

import '../../../clientScreen/clientHome/model/recomModel.dart';
import '../../../res/String.dart';

class ManagerRequestController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    loadrequest();
  }






void statusChanger (String id,status,userid) async {

    await firestore.collection(Strings().kRequest).doc(id.toString()).update({
      "accepterId": userid,
      "requestStatus": status,
      "currentTime": DateTime.now(),
    }).then((value) {
      if (status == 'Accepted') {
        Get.snackbar(
            'Request Accepted',
            'The request has been accepted.',
        snackPosition: SnackPosition.BOTTOM
        );
      } else if (status == 'Cancelled') {
        Get.snackbar(
            'Request Cancelled',
            'The request has been cancelled.',
            snackPosition: SnackPosition.BOTTOM
        );
      }
      loadrequest();
      print('Request Accepted');
    });



}

  Rx<RequestModel>  request = RequestModel().obs;
  var firestore = FirebaseFirestore.instance;

  final RxList<RecommandModel> recommandList = <RecommandModel>[].obs;

  void loadRecommended ()async{
    recommandList.clear();
    CollectionReference reference = firestore.collection(Strings().kRecom);
    QuerySnapshot querySnapshot = await reference.get();
    if(querySnapshot.docs.isNotEmpty){
      querySnapshot.docs.forEach((element) {

        RecommandModel recommandModel =
        RecommandModel.fromJson(element.data() as Map<String,dynamic>);
        recommandList.add(recommandModel);
        update();
      });

    }else{
    }

  }


  RxList<RequestModel> reqList = <RequestModel>[].obs;

  void loadrequest ()async{
    var box = GetStorage();
    var id = box.read('uid');
    reqList.clear();
    var res = await firestore.collection(Strings().kRequest).get();

    if(res.docs.isNotEmpty){
      res.docs.forEach((element) {
        RequestModel requestModel =
        RequestModel.fromJson(element.data());
        print('element data is ${element.data()}');
        reqList.add(requestModel);
        print('your element ${element.data()}');


      });
      update();
    }else{
    }


  }

  //
  // List<RequestModel> filterRequestsByCurrentDate() {
  //   List<RequestModel> filteredList = [];
  //   reqList.forEach((request) {
  //     // Check if departureDate is not null and is today's date
  //     if (request.recommendation.returnDate != null &&
  //         request.recommendation.returnDate.day == DateTime.now().day &&
  //         request.recommendation.returnDate.month == DateTime.now().month &&
  //         request.recommendation.returnDate.year == DateTime.now().year) {
  //       filteredList.add(request); // Add the request to the filtered list
  //       print('request date is $filteredList ${request.depDate}');
  //     }
  //   });
  //   return filteredList; // Return the filtered list
  // }

  List<RequestModel> filterRequestsByCurrentDate() {
    List<RequestModel> filteredList = [];
    reqList.forEach((request) {
      // Check if recommendation.returnDate is not null and is today's date
      if (request.recommendation != null &&
          request.recommendation.depDate != null) {
        // Convert Timestamp to DateTime
        DateTime returnDateTime = request.recommendation.depDate.toDate();
        if (returnDateTime.day == DateTime.now().day &&
            returnDateTime.month == DateTime.now().month &&
            returnDateTime.year == DateTime.now().year) {
          filteredList.add(request); // Add the request to the filtered list
          print('request date is $filteredList ${request.depDate}');
        }
      }
    });
    return filteredList; // Return the filtered list
  }


  List<RequestModel> afterDate() {
    List<RequestModel> afterList = [];
    reqList.forEach((request) {
      if (request.recommendation != null &&
          request.recommendation.depDate != null) {
        DateTime returnDateTime = request.recommendation.depDate.toDate();
        // Check if the recommendation departure date is after today
        if (returnDateTime.isAfter(DateTime.now())) {
          afterList.add(request);
          print('request date is $afterList ${request.depDate}');
        }
      }
    });
    return afterList;
  }


  List<RequestModel> beforeDate() {
    List<RequestModel> beforeList = [];
    reqList.forEach((request) {
      if (request.recommendation != null &&
          request.recommendation.depDate != null) {
        DateTime returnDateTime = request.recommendation.depDate.toDate();
        // Check if the recommendation departure date is after today
        if (returnDateTime.isBefore(DateTime.now())) {
          beforeList.add(request);
          print('request date is $beforeList ${request.depDate}');
        }
      }
    });
    return beforeList;
  }

}
