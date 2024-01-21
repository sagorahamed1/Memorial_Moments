import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/views/widgets/custom_text.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          title: AppConstants.changePassword,
          leading: const Icon(Icons.arrow_back_ios),
          onprass: () {
            Get.back();
          }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 19),
            const CustomTextField(
              title: AppConstants.currentPassword,
              prifixicon: Icon(Icons.lock_outline),
              sufixicons: Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              title: AppConstants.newPassword,
              prifixicon: Icon(Icons.lock_outline),
              sufixicons: Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              title: AppConstants.reNewPassword,
              prifixicon: Icon(Icons.lock_outline),
              sufixicons: Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(height: 24),
            CustomText(text: AppConstants.forgetPass,
              fontsize: 18,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF0071E3),
            ),
            const SizedBox(height: 270),
            CustomButton(title: AppConstants.changePassword, onpress: () {
              // Get.toNamed(AppRoutes.forgetPassword);
            }),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
