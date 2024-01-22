// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:memorial/utils/app_colors.dart';
// import 'package:memorial/utils/app_constants.dart';
// import 'package:memorial/utils/app_icons.dart';
// import 'package:memorial/utils/app_images.dart';
// import 'package:memorial/utils/dimensions.dart';
//
// import '../../widgets/custom_text.dart';
// import '../../widgets/individual.dart';
// import 'inner_widgets/pop_up_menu.dart';
//
// class MyStoryDetailsScreen extends StatelessWidget {
//   const MyStoryDetailsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       /// -------------------------------------app bar section------------------------>
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: AppColors.bgColors,
//         leading: Container(
//           padding: EdgeInsets.all(6),
//           margin: const EdgeInsets.only(left: Dimensions.paddingSizeDefault),
//           child: FittedBox(
//             fit: BoxFit.contain,
//             child: GestureDetector(
//               onTap: () {
//                 Get.back(); // Corrected from Get.back
//               },
//               child: Container(
//                 height: 32.h,
//                 width: 32.w,
//                 child: SvgPicture.asset(
//                   AppIcons.back_arrow,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         centerTitle: true,
//         title: CustomText(
//           text: AppConstants.storyDetails,
//           fontWeight: FontWeight.w500,
//           fontsize: Dimensions.fontSizeExtraLarge,
//           color: AppColors.black500,
//         ),
//         actions: [
//           Padding(
//             padding: EdgeInsets.only(right: 4),
//             child: PopupMenuButton(
//                 surfaceTintColor: Colors.green,
//                 clipBehavior: Clip.none,
//                 elevation: 0.0,
//                 color: AppColors.white,
//                 offset: Offset(0.0, 40),
//                 itemBuilder: (context) => [PopUpMenu()]),
//           )
//         ],
//       ),
//
//       ///-----------------------body section-------------------------->
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//               horizontal: Dimensions.paddingSizeExtraLarge),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CustomText(
//                 text: AppConstants.storyTitle,
//                 fontsize: Dimensions.fontSizeOverLarge,
//                 fontWeight: FontWeight.w600,
//                 color: AppColors.blue500,
//               ),
//               CustomText(
//                 text: AppConstants.storyTime,
//                 fontsize: Dimensions.fontSizeDefault,
//                 fontWeight: FontWeight.w400,
//                 color: AppColors.black500,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Individual(),
//                   Container(
//                       height: 40.h,
//                       width: 40.w,
//                       padding: const EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8),
//                           color: AppColors.blue500),
//                       child: SvgPicture.asset(AppIcons.volume))
//                 ],
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               Container(
//                 height: 352.h,
//                 width: 342.w,
//                 clipBehavior: Clip.antiAlias,
//                 decoration:
//                     BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
//                 child: Image.asset(
//                   appImages.Rectangle374,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               SizedBox(
//                 height: 16.h,
//               ),
//               CustomText(
//                 text: AppConstants.storydescription,
//                 fontsize: Dimensions.fontSizeLarge,
//                 fontWeight: FontWeight.w400,
//                 color: AppColors.black500,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
