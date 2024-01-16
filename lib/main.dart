import 'package:flutter/material.dart';

import 'views/screens/home/home_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(),
      home: HomeScreen(),
    );
  }
}












//
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _bottomNavIndex = 0;
//   List<Map<String, dynamic>> iconList = [
//     {'icon': Icons.home, 'label': 'Home'},
//     {'icon': Icons.search, 'label': 'Search'},
//     {'icon': Icons.favorite, 'label': 'Favorite'},
//     {'icon': Icons.person, 'label': 'Profile'},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Animated Bottom Navigation Bar'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Page ${_bottomNavIndex + 1}'),
//             Text(iconList[_bottomNavIndex]['label']),
//           ],
//         ),
//       ),
//       floatingActionButton: Container(
//         height: 50,
//         width: 50,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(50),
//           color: Colors.green,
//         ),
//         child: Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         child: Container(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: List.generate(
//               iconList.length,
//                   (index) {
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       _bottomNavIndex = index;
//                     });
//                   },
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Icon(iconList[index]['icon'],
//                           color: _bottomNavIndex == index
//                               ? Colors.blue
//                               : Colors.grey),
//                       Text(
//                         iconList[index]['label'],
//                         style: TextStyle(
//                           color: _bottomNavIndex == index
//                               ? Colors.blue
//                               : Colors.grey,
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
// }
