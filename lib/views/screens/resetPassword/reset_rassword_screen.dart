import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/views/widgets/custom_text.dart';
import 'package:memorial/views/widgets/custom_text_field.dart';
import '../../../utils/app_constants.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';

class ResetPasswordScreen extends StatelessWidget {
   ResetPasswordScreen({super.key});
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          title: "",
          leading: const Icon(Icons.arrow_back_ios),
          onprass: () {
            Get.back();
          }),

      //=============================================> Body Section <======================================


      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              CustomText(
                text: AppConstants.resetPassword,
                fontsize: 24.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF0071E3),
              ),
              const SizedBox(height: 16),
              CustomText(
                text: AppConstants.mustHave,
                fontsize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF2B2A2A),
              ),
              const SizedBox(height: 61),
               CustomTextField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your password";
                  }
                },
                title: AppConstants.password,
                prifixicon: const Icon(Icons.lock_outline),
                sufixicons: const Icon(Icons.remove_red_eye_outlined),
              ),
              const SizedBox(height: 16),
               CustomTextField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your Re-password";
                  }
                },
                title: AppConstants.rePassword,
                prifixicon: const Icon(Icons.lock_outline),
                sufixicons: const Icon(Icons.remove_red_eye_outlined),
              ),
              const Spacer(),
              CustomButton(
                  title: AppConstants.resetPassword,
                  onpress: () {
                    if (_formKey.currentState!.validate()) {
                      Get.toNamed(AppRoutes.settingsScreen);
                    }
                  }),
              const SizedBox(height: 54),
            ],
          ),
        ),
      ),
    );
  }
}
