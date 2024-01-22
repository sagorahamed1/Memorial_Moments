import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/utils/dimensions.dart';
import 'package:memorial/views/screens/story/story-details_screen.dart';
import 'package:memorial/views/widgets/custom_text.dart';

import 'controller/my_story_archive_controller.dart';

class MyStoryArchiveScreen extends StatelessWidget {
  const MyStoryArchiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyStoryArchiveController controller = Get.put(MyStoryArchiveController());
    return Scaffold(

      ///----------------------------this is app bar section--------------------->
        appBar: AppBar(

            elevation: 0.0,
            backgroundColor: AppColors.bgColors,
            centerTitle: true,
            title: CustomText(
              text: "My Archive",
              color: AppColors.black500,
              fontsize: Dimensions.fontSizeExtraLarge,
              fontWeight: FontWeight.w500,
            )),


        ///---------------------------this is body section------------------------>
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeExtraLarge),
          child: Obx(() => ListView.builder(
            itemCount: controller.archiveList.length,
            itemBuilder: (context, index) {
              var storyInfo = controller.archiveList[index];
              return Column(
                children: [
                  GestureDetector(
                    onTap: (){
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
                                  margin: EdgeInsets.only(right: 16.w),
                                  height: 100.h,
                                  width: 100.w,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r)),
                                  child: Image.asset(
                                    "${storyInfo["image"]}",
                                    fit: BoxFit.cover,
                                  ))),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${storyInfo["storyTitle"]}",
                                  style: const TextStyle(textBaseline: TextBaseline.alphabetic,
                                      fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.fontSizeExtraLarge),
                                ),
                                Text(
                                  "${storyInfo["storyTime"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: Dimensions.fontSizeDefault),
                                ),
                                Text(
                                  "${storyInfo["storyDate"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: Dimensions.fontSizeDefault),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                ],
              );
            },
          )),
        ));
  }
}
