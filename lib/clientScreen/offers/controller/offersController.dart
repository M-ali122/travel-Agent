// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:get/get.dart';
//
// import '../model/offersModel.dart';
//
// class OffersController extends GetxController{
//
//   // @override
//   // void onInit() {
//   //   super.onInit();
//   //   loadRecommended(); // Call your function here
//   //   // loadOffers();
//   // }
//
//   Rx<RecommandModel>  request = RecommandModel().obs;
//
//
//   final RxList<OfferModel> offerlist = <OfferModel>[].obs;
//
//   void loadOffers ()async{
//     //recommandList.clear();
//     CollectionReference reference = firestore.collection(Strings().kOffers);
//     QuerySnapshot querySnapshot = await reference.get();
//     //var res = await firestore.collection(Strings().kRecom).get();
//     if(querySnapshot.docs.isNotEmpty){
//       print('loadOffers function work');
//       // for (var data in )
//
//       querySnapshot.docs.forEach((element) {
//
//         OfferModel offerModel =
//         OfferModel.fromJson(element.data() as Map<String,dynamic>);
//         offerlist.add(offerModel);
//         print('your offers data is ${element.data()}');
//         update();
//       });
//
//     }else{
//       print('loadOffers function not work');
//     }
//
//   }
//
//
// }