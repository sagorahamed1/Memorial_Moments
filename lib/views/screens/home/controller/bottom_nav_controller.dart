import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController{
  int bottomNavIndex = 0;
  List<Map<String, dynamic>> iconList = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.search, 'label': 'Search'},
    {'icon': Icons.favorite, 'label': 'Favorite'},
    {'icon': Icons.person, 'label': 'Profile'},
  ];
}