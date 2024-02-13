import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../res/String.dart';
import '../../offers/model/offersModel.dart';
import '../model/recomModel.dart';

class HomeController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    loadRecommended(); // Call your function here
    loadOffers();
  }

  Rx<RecommandModel>  request = RecommandModel().obs;
  RxMap requestStatus = {}.obs; // Map to track request status


  var firestore = FirebaseFirestore.instance;

  Future<void> addRequest() async {
    try {
      await firestore.collection(Strings().kRecom).add(request.toJson());
    } catch (e) {
      print('Error adding request: $e');
    }
  }


  bool isRequestFavorited(String requestId) {
    var box = GetStorage();
    var id = box.read('uid');

    // Check if the request ID is present in the user's favorites list
    return recommandList
        .any((recommendation) => recommendation.recommandId.toString() == requestId &&
        recommendation.fav.contains(id));
  }


  void addfav (String rId)async{

    var box = GetStorage();
    var id  = box.read('uid');


    await firestore.collection(Strings().kRecom).doc(rId.toString()).update(
        {
          'fav' : FieldValue.arrayUnion([id]),
        }
    ).then((value) {
      loadRecommended();
    });


  }

  void removeFav(String rId)async {
    var box = GetStorage();
    var id = box.read('uid');

   await firestore.collection(Strings().kRecom).doc(rId).update(
      {
        'fav': FieldValue.arrayRemove([id]),
      },
    ).then((value) {
      loadRecommended();
   });
  }




  final RxList<RecommandModel> recommandList = <RecommandModel>[].obs;

  void loadRecommended ()async{
    recommandList.clear();
    CollectionReference reference = firestore.collection(Strings().kRecom);
    QuerySnapshot querySnapshot = await reference.get();
    //var res = await firestore.collection(Strings().kRecom).get();
   if(querySnapshot.docs.isNotEmpty){
     print('loadRecommended function work');
     // for (var data in )

    querySnapshot.docs.forEach((element) {

      RecommandModel recommandModel =
      RecommandModel.fromJson(element.data() as Map<String,dynamic>);
      recommandList.add(recommandModel);
      requestStatus[recommandModel.recommandId.toString()] =
      false; // Initialize request status for each item
      print('your data is ${element.data()}');
      update();
    });

   }else{
     print('loadRecommended function not work');
   }

  }


  final RxList<OfferModel> offerlist = <OfferModel>[].obs;

  void loadOffers ()async{
    //recommandList.clear();
    CollectionReference reference = firestore.collection(Strings().kOffers);
    QuerySnapshot querySnapshot = await reference.get();
    //var res = await firestore.collection(Strings().kRecom).get();
    if(querySnapshot.docs.isNotEmpty){
      print('loadOffers function work');
      // for (var data in )

      querySnapshot.docs.forEach((element) {

        OfferModel offerModel =
        OfferModel.fromJson(element.data() as Map<String,dynamic>);
        offerlist.add(offerModel);
        print('your offers data is ${element.data()}');
        update();
      });

    }else{
      print('loadOffers function not work');
    }

  }
}
