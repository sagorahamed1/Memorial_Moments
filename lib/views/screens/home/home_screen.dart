import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';
import 'package:memorial/utils/app_images.dart';
import 'package:memorial/views/widgets/custom_text.dart';
import 'package:memorial/views/widgets/individual.dart';
import '../../../utils/dimensions.dart';
import 'inner_widgets/header_section.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    int _bottomNavIndex = 0;
    return Scaffold(
      extendBody: true,


      ///-----------------------this is app bar--------------------------->
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        title: Text(
          AppConstants.memorialMoments,
          style: GoogleFonts.parisienne(
            color: const Color(0xFF0071E3),
            fontWeight: FontWeight.w400,
            fontSize: Dimensions.fontSizeExtraLarge
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: Dimensions.fontSizeLarge),
            child: IconButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.notificationScreen);
                }, icon: SvgPicture.asset(AppIcons.notification)),
          )
        ],
      ),



      ///------------------this is body--------------------------------->
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeExtraLarge),
          child: Column(
            children: [
              SizedBox(
                height: 18.h,
              ),
              ///-------------header section inner widgets----------->
              headerSection(),
              SizedBox(
                height: 21.h,
              ),
              _publishPostSection(),
              SizedBox(
                height: 12.h,
              ),
              _publishPostSection(),

              SizedBox(height: 125.h,)
            ],
          ),
        ),
      ),
    );
  }





  ///<----------------this is published post widget----------------->>
  Stack _publishPostSection() {
    return Stack(
      children: [
        GestureDetector(
          onTap: (){
            Get.toNamed(AppRoutes.storydetailsScreen);
          },
          child: Container(
              height: 497.h,
              width: 342.w,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                appImages.Rectangle374,
                fit: BoxFit.cover,
              )),
        ),
        Positioned(
          left: 12,
          top: 12,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 60.h,
            width: 167.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: AppColors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomText(
                  text: AppConstants.published,
                  color: AppColors.black500,
                  fontsize: Dimensions.fontSizeExtraSmall,
                  fontWeight: FontWeight.w400,
                ),
                FittedBox(
                  fit: BoxFit.cover,
                  child: CustomText(
                    text: AppConstants.date1,
                    color: AppColors.black500,
                    fontsize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),


        ///--------------individual widget------------------->
        Individual(),
        Positioned(
          bottom: 24.h,
          left: 12.w,
          child: CustomText(
            text: AppConstants.description,
            fontWeight: FontWeight.w600,
            fontsize: Dimensions.fontSizeOverLarge,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}


