// ignore_for_file: prefer_const_constructors, unused_import, prefer_typing_uninitialized_variables

import 'package:captain_app/accountingFlow/AccountingCaptainScaffold.dart';
import 'package:captain_app/accountingFlow/screens/sale/saleInvoice/SaleInvoiceScaffold.dart';
import 'package:captain_app/allUsersAuthentication/splash/SplashScaffold.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/DashboardScaffold.dart';
import 'package:captain_app/managerFlow/screen/deliveryOrders/DeliveryOrderScaffold.dart';
import 'package:captain_app/utils/customObject/CustomObject.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'managerFlow/screen/deliveryOrders/child/newOrders/NewordersScaffold.dart';
import 'managerFlow/screen/deliveryOrders/child/newOrders/child/child/CancelOrderScaffold.dart';
import 'managerFlow/screen/deliveryOrders/child/newOrders/child/child/view/child/ReviewCancelOrderScaffold.dart';
import 'managerFlow/screen/deliveryOrders/child/tobeShipped/managerShipped/ManagerShippedScaffold.dart';

//import 'deliveryFlow/constant/ConstantColor.dart';
var deviceToken;

//

/*const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    //'This channel is used for important notifications.', // description
    importance: Importance.high,
    playSound: true);
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('A bg message just showed up :  ${message.messageId}');
}*/

Future<void> main() async {
  /*WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp();
   await Firebase.initializeApp();
*/
/*  FirebaseMessaging.instance.getToken().then((newToken){
    CustomObject.deviceToken = newToken!;
    print("----<<<<>>>>> Token Device  " + newToken.toString() + "<<<Hello");
  });*/

  /* FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );*/

  runApp(GetMaterialApp(
      //translations: LocaleStrings(),
      locale: Locale("en", "US"),
      fallbackLocale: Locale("en", "US"),
      debugShowCheckedModeBanner: false,
      title: 'My Gold Captain App',
      theme: ThemeData(

          //scaffoldBackgroundColor: ConstantColors.screenBackgroundColor
          ),

      home: SplashScaffold()
  ));
}
