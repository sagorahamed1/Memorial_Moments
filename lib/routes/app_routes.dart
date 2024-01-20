import 'package:get/get.dart';
import 'package:memorial/views/screens/add_story/add_story_screen.dart';
import 'package:memorial/views/screens/home/home_screen.dart';
import 'package:memorial/views/screens/my_story_details/my_story_details_screen.dart';
import 'package:memorial/views/screens/notification/notification_screen.dart';
import 'package:memorial/views/screens/profile/edit_personal_informaiton_screen.dart';
import 'package:memorial/views/screens/profile/my_subscription_screen.dart';
import 'package:memorial/views/screens/profile/personal_Info_screen.dart';
import 'package:memorial/views/screens/search/search_screen.dart';
import 'package:memorial/views/screens/splash/splash_screen.dart';
import 'package:memorial/views/screens/story/story-details_screen.dart';

class AppRoutes{
  static const String splashScreen = "/splashScreen";//1
  static const String homeScreen = "/homeScreen";//2
  static const String notificationScreen = "/notificationScreen";//3
  static const String storydetailsScreen = "/storydetailsScreen";//4
  static const String myStoryDetailsScreen = "/MyStoryDetailsScreen";//5
  static const String addStoryScreen = "/AddStoryScreen";//6
  static const String searchScreen = "/SearchScreen";//7
  static const String myStoryArchiveScreen = "/MyStoryArchiveScreen";//8
  static const String personalInfoScreen = "/PersonalInfoScreen";//9
  static const String editPersonalInformaitonScreen = "/EditPersonalInformaitonScreen";//10
  static const String mySubscriptionScreen = "/MySubscriptionScreen";//11


  static List <GetPage> Routes ()=>[
    GetPage(name: AppRoutes.splashScreen, page: ()=>SplashScreen()),
    GetPage(name: AppRoutes.homeScreen, page: ()=>HomeScreen()),
    GetPage(name: AppRoutes.notificationScreen, page: ()=>NotificationScreen()),
    GetPage(name: AppRoutes.myStoryDetailsScreen, page: ()=>MyStoryDetailsScreen()),
    GetPage(name: AppRoutes.storydetailsScreen, page: ()=>StoryDetailsScreen()),
    GetPage(name: AppRoutes.addStoryScreen, page: ()=>AddStoryScreen()),
    GetPage(name: AppRoutes.searchScreen, page: ()=>SearchScreen()),
    GetPage(name: AppRoutes.personalInfoScreen, page: ()=>PersonalInfoScreen()),
    GetPage(name: AppRoutes.editPersonalInformaitonScreen, page: ()=>EditPersonalInformaitonScreen()),
    GetPage(name: AppRoutes.mySubscriptionScreen, page: ()=>MySubscriptionScreen())
  ];

}
