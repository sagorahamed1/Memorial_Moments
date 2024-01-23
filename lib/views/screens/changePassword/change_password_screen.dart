import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/views/widgets/custom_text.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({super.key});
  final _formKey = GlobalKey<FormState>();

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

      //=============================================> Body Section <======================================

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 19.h),
              CustomTextField(
                validator: (value){
                  if (value!.isEmpty) {
                    return "Please enter your current password";
                  }
                },
                title: AppConstants.currentPassword,
                prifixicon: const Icon(Icons.lock_outline),
                sufixicons: const Icon(Icons.remove_red_eye_outlined),
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your new password";
                  }
                },
                title: AppConstants.newPassword,
                prifixicon: const Icon(Icons.lock_outline),
                sufixicons: const Icon(Icons.remove_red_eye_outlined),
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your Re-password";
                  }
                },
                title: AppConstants.reNewPassword,
                prifixicon: const Icon(Icons.lock_outline),
                sufixicons: const Icon(Icons.remove_red_eye_outlined),
              ),
              SizedBox(height: 24.h),
              CustomText(
                text: AppConstants.forgetPass,
                fontsize: 18.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF0071E3),
              ),
              const Spacer(),
              CustomButton(
                  title: AppConstants.changePassword,
                  onpress: () {
                    if (_formKey.currentState!.validate()) {
                      Get.toNamed(AppRoutes.forgetPassword);
                    }
                  }),
              SizedBox(height: 54.h),
            ],
          ),
        ),
      ),
    );
  }
}
