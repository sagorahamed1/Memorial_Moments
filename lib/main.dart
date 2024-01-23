import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/views/screens/singIn/sign_in_screen.dart';
import 'routes/app_routes.dart';
import 'views/screens/PaymentVerified/payment_verified_screen.dart';
import 'views/screens/aboutUs/about_us_screen.dart';
import 'views/screens/bottom_nab_bar/bottom_nav_bar.dart';
import 'views/screens/home/home_screen.dart';
import 'views/screens/paymentScreen/payment_screen.dart';
import 'views/screens/privacyPolicy/privacy_policy_screen.dart';
import 'views/screens/profile/profile_content/profile_content_screen.dart';
import 'views/screens/profile/profile_screen/profile_screen.dart';
import 'views/screens/settings/settings_screen.dart';
import 'views/screens/signUp/sign_up_screen.dart';
import 'views/screens/subscription/subscription_screen.dart';
import 'views/screens/termsOfServices/termsof_services_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // primarySwatch: Colors.blue,
          scaffoldBackgroundColor: AppColors.bgColors, // Set the scaffold background color here
        ),

        initialRoute:AppRoutes.bottomNavBar,
        navigatorKey: Get.key,
        home: BottomNavBar(),
        // home: SignInScreen(),

        // home: HomeScreen(),
        getPages: AppRoutes.Routes(),

      ),
      designSize: const Size(390, 844),

    );
  }
}





