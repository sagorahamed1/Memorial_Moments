import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memorial/views/screens/home/home_screen.dart';
import '../../../utils/app_colors.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _bottomNavIndex = 0;

  List<NavItem> navItems = [
    NavItem(icon: Icons.home, label: 'Home'),
    NavItem(icon: Icons.search, label: 'Search'),
    NavItem(icon: Icons.person, label: 'Profile'),
    NavItem(icon: Icons.person, label: 'Profile'), // Example with duplicate icon (you can adjust as needed)
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
        child: Icon(Icons.add),
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
                    setState(() {
                      _bottomNavIndex = index;
                    });
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
        return Text("data");
      case 1:
        return Text("data1");
      case 2:
        return HomeScreen();
      default:
        return Container();
    }
  }
}


class NavItem {
  final IconData icon;
  final String label;

  NavItem({required this.icon, required this.label});
}
