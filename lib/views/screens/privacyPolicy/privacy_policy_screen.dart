import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/views/widgets/custom_app_bar.dart';
import 'package:memorial/views/widgets/custom_text.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: AppConstants.privacyPolicy,
          leading: const Icon(Icons.arrow_back_ios),
          onprass: () {
            Get.back();
          }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomText(
              text: AppConstants.loremIpsum,
              fontsize: 18,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 8),
            CustomText(
              text: AppConstants.loremIpsum,
              fontsize: 18,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 8),
            CustomText(
              text: AppConstants.loremIpsum,
              fontsize: 18,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 8),
            CustomText(
              text: AppConstants.loremIpsum,
              fontsize: 18,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 8),
            CustomText(
              text: AppConstants.loremIpsum,
              fontsize: 18,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 8),
            CustomText(
              text: AppConstants.loremIpsum,
              fontsize: 18,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
