import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/model/requestModel.dart';
import 'package:travelagentapp/helpers/views/toast.dart';
import 'package:travelagentapp/res/String.dart';

// class ClientScreenController extends GetxController {
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//
//     loadClients();
//   }
//
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//
//   RxList<RequestModel> loadClient = <RequestModel>[].obs;
//   void loadClients() async {
//     var box = GetStorage();
//     var uid = box.read("uid");
//     try {
//       var res = await firestore
//           .collection(Strings().kRequest)
//           .where("accepterId", isEqualTo: uid.toString())
//           .get();
//       if (res.docs.isNotEmpty) {
//         print("Ds");
//         for (var doc in res.docs) {
//           var data = doc.data(); // Extract data from the DocumentSnapshot
//           // Assuming RequestModel has a constructor that accepts Map<String, dynamic>
//           var requestModel = RequestModel.fromJson(data);
//           loadClient.add(requestModel);
//         }
//         // Move update() out of the loop to update the UI only once after adding all data
//         update();
//       }
//     } catch (e) {
//       showErrorMessage("Check Connection");
//     }
//   }
//
//
//
//   // Future<Map<String, dynamic>?> getUserData(String userId) async {
//   //   try {
//   //     var userDoc = await firestore.collection(Strings().kUser).doc(userId).get();
//   //     if (userDoc.exists) {
//   //
//   //       print(userDoc.data());
//   //       var data = userDoc.data();
//   //       var name = data!["name"];
//   //       print(name);
//   //       return name;
//   //     } else {
//   //       print('User with ID $userId does not exist');
//   //       return null;
//   //     }
//   //   } catch (e) {
//   //     print('Error fetching user data: $e');
//   //     return null;
//   //   }
//   // }
//
//
//
// }

class ClientScreenController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  RxList<RequestModel> loadClient = <RequestModel>[].obs;
  Set<String> clientIds = {}; // Set to store unique client IDs

  @override
  void onInit() {
    super.onInit();
    loadClients();
  }

  void loadClients() async {
    var box = GetStorage();
    var uid = box.read("uid");
    try {
      var res = await firestore
          .collection(Strings().kRequest)
          .where("accepterId", isEqualTo: uid.toString())
          .get();
      if (res.docs.isNotEmpty) {
        for (var doc in res.docs) {
          var data = doc.data();
          var clientId = data["clientId"]; // Assuming clientId is present in data

          if (!clientIds.contains(clientId)) {
            // If client is not already added, add them to the list
            var requestModel = RequestModel.fromJson(data);
            loadClient.add(requestModel);
            clientIds.add(clientId); // Add client ID to the set
          }
        }
        update();
      } else {
        showErrorMessage("No requests found.");
      }
    } catch (e) {
      print("Error: $e");
      if (loadClient.isEmpty) {
        showErrorMessage("Failed to fetch requests.");
      }
    }
  }
}