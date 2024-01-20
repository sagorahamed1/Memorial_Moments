import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';
import 'package:memorial/utils/dimensions.dart';
import 'package:memorial/views/widgets/custom_buttom.dart';
import 'package:memorial/views/widgets/custom_text.dart';

import '../bottom_nab_bar/bottom_nav_bar.dart';

class AddStoryScreen extends StatelessWidget {
  const AddStoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeExtraLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.h,
              ),
              const CustomTextField(
                hinText: AppConstants.myStory,
              ),
              SizedBox(
                height: 16.h,
              ),

              ///-----------select category------------->
              Container(
                height: 43.h,
                width: 342.w,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: AppColors.white,
                      filled: true,
                      suffixIcon: TextButton(
                          onPressed: () {

                          },
                          child: Container(
                              margin: EdgeInsets.only(right: 10.w),
                              child: SvgPicture.asset(
                                AppIcons.chevron_down,
                              ))),
                      hintText: AppConstants.selectCategory,
                      hintStyle: const TextStyle(
                          color: AppColors.black100,
                          fontSize: Dimensions.fontSizeSmall,
                          fontWeight: FontWeight.w500),
                      border: InputBorder.none),
                ),
              ),
              // const CustomTextField(
              //   hinText: AppConstants.selectCategory,
              //   suffixIcon: appIcons.chevron_down,
              // ),
              SizedBox(
                height: 16.h,
              ),
              const CustomTextField(
                hinText: AppConstants.backgroundMusic,
                suffixIcon: AppIcons.music_of,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomText(
                text: AppConstants.uploadPhoto,
                fontWeight: FontWeight.w500,
                fontsize: Dimensions.fontSizeDefault,
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                height: 200.h,
                width: 342.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.white),
                child: Center(
                  child: Container(
                    height: 44.h,
                    width: 44.w,
                    child: SvgPicture.asset(AppIcons.photograph),
                  ),
                ),
              ),
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
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    minLines: 1,
                    decoration: InputDecoration(
                      fillColor: AppColors.white,
                      filled: true,
                      hintText: "\n\n\n\n\n\n\n\n\n\n\n",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomButton(title: AppConstants.submit, onpress: () {}),
              SizedBox(
                height: 70.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String? hinText;
  final dynamic? suffixIcon;

  const CustomTextField({this.hinText, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43.h,
      width: 342.w,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: AppColors.white,
            filled: true,
            suffixIcon: Container(
                margin: EdgeInsets.only(right: 10.w),
                child: SvgPicture.asset(
                  "${suffixIcon}",
                )),
            hintText: hinText,
            hintStyle: const TextStyle(
                color: AppColors.black100,
                fontSize: Dimensions.fontSizeSmall,
                fontWeight: FontWeight.w500),
            border: InputBorder.none),
      ),
    );
  }
}
