
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:memorial/views/screens/add_story/add_story_screen.dart';
import 'package:memorial/views/screens/home/home_screen.dart';
import 'package:memorial/views/screens/notification/notification_screen.dart';
import 'package:memorial/views/screens/profile/profile_screen.dart';
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
                    Icon(
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

  IconData _getNavItemIcon(int index) {
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.share_arrival_time;
      case 2:
        return Icons.search;
      default:
        return Icons.person; // Placeholder, you can change it to a different icon
    }
  }

  String _getNavItemLabel(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Archive';
      case 2:
        return 'Search';
      default:
        return 'Profile'; // Placeholder label, you can change it
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

// class AddStoryScreen extends StatelessWidget {
//   const AddStoryScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final FocusNode _focusNode = FocusNode();
//     TextEditingController _textEditingController = TextEditingController();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Keyboard Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _textEditingController,
//               focusNode: _focusNode,
//               decoration: InputDecoration(
//                 hintText: 'Type something...',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Trigger keyboard by focusing on the text field
//                 _focusNode.requestFocus();
//               },
//               child: Text('Open Keyboard'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }





// class MyHomePage extends StatefulWidget {
//   @override
//   MyHomePageState createState() => MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _bottomNavIndex = 0;
//   PageController _pageController = PageController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       body:PageView(
//         controller: _pageController,
//         children: [
//           HomeScreen(),
//           MyStoryArchiveScreen(),
//           AddStoryScreen(),
//           NotificationScreen(),
//           AddStoryScreen()
//         ],
//         onPageChanged: (index) {
//           setState(() {
//             _bottomNavIndex = index;
//           });
//         },
//       ),
//       floatingActionButton: _buildFloatingActionButton(),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: _buildBottomAppBar(),
//     );
//   }
//
//   Widget _buildFloatingActionButton() {
//     return FloatingActionButton(
//       onPressed: () {
//         _pageController.jumpToPage(4);
//         setState(() {
//           _bottomNavIndex = -2;// Unselect all items in the bottom navigation bar
//         });
//       },
//       child: Icon(Icons.add),
//       backgroundColor: AppColors.blue500,
//     );
//   }
//
//   BottomAppBar _buildBottomAppBar() {
//     return BottomAppBar(
//       shape: const CircularNotchedRectangle(),
//       color: AppColors.white,
//       child: Container(
//         height: 60,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: List.generate(
//             4, // Number of bottom navigation items
//                 (index) {
//               return GestureDetector(
//                 onTap: () {
//                   if (index <= 3) {
//                     _pageController.jumpToPage(index);
//                     setState(() {
//                       _bottomNavIndex = index;
//                     });
//                   } else {
//                     _navigateToAddStoryScreen();
//                   }
//                 },
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(
//                       _getNavItemIcon(index),
//                       color: bottomNavIndex == index || (bottomNavIndex == -1 && index == 2)
//                           ? AppColors.blue500
//                           : AppColors.black100,
//                     ),
//                     Text(
//                       _getNavItemLabel(index),
//                       style: TextStyle(
//                         color: bottomNavIndex == index || (bottomNavIndex == -1 && index == 2)
//                             ? AppColors.blue500
//                             : AppColors.black100,
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
//
//   IconData _getNavItemIcon(int index) {
//     switch (index) {
//       case 0:
//         return Icons.home;
//       case 1:
//         return Icons.search;
//       case 3:
//         return Icons.person;
//       default:
//         return Icons.error; // Placeholder, you can change it to a different icon
//     }
//   }
//
//   String _getNavItemLabel(int index) {
//     switch (index) {
//       case 0:
//         return 'Home';
//       case 1:
//         return 'Archive';
//       case 3:
//         return 'Profile';
//       default:
//         return 'Error'; // Placeholder label, you can change it
//     }
//   }
//
//   // Helper method to navigate to AddStoryScreen
//   void _navigateToAddStoryScreen() {
//     _pageController.jumpToPage(2);
//     setState(() {
//       _bottomNavIndex = -1; // Unselect all items in the bottom navigation bar
//     });
//   }
// }
//
// class AddStoryScreen extends StatelessWidget {
//   const AddStoryScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final FocusNode _focusNode = FocusNode();
//     TextEditingController _textEditingController = TextEditingController();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Keyboard Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _textEditingController,
//               focusNode: _focusNode,
//               decoration: InputDecoration(
//                 hintText: 'Type something...',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Trigger keyboard by focusing on the text field
//                 _focusNode.requestFocus();
//               },
//               child: Text('Open Keyboard'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//





















// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:memorial/routes/app_routes.dart';
// import 'package:memorial/utils/app_constants.dart';
// import 'package:memorial/utils/app_icons.dart';
// import 'package:memorial/views/screens/My_Story_Archive/my_story_archiv_screen.dart';
// import 'package:memorial/views/screens/add_story/add_story_screen.dart';
// import 'package:memorial/views/screens/home/home_screen.dart';
// import 'package:memorial/views/screens/search/search_screen.dart';
// import '../../../utils/app_colors.dart';
// import '../profile/profile_screen.dart';
//
// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   bool isPage = false;
//   int _bottomNavIndex = 0;
//
//   List<NavItem> navItems = [
//     NavItem(icon: Icons.home, label: AppConstants.home),
//     NavItem(icon: Icons.search, label: AppConstants.archive),
//     NavItem(icon: Icons.person, label: AppConstants.search),
//     NavItem(icon: Icons.person, label: AppConstants.profile),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//
//
//       body:isPage? _getPage(_bottomNavIndex) : AddStoryScreen(),
//
//
//
//       floatingActionButton: Container(
//         height: 50.h,
//         width: 50.w,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(50),
//           color: AppColors.blue500,
//         ),
//         child: IconButton(
//           onPressed: () {
//             Get.toNamed(AppRoutes.addStoryScreen);
//             // _togglePage();
//             setState(() {
//               isPage = !isPage;
//             });
//           },
//           icon: SvgPicture.asset(AppIcons.plus),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         color: AppColors.white,
//         child: Container(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: List.generate(
//               navItems.length,
//               (index) {
//                 return GestureDetector(
//                   onTap: () {
//                     _updateIndex(index);
//                   },
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Icon(
//                         navItems[index].icon,
//                         color: _bottomNavIndex == index
//                             ? AppColors.blue500
//                             : AppColors.black100,
//                       ),
//                       Text(
//                         navItems[index].label,
//                         style: TextStyle(
//                           color: _bottomNavIndex == index
//                               ? AppColors.blue500
//                               : AppColors.black100,
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _getPage(int index) {
//     switch (index) {
//       case 0:
//         return HomeScreen();
//       case 1:
//         return MyStoryArchiveScreen();
//       case 2:
//         return SearchScreen();
//       case 3:
//         return ProfileScreen();
//       default:
//         return ProfileScreen();
//     }
//   }
//
//   void _togglePage() {
//     setState(() {
//       _bottomNavIndex = (_bottomNavIndex == 4) ? 0 : 4;
//     });
//   }
//
//   void _updateIndex(int index) {
//     setState(() {
//       _bottomNavIndex = index;
//     });
//   }
// }
//
// class NavItem {
//   final IconData icon;
//   final String label;
//   NavItem({required this.icon, required this.label});
// }
