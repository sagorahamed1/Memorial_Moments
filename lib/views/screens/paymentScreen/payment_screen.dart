import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';
import 'package:memorial/utils/app_images.dart';
import 'package:memorial/views/widgets/custom_app_bar.dart';
import 'package:memorial/views/widgets/custom_buttom.dart';
import 'package:memorial/views/widgets/custom_text.dart';
import 'package:memorial/views/widgets/custom_text_field.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: AppConstants.purchaseQuarter,
          leading: const Icon(Icons.arrow_back_ios),
          onprass: () {}),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24.h,
            ),
            CustomText(
              text: AppConstants.addPayment,
              fontsize: 18.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF0071E3),
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomText(
              text: AppConstants.addPaymentMethod,
              fontsize: 14.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF2B2A2A),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Image.asset(
                  appImages.visa,
                  width: 72.w,
                  height: 72.h,
                ),
                 SizedBox(
                  width: 16.w,
                ),
                Image.asset(
                  appImages.master,
                  width: 72.w,
                  height: 72.h,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Stack(
                  children: [
                    Image.asset(
                      appImages.paypal,
                      width: 72.w,
                      height: 72.h,
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: SvgPicture.asset(AppIcons.checkbox))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            const CustomTextField(
                title: AppConstants.cardHolder,
                prifixicon: Icon(Icons.person_outline_rounded)),
            SizedBox(
              height: 16.h,
            ),
            const CustomTextField(
                title: AppConstants.cardNumber,
                prifixicon: Icon(Icons.credit_card_outlined)),
            SizedBox(
              height: 16.h,
            ),
            const CustomTextField(
                title: AppConstants.cVC,
                prifixicon: Icon(Icons.lock_outline_rounded)),
            SizedBox(
              height: 16.h,
            ),
            const CustomTextField(
                title: AppConstants.mmYy,
                prifixicon: Icon(Icons.date_range_outlined)),
            SizedBox(height: 60.h),
            CustomButton(
              title: AppConstants.proceedPayment,
              onpress: () {},
            ),
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }
}
