import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/views/screens/splash/splash_screen.dart';

import 'views/screens/changePassword/change_password_screen.dart';
import 'views/screens/fogetPassword/forget_password_screen.dart';
import 'views/screens/getOtp/get_otp_srceen.dart';
import 'views/screens/home/home_screen.dart';
import 'views/screens/resetPassword/reset_rassword_screen.dart';
import 'views/screens/settings/settings_screen.dart';
import 'views/screens/signUp/sign_up_screen.dart';
import 'views/screens/singIn/sign_in_screen.dart';
import 'views/screens/verifyMail/verify_mail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // primarySwatch: Colors.blue,
          scaffoldBackgroundColor:
              AppColors.bgColors, // Set the scaffold background color here
        ),
        // home: MyHomePage(),
        home: const SignInScreen(),
      ),
      designSize: const Size(390, 844),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _bottomNavIndex = 0;
  List<Map<String, dynamic>> iconList = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.search, 'label': 'Search'},
    {'icon': Icons.favorite, 'label': 'Favorite'},
    {'icon': Icons.person, 'label': 'Profile'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Bottom Navigation Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page ${_bottomNavIndex + 1}'),
            Text(iconList[_bottomNavIndex]['label']),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.green,
        ),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 20,
        color: Colors.green,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              iconList.length,
              (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _bottomNavIndex = index;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(iconList[index]['icon'],
                          color: _bottomNavIndex == index
                              ? Colors.blue
                              : Colors.grey),
                      Text(
                        iconList[index]['label'],
                        style: TextStyle(
                          color: _bottomNavIndex == index
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
