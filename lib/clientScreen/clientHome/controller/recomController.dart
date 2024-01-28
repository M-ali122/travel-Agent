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

  Rx<RecommendedModel>  request = RecommendedModel().obs;
  var firestore = FirebaseFirestore.instance;

  Future<void> addRequest() async {
    try {
      await firestore.collection(Strings().kRecom).add(request.toJson());
    } catch (e) {
      print('Error adding request: $e');
    }
  }
  
  
  
  List laodRecommedList = [];

  void loadRecommended ()async{
    CollectionReference reference = firestore.collection(Strings().kRecom);
    QuerySnapshot querySnapshot = await reference.get();
    //var res = await firestore.collection(Strings().kRecom).get();
   if(querySnapshot.docs.isNotEmpty){
     print('loadRecommended function work');

    querySnapshot.docs.forEach((element) {
      laodRecommedList.add(element.data());
      print('your data is ${element.data()}');
      update();
    });

   }else{
     print('loadRecommended function not work');
   }
    
  }
  
  
  
}
