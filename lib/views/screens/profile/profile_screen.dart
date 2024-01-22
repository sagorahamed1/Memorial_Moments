import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';
import 'package:memorial/utils/app_images.dart';
import 'package:memorial/utils/dimensions.dart';
import 'package:memorial/views/widgets/custom_text.dart';

import 'my_subscription_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-------------app bar section------------------
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.bgColors,
        title: CustomText(r
          text: AppConstants.profiles,
          fontWeight: FontWeight.w500,
          fontsize: Dimensions.fontSizeExtraLarge,
        ),
      ),

      ///--------------------this is body section----------------------------->
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraLarge),
        child: Column(
          children: [
            /// ------------------------profile box -------------------
            Container(
              height: 135.h,
              width: 342.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.blue500,
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.,
                        children: [
                          CircleAvatar(
                            child: Image.asset(appImages.profileImage),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            child: CustomText(
                              text: AppConstants.jennyWilson,
                              fontsize: Dimensions.fontSizeOverLarge,
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 50, right: 16),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.crown),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: CustomText(
                                text: AppConstants.quarterPageMember,
                                fontWeight: FontWeight.w500,
                                fontsize: Dimensions.fontSizeExtraLarge,
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),

            SizedBox(
              height: 22.h,
            ),

            ///----------------------------2nd stage other infomaition------------------------>
            Container(
              height: 270.h,
              width: 342.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white),
              child: Column(
                children: [
                  ///----------------navigete personal informaition-----------------
                  ListTile(
                    onTap: () {
                      Get.toNamed(AppRoutes.personalInfoScreen);
                    },
                    leading: SvgPicture.asset(AppIcons.userIcon),
                    title: CustomText(
                      text: AppConstants.poersonalInformation,
                      fontWeight: FontWeight.w500,
                      fontsize: Dimensions.fontSizeExtraLarge,
                    ),
                  ),

                  ///----------------navigete my scbscription-----------------
                  ListTile(
                    onTap: () {
                      // Get.toNamed(AppRoutes.mySubscriptionScreen);
                      Get.to(MySubscriptionScreen());
                    },
                    leading: SvgPicture.asset(AppIcons.crownWhite),
                    title: CustomText(
                      text: AppConstants.mySubscription,
                      fontWeight: FontWeight.w500,
                      fontsize: Dimensions.fontSizeExtraLarge,
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(AppIcons.bookPpen),
                    title: CustomText(
                      text: AppConstants.myCurrentStory,
                      fontWeight: FontWeight.w500,
                      fontsize: Dimensions.fontSizeExtraLarge,
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(AppIcons.setting),
                    title: CustomText(
                      text: AppConstants.setting,
                      fontWeight: FontWeight.w500,
                      fontsize: Dimensions.fontSizeExtraLarge,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}