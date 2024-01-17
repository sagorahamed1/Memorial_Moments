import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/icons.dart';
import 'package:memorial/views/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: AppConstants.memorialMoments),
        actions: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset(appIcons.notification))
        ],
      ),

      // body: Column(
      //   children: [
      //     SizedBox(height: 18.h,),
      //
      //     Row(
      //       children: [
      //         CustomText(text: "All")
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
