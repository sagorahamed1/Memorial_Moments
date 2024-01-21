import 'package:flutter/material.dart';
import '../../../utils/app_constants.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_text.dart';

class TermsofServicesScrren extends StatelessWidget {
  const TermsofServicesScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: AppConstants.termsServices,
          leading: const Icon(Icons.arrow_back_ios),
          onprass: () {}),
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
