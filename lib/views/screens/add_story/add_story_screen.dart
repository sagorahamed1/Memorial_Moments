import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';
import 'package:memorial/utils/dimensions.dart';
import 'package:memorial/views/screens/add_story/controller/add_story_controller.dart';
import 'package:memorial/views/widgets/custom_buttom.dart';
import 'package:memorial/views/widgets/custom_text.dart';

import 'inner_widgets/image_picker_container.dart';
import 'inner_widgets/text_field_custom.dart';

class AddStoryScreen extends StatelessWidget {
  AddStoryScreen({super.key});

  AddStoryController controller = Get.put(AddStoryController());
  TextEditingController selectedCategory = TextEditingController();
  TextEditingController selectedBackgroundMusic = TextEditingController();
  TextEditingController writeStroyController = TextEditingController();

  int maxLength = 500;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: null,
        backgroundColor: AppColors.bgColors,
        centerTitle: true,
        title: CustomText(
          color: AppColors.black500,
          text: AppConstants.addStory,
          fontsize: Dimensions.fontSizeLarge,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeExtraLarge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.h,
                ),
                const TextFieldCustom(
                  hinText: AppConstants.myStory,
                ),
                SizedBox(
                  height: 16.h,
                ),

                ///-----------select category text field------------->
                Container(
                  height: 43.h,
                  width: 342.w,
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    controller: selectedCategory,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 15, top: 1),
                        fillColor: AppColors.white,
                        filled: true,
                        suffixIcon: TextButton(
                            onPressed: () {
                              controller.toggleDropDwonShow();
                            },
                            child: Container(
                                margin: EdgeInsets.only(right: 10.w),
                                child: controller.dropDownShowCategory == false
                                    ? SvgPicture.asset(
                                        AppIcons.chevron_down,
                                      )
                                    : SvgPicture.asset(
                                        AppIcons.chevron_up,
                                      ))),
                        hintText: AppConstants.selectCategory,
                        hintStyle: const TextStyle(
                            color: AppColors.black100,
                            fontSize: Dimensions.fontSizeSmall,
                            fontWeight: FontWeight.w500),
                        border: InputBorder.none),
                  ),
                ),

                ///----------------------select Category dropdown menu------------------------
                controller.dropDownShowCategory == true
                    ? Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        height: 200.h,
                        width: 326,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            border: Border(
                              bottom: BorderSide(color: AppColors.blue500),
                              right: BorderSide(color: AppColors.blue500),
                              left: BorderSide(color: AppColors.blue500),
                            )),
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.categoryList.length,
                          itemBuilder: (context, index) {
                            var category = controller.categoryList[index];
                            return ListTile(
                              onTap: () {
                                controller.selectedIndex.value = index;
                                selectedCategory.text = category["categoryTitle"];
                                print("========================${controller.selectedIndex} and $index");
                                controller.update();
                              },
                              title: Text("${category["categoryTitle"]}", style: TextStyle(fontSize: Dimensions.fontSizeDefault),),
                              ///<-----------------check box check or uncheck------------------->
                              leading: controller.selectedIndex.value == index
                                  ? SvgPicture.asset(
                                      AppIcons.radio_button_check)
                                  : SvgPicture.asset(
                                      AppIcons.radio_button_uncheck),
                            );
                          },
                        ),
                      )
                    : const SizedBox(
                        height: 0,
                      ),

                SizedBox(
                  height: 16.h,
                ),

                ///-----------select backgound text field------------->
                Container(
                  height: 43.h,
                  width: 342.w,
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    controller: selectedBackgroundMusic,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 1, left: 15),
                        fillColor: AppColors.white,
                        filled: true,
                        suffixIcon: Container(
                            margin: EdgeInsets.only(right: 10.w),
                            child: TextButton(
                              onPressed: () {
                                controller.toggleDropDwonShowBackGrounMusic();
                              },
                              child: controller.dropDownShowBackGroundMusic ==
                                      false
                                  ? SvgPicture.asset(
                                      AppIcons.music_on,
                                    )
                                  : SvgPicture.asset(
                                      AppIcons.music_of,
                                    ),
                            )),
                        hintText: AppConstants.backgroundMusic,
                        hintStyle: const TextStyle(
                            color: AppColors.black100,
                            fontSize: Dimensions.fontSizeSmall,
                            fontWeight: FontWeight.w500),
                        border: InputBorder.none),
                  ),
                ),

                ///------------------------- dropdown menu for back ground music------------------->
                controller.dropDownShowBackGroundMusic == false
                    ? Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        height: 220.h,
                        width: 326,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            border: Border(
                              bottom: BorderSide(color: AppColors.blue500),
                              right: BorderSide(color: AppColors.blue500),
                              left: BorderSide(color: AppColors.blue500),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 15, top: 10, right: 24.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text: AppConstants.cheering_birds,
                                        fontsize: Dimensions.fontSizeExtraLarge,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blue500,
                                      ),
                                      SvgPicture.asset(AppIcons.add_Icon)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  CustomText(
                                    text: AppConstants.musicType,
                                    fontsize: Dimensions.fontSizeSmall,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black300,
                                  ),
                                ],
                              ),
                            ),

                            ///--------------------------back ground music list tile------------------->
                            Container(
                              height: 100,
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: controller.BackGrounMusicList.length,
                                itemBuilder: (context, index) {
                                  var backGrounMusic =
                                      controller.BackGrounMusicList[index];
                                  return ListTile(
                                      onTap: () {
                                        controller.selectedIndexBackMusic = index;
                                        selectedBackgroundMusic.text = backGrounMusic["backGroundMusic"];
                                      },
                                      title: Text(
                                          "${backGrounMusic["backGroundMusic"]}"),
                                      trailing: controller.selectedIndexBackMusic == index ? SvgPicture.asset(
                                          AppIcons.radio_button_check)
                                       : SvgPicture.asset(AppIcons.radio_button_uncheck),
                                      );
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(
                        height: 0,
                      ),

                SizedBox(
                  height: 16.h,
                ),
                CustomText(
                  text: AppConstants.uploadPhoto,
                  fontWeight: FontWeight.w500,
                  fontsize: Dimensions.fontSizeDefault,
                ),

                ///<---------------------update image container for image picker--------------------------->
                ImagePickerContainer(),


                CustomText(
                  text: AppConstants.youStory,
                  fontWeight: FontWeight.w500,
                  fontsize: Dimensions.fontSizeDefault,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  child: ConstrainedBox(
                    //  fit: FlexFit.loose,
                    constraints: BoxConstraints(
                      maxHeight: height,
                      maxWidth: 342.w,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: TextFormField(
                        controller: writeStroyController,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        minLines: 1,
                        maxLength: maxLength,
                        decoration: InputDecoration(
                          fillColor: AppColors.white,
                          filled: true,
                          hintText: "\n\n\n\n\n\n\n\n\n\n\n",
                          border: InputBorder.none,
                        ),
                        // validator: (text) => text!.length < 5 ? "You have reached your word limit" : null,
                      ),
                    ),
                  ),
                ),


                maxLength == writeStroyController.text.length
                    ? Container(
                  padding: EdgeInsets.only(left: 16,right: 16),
                     height: 40.h,
                      width: 342.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.red50
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 1),
                              child: SvgPicture.asset(AppIcons.unValidIcon),
                            ),
                            FittedBox(
                              fit: BoxFit.cover,
                              child: CustomText(
                                text: AppConstants.unValidationMessege,
                                fontsize: Dimensions.fontSizeDefault,
                                fontWeight: FontWeight.w400,
                                color: AppColors.red500,
                              ),
                            )
                          ],
                        ),
                    )
                    : SizedBox(height: 0,),
                SizedBox(
                  height: 24.h,
                ),
                CustomButton(title: AppConstants.submit, onpress: () {}),
                SizedBox(
                  height: 130.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


///================================================================================
