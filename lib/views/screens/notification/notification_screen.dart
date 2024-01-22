import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';
import 'package:memorial/utils/dimensions.dart';
import 'package:memorial/views/widgets/custom_text.dart';

import 'inner_widgets/notification.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///--------------------------app bar section------------------------>
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        leading: Container(
          padding: EdgeInsets.all(5),
          margin: const EdgeInsets.only(left: Dimensions.paddingSizeDefault),
          child: FittedBox(
            fit: BoxFit.contain,
            child: GestureDetector(
              onTap: () {
                Get.back(); // Corrected from Get.back
              },
              child: SizedBox(
                height: 32.h,
                width: 32.w,
                child: SvgPicture.asset(
                  AppIcons.back_arrow,
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title:  CustomText(
          text: AppConstants.notification,
          fontWeight: FontWeight.w500,
          fontsize: Dimensions.fontSizeExtraLarge,
          color: AppColors.black500,
        ),
      ),



      ///---------------------------this is body section--------------------------->
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraLarge),
        child: ListView(
          children: [

            SizedBox(height: 16.h,),
            NotificationWidget(
              notificationTitle: AppConstants.notificationTitle1,
              notificationTime: AppConstants.notificationTime1,
            ),
            NotificationWidget(
              notificationTitle: AppConstants.notificationTitle2,
              notificationTime: AppConstants.notificationTime2,
            )
          ],
        ),
      ),
    );
  }
}

