import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/views/screens/subscription/InnerWidget/custom_eliment.dart';
import 'package:memorial/views/widgets/custom_app_bar.dart';
import 'package:memorial/views/widgets/custom_text.dart';
import 'InnerWidget/buttom_section.dart';
import 'InnerWidget/custom_card.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {

  //========================================> Slider Faction <===================================
  int pageIndex = 0;
  late final PageController pageController;

  final List<Widget> _demo = [
    const CustomCard(
        title: AppConstants.quarterPage, price: AppConstants.quarterPageMoney),
    const CustomCard(
        title: AppConstants.halfPage, price: AppConstants.halPageMoney),
    const CustomCard(
      title: AppConstants.fullPage,
      price: AppConstants.fullPageMoney,
    ),
  ];
  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  //========================================> Slider Faction <===================================

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
                  fontsize: 18.sp,
                  fontWeight: FontWeight.w400),
              SizedBox(height: 24.h),

              //========================================> Slider Section <===================================

              Column(
                children: [
                  Center(
                    child: SizedBox(
                      width: 360.w,
                      height: 180.h,
                      child: PageView(
                        controller: pageController,
                        children: _demo,
                        onPageChanged: (index) {
                          setState(() {
                            pageIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  CarouselIndicator(
                    count: _demo.length,
                    index: pageIndex,
                    color: Colors.grey,
                    activeColor: Colors.blue,
                  ),
                ],
              ),

              //========================================> Slider Section <===================================

              SizedBox(
                height: 24.h,
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

                    //========================================> Elements Section <===================================

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomEliment(title: AppConstants.peopleStories),
                        SizedBox(height: 16.h),
                        const CustomEliment(title: AppConstants.veteranStories),
                        SizedBox(height: 16.h),
                        const CustomEliment(title: AppConstants.petsStories),
                        SizedBox(height: 16.h),
                        const CustomEliment(title: AppConstants.uploadPhotos),
                        SizedBox(height: 16.h),
                        const CustomEliment(title: AppConstants.postStory),
                        SizedBox(height: 16.h),
                        const CustomEliment(title: AppConstants.postStory1),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              const ButtomSection(),
            ],
          ),
        ),
      ),
    );
  }
}
