import 'package:get/get.dart';
import 'package:memorial/views/screens/add_story/add_story_screen.dart';
import 'package:memorial/views/screens/home/home_screen.dart';
import 'package:memorial/views/screens/my_story_details/my_story_details_screen.dart';
import 'package:memorial/views/screens/notification/notification_screen.dart';
import 'package:memorial/views/screens/search/search_screen.dart';
import 'package:memorial/views/screens/splash/splash_screen.dart';
import 'package:memorial/views/screens/story/story-details_screen.dart';

class AppRoutes{
  static const String splashScreen = "/splashScreen";
  static const String homeScreen = "/homeScreen";
  static const String notificationScreen = "/notificationScreen";
  static const String storydetailsScreen = "/storydetailsScreen";
  static const String myStoryDetailsScreen = "/MyStoryDetailsScreen";
  static const String addStoryScreen = "/AddStoryScreen";
  static const String searchScreen = "/SearchScreen";


  static List <GetPage> Routes ()=>[
    GetPage(name: AppRoutes.splashScreen, page: ()=>SplashScreen()),
    GetPage(name: AppRoutes.homeScreen, page: ()=>HomeScreen()),
    GetPage(name: AppRoutes.notificationScreen, page: ()=>NotificationScreen()),
    GetPage(name: AppRoutes.myStoryDetailsScreen, page: ()=>MyStoryDetailsScreen()),
    GetPage(name: AppRoutes.storydetailsScreen, page: ()=>StoryDetailsScreen()),
    GetPage(name: AppRoutes.searchScreen, page: ()=>SearchScreen())
  ];

}
