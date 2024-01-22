import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_images.dart';
import 'package:memorial/views/widgets/custom_button.dart';
import 'package:memorial/views/widgets/custom_text.dart';

class PaymentVerifiedScreen extends StatelessWidget {
  const PaymentVerifiedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  appImages.complete,
                  width: 96.w,
                  height: 96.h,
                ),
              ),
              const SizedBox(height: 24),
              CustomText(text: AppConstants.paymentSuccess),
              const SizedBox(height: 44),
              SizedBox(
                width: 200.w,
                height: 50.h,
                child: CustomButton(
                  title: AppConstants.gotoProfile,
                  onpress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
