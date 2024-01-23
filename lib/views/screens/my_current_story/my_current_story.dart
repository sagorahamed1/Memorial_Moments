import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:memorial/views/screens/my_current_story/controller/my_current_story_controller.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/dimensions.dart';
import '../../widgets/custom_text.dart';
import '../story/story-details_screen.dart';

class MyCurrentStory extends StatelessWidget {
  MyCurrentStory({super.key});

  MyCurrentStoryController controller = Get.put(MyCurrentStoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.bgColors,
          leading: Container(
            padding: EdgeInsets.all(5),
            margin: const EdgeInsets.only(left: Dimensions.paddingSizeDefault),
            child: FittedBox(
              fit: BoxFit.contain,
              child: GestureDetector(
                onTap: () {
                  Get.back(); // Corrected from Get.back
                },
                child: SizedBox(
                  height: 32.h,
                  width: 32.w,
                  child: SvgPicture.asset(
                    AppIcons.back_arrow,
                  ),
                ),
              ),
            ),
          ),
          centerTitle: true,
          title: CustomText(
            text: AppConstants.myCurrentStory,
            fontWeight: FontWeight.w500,
            fontsize: Dimensions.fontSizeExtraLarge,
            color: AppColors.black500,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeExtraLarge,
              vertical: Dimensions.paddingSizeLarge),
          child: Obx(() => Column(
                children: [
                  Container(
                    height: 260.h,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.archiveList.length,
                      itemBuilder: (context, index) {
                        var storyInfo = controller.archiveList[index];
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                /// --------------------go to my story details secreen-------------->
                                // Get.toNamed(AppRoutes.myStoryDetailsScreen);
                                Get.to(StoryDetailsScreen());
                              },
                              child: Container(
                                height: 116.h,
                                width: 342.w,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            margin:
                                                EdgeInsets.only(right: 16.w),
                                            height: 100.h,
                                            width: 100.w,
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.r)),
                                            child: Image.asset(
                                              "${storyInfo["image"]}",
                                              fit: BoxFit.cover,
                                            ))),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${storyInfo["storyTitle"]}",
                                            style: const TextStyle(
                                                textBaseline:
                                                    TextBaseline.alphabetic,
                                                fontWeight: FontWeight.w500,
                                                fontSize: Dimensions
                                                    .fontSizeExtraLarge),
                                          ),
                                          Text(
                                            "${storyInfo["storyTime"]}",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize:
                                                    Dimensions.fontSizeDefault),
                                          ),
                                          Text(
                                            "${storyInfo["storyDate"]}",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize:
                                                    Dimensions.fontSizeDefault),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 80.h,
                    width: 342.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.white),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.information_circle,
                          height: 30.h,
                        ),
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Container(
                            padding: EdgeInsets.only(left: 7),
                            height: 90.h,
                            width: 300.w,
                            child: const Center(
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Text(
                                  AppConstants.yourCurrentStorywill,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: Dimensions.fontSizeDefault,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ));
  }
}
