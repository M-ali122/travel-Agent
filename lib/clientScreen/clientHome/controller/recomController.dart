import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../res/String.dart';
import '../model/recomModel.dart';

class HomeController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    loadRecommended(); // Call your function here
  }

  Rx<RecommandModel>  request = RecommandModel().obs;


  var firestore = FirebaseFirestore.instance;

  Future<void> addRequest() async {
    try {
      await firestore.collection(Strings().kRecom).add(request.toJson());
    } catch (e) {
      print('Error adding request: $e');
    }
  }



  final RxList<RecommandModel> recommandList = <RecommandModel>[].obs;

  void loadRecommended ()async{
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
      // print('your data is ${element.data()}');
      update();
    });

   }else{
     print('loadRecommended function not work');
   }
    
  }
  
  
  
}
