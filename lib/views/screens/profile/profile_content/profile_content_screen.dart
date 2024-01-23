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
import 'package:memorial/views/widgets/custom_app_bar.dart';
import 'package:memorial/views/widgets/custom_text.dart';
import 'package:memorial/views/widgets/custom_text_field.dart';

import '../../../widgets/custom_buttom.dart';

class ProfileContentScreen extends StatefulWidget {
  const ProfileContentScreen({super.key});

  @override
  State<ProfileContentScreen> createState() => _ProfileContentScreenState();
}

class _ProfileContentScreenState extends State<ProfileContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: AppConstants.profile,
          onprass: () {
            Get.back();
          }),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSizeExtraLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 86.h,
              width: 342.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.blue500,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: Image.asset(appImages.profileImage),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16),
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
                ],
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Container(
              height: 220.h,
              width: 342.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white),
              child: Column(
                children: [
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
                  ListTile(
                    onTap: () {
                      dialogPupUp();
                    },
                    leading: SvgPicture.asset(AppIcons.crownWhite),
                    title: CustomText(
                      text: AppConstants.mySubscription,
                      fontWeight: FontWeight.w500,
                      fontsize: Dimensions.fontSizeExtraLarge,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.toNamed(AppRoutes.settingsScreen);
                    },
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

  dialogPupUp() {
    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setStateForDialog) {
            return AlertDialog(
              backgroundColor: AppColors.bgColors,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              scrollable: true,
              contentPadding: const EdgeInsets.all(20),
              content: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.crown,
                    width: 60.w,
                    height: 60.h,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomText(
                    text: AppConstants.upGrade,
                    fontsize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomButton(
                      title: AppConstants.goTo,
                      onpress: () {
                        Get.toNamed(AppRoutes.subscriptionScreen);
                      }),
                  const SizedBox(
                    height: 16,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: CustomText(
                      text: AppConstants.skipNow,
                      color: Colors.red,
                      fontsize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          });
        });
  }
}
