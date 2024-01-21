import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/views/widgets/custom_text.dart';
import '../../../utils/app_constants.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_container.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          title: AppConstants.settings,
          leading: const Icon(Icons.arrow_back_ios),
          onprass: () {}),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            CustomText(text: AppConstants.generalSettings,
              fontsize: 16,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF0071E3),
            ),
            const SizedBox(height: 13),
            CustomContainer(
              onprass: () {
                Get.toNamed(AppRoutes.changePassword);
              },
              title: AppConstants.changePassword,
              prifixicon: const Icon(Icons.lock_outline),
            ),
            const SizedBox(height: 8),
            CustomContainer(
              onprass: () {
                Get.toNamed(AppRoutes.subscriptionScreen);
              },
              title: AppConstants.subPackages,
              prifixicon: const Icon(Icons.backpack_outlined),
            ),
            const SizedBox(height: 24),
            CustomText(text: AppConstants.security,
              fontsize: 16,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF0071E3),
            ),
            const SizedBox(height: 13),
            CustomContainer(
              onprass: () {
                Get.toNamed(AppRoutes.privacyPolicyScreen);
              },
              title: AppConstants.privacyPolicy,
              prifixicon: const Icon(Icons.privacy_tip_outlined),
            ),
            const SizedBox(height: 8),
            CustomContainer(
              onprass: () {
                Get.toNamed(AppRoutes.termsofServicesScrren);
              },
              title: AppConstants.termsServices,
              prifixicon: const Icon(Icons.error_outline),
            ),
            const SizedBox(height: 8),
            CustomContainer(
              onprass: () {
                Get.toNamed(AppRoutes.aboutUsScreen);
              },
              title: AppConstants.aboutUs,
              prifixicon: const Icon(Icons.error),
            ),
            const SizedBox(height: 8),
            CustomContainer(
              onprass: () {},
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
}
