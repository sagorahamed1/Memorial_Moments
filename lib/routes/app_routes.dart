import 'package:get/get.dart';
import 'package:memorial/views/screens/home/home_screen.dart';
import 'package:memorial/views/screens/notification/notification_screen.dart';
import 'package:memorial/views/screens/splash/splash_screen.dart';

class AppRoutes{
  static const String splashScreen = "/splashScreen";
  static const String homeScreen = "/homeScreen";
  static const String notificationScreen = "/notificationScreen";


  static List <GetPage> Routes ()=>[
    GetPage(name: AppRoutes.splashScreen, page: ()=>SplashScreen()),
    GetPage(name: AppRoutes.homeScreen, page: ()=>HomeScreen()),
    GetPage(name: AppRoutes.notificationScreen, page: ()=>NotificationScreen())
  ];

}
