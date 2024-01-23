
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/views/screens/add_story/add_story_screen.dart';
import 'package:memorial/views/screens/home/home_screen.dart';
import 'package:memorial/views/screens/notification/notification_screen.dart';
import 'package:memorial/views/screens/profile/profile_screen/profile_screen.dart';
import 'package:memorial/views/screens/search/search_screen.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_icons.dart';
import '../My_Story_Archive/my_story_archiv_screen.dart';




class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _bottomNavIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body:PageView(
        controller: _pageController,
        children: [
          HomeScreen(),
          const MyStoryArchiveScreen(),
          SearchScreen(),
          const ProfileScreen(),
          AddStoryScreen()
        ],
        onPageChanged: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
      floatingActionButton: _buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomAppBar(),
    );
  }


  Widget _buildFloatingActionButton() {
    return Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.blue500,
        ),
        child: IconButton(
          onPressed: () {
             // Get.to(AddStoryScreen());
            _pageController.jumpToPage(4);
            setState(() {
              _bottomNavIndex = -2;                // Unselect all items in the bottom navigation bar
            });
          },
          icon: SvgPicture.asset(AppIcons.plus),
        ),
    );
  }


  BottomAppBar _buildBottomAppBar() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: AppColors.white,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            4, // Number of bottom navigation items
                (index) {
              return GestureDetector(
                onTap: () {
                  if (index <= 3) {
                    _pageController.jumpToPage(index);
                    setState(() {
                      _bottomNavIndex = index;
                    });
                  } else {
                    _navigateToAddStoryScreen();
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      _getNavItemIcon(index),
                      color: _bottomNavIndex == index || (_bottomNavIndex == -1 && index == 2)
                          ? AppColors.blue500
                          : AppColors.black100,
                    ),
                    Text(
                      _getNavItemLabel(index),
                      style: TextStyle(
                        color: _bottomNavIndex == index || (_bottomNavIndex == -1 && index == 2)
                            ? AppColors.blue500
                            : AppColors.black100,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  String _getNavItemIcon(int index) {
    switch (index) {
      case 0:
        return AppIcons.home;
      case 1:
        return AppIcons.archive;
      case 2:
        return AppIcons.search;
      default:
        return AppIcons.profile_user_circle;
    }
  }

  String _getNavItemLabel(int index) {
    switch (index) {
      case 0:
        return AppConstants.home;
      case 1:
        return  AppConstants.archive;
      case 2:
        return  AppConstants.search;
      default:
        return  AppConstants.profile;
    }
  }

  // Helper method to navigate to AddStoryScreen
  void _navigateToAddStoryScreen() {
    _pageController.jumpToPage(2);
    setState(() {
      _bottomNavIndex = -1; // Unselect all items in the bottom navigation bar
    });
  }
}

