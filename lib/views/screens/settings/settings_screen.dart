import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/views/widgets/custom_buttom.dart';
import 'package:memorial/views/widgets/custom_text.dart';
import 'package:memorial/views/widgets/custom_text_field.dart';
import '../../../utils/app_constants.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_container.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          title: AppConstants.settings,
          leading: const Icon(Icons.arrow_back_ios),
          onprass: () {
            Get.back();
          }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h),
            CustomText(
              text: AppConstants.generalSettings,
              fontsize: 16.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF0071E3),
            ),
            SizedBox(height: 13.h),
            CustomContainer(
              onprass: () {
                Get.toNamed(AppRoutes.changePassword);
              },
              title: AppConstants.changePassword,
              prifixicon: const Icon(Icons.lock_outline, color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            CustomContainer(
              onprass: () {
                Get.toNamed(AppRoutes.subscriptionScreen);
              },
              title: AppConstants.subPackages,
              prifixicon:
                  const Icon(Icons.backpack_outlined, color: Colors.blue),
            ),
            SizedBox(height: 24.h),
            CustomText(
              text: AppConstants.security,
              fontsize: 16.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF0071E3),
            ),
            SizedBox(height: 13.h),
            CustomContainer(
              onprass: () {
                Get.toNamed(AppRoutes.privacyPolicyScreen);
              },
              title: AppConstants.privacyPolicy,
              prifixicon:
                  const Icon(Icons.privacy_tip_outlined, color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            CustomContainer(
              onprass: () {
                Get.toNamed(AppRoutes.termsofServicesScrren);
              },
              title: AppConstants.termsServices,
              prifixicon: const Icon(Icons.error_outline, color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            CustomContainer(
              onprass: () {
                Get.toNamed(AppRoutes.aboutUsScreen);
              },
              title: AppConstants.aboutUs,
              prifixicon: const Icon(Icons.error, color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            CustomContainer(
              onprass: () {
                dialogPupUp();
              },
              title: AppConstants.deleteAccount,
              prifixicon: const Icon(
                Icons.restore_from_trash_outlined,
                color: Colors.red,
              ),
            ),
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
              icon: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.close,
                      color: Colors.red,
                    )),
              ),
              contentPadding: const EdgeInsets.all(20),
              content: Column(
                children: [
                  CustomText(text: AppConstants.enterYour),
                  SizedBox(
                    height: 16.h,
                  ),
                  const CustomTextField(
                    title: AppConstants.password,
                    prifixicon: Icon(Icons.lock_outline_rounded),
                    sufixicons: Icon(Icons.remove_red_eye_outlined),
                  ),
                  SizedBox(
                    height: 44.h,
                  ),
                  CustomButton(
                      title: AppConstants.deleteAccount,
                      onpress: () {
                        // Get.back();
                      }),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
            );
          });
        });
  }
}
