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
            const SizedBox(
              height: 24,
            ),
            CustomText(
              text: AppConstants.addPayment,
              fontsize: 18,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF0071E3),
            ),
            const SizedBox(
              height: 24,
            ),
            CustomText(
              text: AppConstants.addPaymentMethod,
              fontsize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF2B2A2A),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  child: Image.asset(
                    appImages.visa,
                    width: 72.w,
                    height: 72.h,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  child: Image.asset(
                    appImages.master,
                    width: 72.w,
                    height: 72.h,
                  ),
                ),
                const SizedBox(
                  width: 16,
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
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
                title: AppConstants.cardHolder,
                prifixicon: Icon(Icons.person_outline_rounded)),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
                title: AppConstants.cardNumber,
                prifixicon: Icon(Icons.credit_card_outlined)),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
                title: AppConstants.cVC,
                prifixicon: Icon(Icons.lock_outline_rounded)),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
                title: AppConstants.mmYy,
                prifixicon: Icon(Icons.date_range_outlined)),
            const SizedBox(height: 60),
            CustomButton(
              title: AppConstants.proceedPayment,
              onpress: () {},
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
