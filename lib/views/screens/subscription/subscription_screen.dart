import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/views/screens/subscription/InnerWidget/custom_eliment.dart';
import 'package:memorial/views/widgets/custom_app_bar.dart';
import 'package:memorial/views/widgets/custom_text.dart';
import '../../../utils/app_icons.dart';
import 'InnerWidget/buttom_section.dart';
import 'InnerWidget/custom_card.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          title: AppConstants.subPackages,
          leading: const Icon(Icons.arrow_back_ios),
          onprass: () {
            Get.back();
          }),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: AppConstants.selectPlan,
                  fontsize: 18,
                  fontWeight: FontWeight.w400),
              const SizedBox(height: 24),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: CustomCard(
                          title: AppConstants.quarterPage,
                          price: AppConstants.quarterPageMoney),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: CustomCard(
                          title: AppConstants.halfPage,
                          price: AppConstants.halPageMoney),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: CustomCard(
                          title: AppConstants.fullPage,
                          price: AppConstants.fullPageMoney,
                        )),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Center(child: SvgPicture.asset(AppIcons.scroll)),
              const SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Container(
                    width: 342.w,
                    height: 322.h,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomEliment(title: AppConstants.peopleStories),
                        SizedBox(height: 16),
                        CustomEliment(title: AppConstants.veteranStories),
                        SizedBox(height: 16),
                        CustomEliment(title: AppConstants.petsStories),
                        SizedBox(height: 16),
                        CustomEliment(title: AppConstants.uploadPhotos),
                        SizedBox(height: 16),
                        CustomEliment(title: AppConstants.postStory),
                        SizedBox(height: 16),
                        CustomEliment(title: AppConstants.postStory1),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const ButtomSection(),
            ],
          ),
        ),
      ),
    );
  }
}
