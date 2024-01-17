import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_image.dart';
import 'package:memorial/utils/icons.dart';
import 'package:memorial/views/screens/home/controller/bottom_nav_controller.dart';
import 'package:memorial/views/screens/notification/notification_screen.dart';
import 'package:memorial/views/widgets/custom_text.dart';

import '../../../utils/dimensions.dart';
import '../../../utils/dimensions.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  BottomNavController controller = BottomNavController();

  @override
  Widget build(BuildContext context) {
    int _bottomNavIndex = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        title: CustomText(text: AppConstants.memorialMoments),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
              }, icon: SvgPicture.asset(appIcons.notification))
        ],
      ),






      floatingActionButton: Container(
        height: 64.h,
        width: 64.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.blue500,
        ),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        color: AppColors.white,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
             controller.iconList.length,
                  (index) {
                return GestureDetector(
                  onTap: () {
                    // setState(() {
                      controller.bottomNavIndex = index;
                    // });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(controller.iconList[index]['icon'],
                          color: _bottomNavIndex == index
                              ? Colors.blue
                              : Colors.grey),
                      Text(
                        controller.iconList[index]['label'],
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















      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeExtraLarge),
          child: Column(
            children: [
              SizedBox(
                height: 18.h,
              ),
              Container(
                padding: EdgeInsets.only(right: 16, left: 16),
                height: 40.h,
                width: 342.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.sw),
                  color: AppColors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: AppConstants.all,
                      color: AppColors.blue500,
                      fontsize: Dimensions.fontSizeDefault,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: AppConstants.individual,
                      color: AppColors.black500,
                      fontsize: Dimensions.fontSizeDefault,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: AppConstants.veteran,
                      color: AppColors.black500,
                      fontsize: Dimensions.fontSizeDefault,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: AppConstants.pets,
                      color: AppColors.black500,
                      fontsize: Dimensions.fontSizeDefault,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 21.h,
              ),
              _publishPostSection(),
              SizedBox(
                height: 12.h,
              ),
              _publishPostSection(),
            ],
          ),
        ),
      ),
    );
  }


  ///<----------------this is published post widget----------------->>
  Stack _publishPostSection() {
    return Stack(
      children: [
        Container(
            height: 497.h,
            width: 342.w,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              appImages.Rectangle374,
              fit: BoxFit.cover,
            )),
        Positioned(
          left: 12,
          top: 12,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 60.h,
            width: 167.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: AppColors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomText(
                  text: AppConstants.published,
                  color: AppColors.black500,
                  fontsize: Dimensions.fontSizeExtraSmall,
                  fontWeight: FontWeight.w400,
                ),
                FittedBox(
                  fit: BoxFit.cover,
                  child: CustomText(
                    text: AppConstants.date1,
                    color: AppColors.black500,
                    fontsize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 108.h,
          left: 12.w,
          child: Container(
            height: 23.h,
            width: 73.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors.blue500),
            child: Center(
              child: CustomText(
                text: AppConstants.individual,
                color: AppColors.white,
                fontsize: Dimensions.fontSizeExtraSmall,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 24.h,
          left: 12.w,
          child: CustomText(
            text: AppConstants.description,
            fontWeight: FontWeight.w600,
            fontsize: Dimensions.fontSizeOverLarge,
            color: AppColors.white,
          ),
        )
      ],
    );
  }
}
