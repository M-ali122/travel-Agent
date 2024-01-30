import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {


  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> hanldeBackgroundMessage (RemoteMessage message) async{

    print('title : ${message.notification!.title}');
    print('Body : ${message.notification!.body}');
    print('Payload :${message.data}');

  }

  Future<void> initNotification () async {

    await _firebaseMessaging.requestPermission();
    final fCToken = await _firebaseMessaging.getToken();
    
    print('fC token $fCToken');

    FirebaseMessaging.onBackgroundMessage(hanldeBackgroundMessage);

  }

}