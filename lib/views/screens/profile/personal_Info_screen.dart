import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:memorial/utils/app_images.dart';
import 'package:memorial/views/widgets/custom_button.dart';
import '../../../routes/app_routes.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/dimensions.dart';
import '../../widgets/custom_text.dart';


class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///------------------app bar section----------------->
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        leading: Container(
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
          text: AppConstants.poersonalInformation,
          fontWeight: FontWeight.w500,
          fontsize: Dimensions.fontSizeExtraLarge,
          color: AppColors.black500,
        ),
      ),

      /// --------------------------body section------------------------->
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16.h,),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 120,
                  width: 120,
                    child: Image.asset(appImages.profileImage,fit: BoxFit.cover,)),
                
                Positioned(
                  top: 80,
                  left: 85,
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.white
                    ),
                    child: Icon(Icons.edit),
                  ),
                )
              ],
            ),


            ///------------------personal infomainton list-------------------
            SizedBox(height: 25.h,),
            ListTile(
              leading: SvgPicture.asset(AppIcons.userIcon),
              title: CustomText(text: AppConstants.jennyWilson,fontWeight: FontWeight.w500,fontsize: Dimensions.fontSizeExtraLarge,),
            ),

            ListTile(
              leading: SvgPicture.asset(AppIcons.mailIcon),
              title: CustomText(text: AppConstants.profileEmail,fontWeight: FontWeight.w500,fontsize: Dimensions.fontSizeExtraLarge,),
            ),

            ///---------------edit botton------------------
            Spacer(),
            CustomButton(title: AppConstants.edit, onpress: (){
                Get.toNamed(AppRoutes.editPersonalInformaitonScreen);
            }),
            SizedBox(height: 40.h,)
          ],
        ),
      ),
    );
  }
}
