import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';
import 'package:memorial/views/screens/My_Story_Archive/my_story_archiv_screen.dart';
import 'package:memorial/views/screens/add_story/add_story_screen.dart';
import 'package:memorial/views/screens/home/home_screen.dart';
import 'package:memorial/views/screens/search/search_screen.dart';
import '../../../utils/app_colors.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _bottomNavIndex = 0;

  List<NavItem> navItems = [
    NavItem(icon: Icons.home, label: AppConstants.home),
    NavItem(icon: Icons.search, label: AppConstants.archive),
    NavItem(icon: Icons.person, label: AppConstants.search),
    NavItem(icon: Icons.person, label: AppConstants.profile),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _getPage(_bottomNavIndex),
      floatingActionButton: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.blue500,
        ),
        child: IconButton(
          onPressed: () {
            Get.toNamed(AppRoutes.addStoryScreen);
            // _togglePage();
          },
          icon: SvgPicture.asset(AppIcons.plus),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: AppColors.white,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              navItems.length,
              (index) {
                return GestureDetector(
                  onTap: () {
                    _updateIndex(index);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        navItems[index].icon,
                        color: _bottomNavIndex == index
                            ? AppColors.blue500
                            : AppColors.black100,
                      ),
                      Text(
                        navItems[index].label,
                        style: TextStyle(
                          color: _bottomNavIndex == index
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
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return MyStoryArchiveScreen();
      case 2:
      case 3:
        return SearchScreen();
      default:
        return HomeScreen();
    }
  }

  void _togglePage() {
    setState(() {
      _bottomNavIndex = (_bottomNavIndex == 4) ? 0 : 4;
    });
  }

  void _updateIndex(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }
}

class NavItem {
  final IconData icon;
  final String label;
  NavItem({required this.icon, required this.label});
}
