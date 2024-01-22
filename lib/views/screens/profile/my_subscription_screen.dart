import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/dimensions.dart';
import '../../widgets/custom_text.dart';

class MySubscriptionScreen extends StatelessWidget {
  const MySubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///------------------app bar section----------------->
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        leading: Container(
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
        title: CustomText(
          text: AppConstants.mySubscription,
          fontWeight: FontWeight.w500,
          fontsize: Dimensions.fontSizeExtraLarge,
          color: AppColors.black500,
        ),
      ),


      ///--------------------this is body section----------------------------->
      body: Padding(
        padding:
         const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraLarge,vertical: Dimensions.paddingSizeLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16,),
            Align(
              child: Container(
                height: 64.h,
                width: 282.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.blue100
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16,right: 16),
                        child: SvgPicture.asset(AppIcons.crown)),
                    CustomText(text: AppConstants.quarterPages,fontWeight: FontWeight.w600,fontsize: Dimensions.fontSizeExtraLarge,)
                  ],
                ),

              ),
            ),


            Row(
              children: [
                CustomText(text: "slsl")
              ],
            )
          ],
        ),
      ),

    );
  }
}
