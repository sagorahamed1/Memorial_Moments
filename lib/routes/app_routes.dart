import 'package:get/get.dart';
import 'package:memorial/views/screens/My_Story_Archive/my_story_archiv_screen.dart';
import 'package:memorial/views/screens/PaymentVerified/payment_verified_screen.dart';
import 'package:memorial/views/screens/aboutUs/about_us_screen.dart';
import 'package:memorial/views/screens/add_story/add_story_screen.dart';
import 'package:memorial/views/screens/changePassword/change_password_screen.dart';
import 'package:memorial/views/screens/fogetPassword/forget_password_screen.dart';
import 'package:memorial/views/screens/getOtp/get_otp_srceen.dart';
import 'package:memorial/views/screens/home/home_screen.dart';
import 'package:memorial/views/screens/my_story_details/my_story_details_screen.dart';
import 'package:memorial/views/screens/notification/notification_screen.dart';
import 'package:memorial/views/screens/paymentScreen/payment_screen.dart';
import 'package:memorial/views/screens/privacyPolicy/privacy_policy_screen.dart';
import 'package:memorial/views/screens/profile/edit_personal_informaiton_screen.dart';
import 'package:memorial/views/screens/profile/my_subscription_screen.dart';
import 'package:memorial/views/screens/profile/personal_Info_screen.dart';
import 'package:memorial/views/screens/profile/profile_content_screen.dart';
import 'package:memorial/views/screens/profile/profile_screen.dart';
import 'package:memorial/views/screens/resetPassword/reset_rassword_screen.dart';
import 'package:memorial/views/screens/search/search_screen.dart';
import 'package:memorial/views/screens/settings/settings_screen.dart';
import 'package:memorial/views/screens/signUp/sign_up_screen.dart';
import 'package:memorial/views/screens/singIn/sign_in_screen.dart';
import 'package:memorial/views/screens/splash/splash_screen.dart';
import 'package:memorial/views/screens/story/story-details_screen.dart';
import 'package:memorial/views/screens/subscription/subscription_screen.dart';
import 'package:memorial/views/screens/termsOfServices/termsof_services_screen.dart';
import 'package:memorial/views/screens/verifyMail/verify_mail_screen.dart';

class AppRoutes{
  static const String splashScreen = "/splashScreen";
  static const String signInScreen = "/sign_in_screen";
  static const String signUpScreen = "/sign_up_screen";
  static const String changePassword = "/change_password_screen";
  static const String forgetPassword = "/forget_password_screen";
  static const String resetPassword = "/reset_password_screen";
  static const String verifyMailScreen = "/verify_mail_screen";
  static const String getOtp = "/get_otp_screen";
  static const String settingsScreen = "/settings_screen";
  static const String paymentScreen = "/payment_screen";
  static const String paymentVerifiedScreen = "/payment_verified_screen";
  static const String subscriptionScreen = "/subscription_screen";
  static const String aboutUsScreen = "/about_us_screen";
  static const String privacyPolicyScreen = "/privacy_policy_screen";
  static const String termsofServicesScrren = "/termsof_services_screen";
  static const String homeScreen = "/homeScreen";
  static const String notificationScreen = "/notificationScreen";
  static const String storydetailsScreen = "/storydetailsScreen";
  static const String myStoryDetailsScreen = "/MyStoryDetailsScreen";
  static const String addStoryScreen = "/AddStoryScreen";
  static const String searchScreen = "/SearchScreen";
  static const String personalInfoScreen = "/PersonalInfoScreen";
  static const String editPersonalInformaitonScreen = "/EditPersonalInformaitonScreen";
  static const String mySubscriptionScreen = "/MySubscriptionScreen";
  static const String myStoryArchiveScreen = "/MyStoryArchiveScreen";
  static const String profileScreen = "/ProfileScreen";
  static const String profileContentScreen = "/ProfileContentScreen";

  static List <GetPage> Routes ()=>[
    GetPage(name: AppRoutes.splashScreen, page: ()=>SplashScreen()),
    GetPage(name: AppRoutes.signInScreen, page: ()=>SignInScreen()),
    GetPage(name: AppRoutes.signUpScreen, page: ()=>SignUpScreen()),
    GetPage(name: AppRoutes.changePassword, page: ()=>ChangePasswordScreen()),
    GetPage(name: AppRoutes.forgetPassword, page: ()=>ForgetPasswordScreen()),
    GetPage(name: AppRoutes.resetPassword, page: ()=>ResetPasswordScreen()),
    GetPage(name: AppRoutes.getOtp, page: ()=>GetOtpScreen()),
    GetPage(name: AppRoutes.settingsScreen, page: ()=>SettingsScreen()),
    GetPage(name: AppRoutes.paymentScreen, page: ()=>PaymentScreen()),
    GetPage(name: AppRoutes.paymentVerifiedScreen, page: ()=>PaymentVerifiedScreen()),
    GetPage(name: AppRoutes.verifyMailScreen, page: ()=>VerifyMailScreen()),
    GetPage(name: AppRoutes.subscriptionScreen, page: ()=>SubscriptionScreen()),
    GetPage(name: AppRoutes.aboutUsScreen, page: ()=>AboutUsScreen()),
    GetPage(name: AppRoutes.privacyPolicyScreen, page: ()=>PrivacyPolicyScreen()),
    GetPage(name: AppRoutes.termsofServicesScrren, page: ()=>TermsofServicesScrren()),
    GetPage(name: AppRoutes.homeScreen, page: ()=>HomeScreen()),
    GetPage(name: AppRoutes.notificationScreen, page: ()=>NotificationScreen()),
    GetPage(name: AppRoutes.myStoryDetailsScreen, page: ()=>MyStoryDetailsScreen()),
    GetPage(name: AppRoutes.storydetailsScreen, page: ()=>StoryDetailsScreen()),
    GetPage(name: AppRoutes.addStoryScreen, page: ()=>AddStoryScreen()),
    GetPage(name: AppRoutes.searchScreen, page: ()=>SearchScreen()),
    GetPage(name: AppRoutes.personalInfoScreen, page: ()=>PersonalInfoScreen()),
    GetPage(name: AppRoutes.editPersonalInformaitonScreen, page: ()=>EditPersonalInformaitonScreen()),
    GetPage(name: AppRoutes.mySubscriptionScreen, page: ()=>MySubscriptionScreen()),
    GetPage(name: AppRoutes.myStoryArchiveScreen, page: ()=>MyStoryArchiveScreen()),
    GetPage(name: AppRoutes.profileScreen, page: ()=>ProfileScreen()),
    GetPage(name: AppRoutes.profileContentScreen, page: ()=>ProfileContentScreen())
  ];
}
