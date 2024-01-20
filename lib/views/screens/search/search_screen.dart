
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';
import 'package:memorial/utils/dimensions.dart';
import 'package:memorial/views/screens/search/controller/search_controller.dart';
import 'package:memorial/views/widgets/custom_text.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({super.key});

  SearchControllerG controller = Get.put(SearchControllerG());
  TextEditingController searchTextCotroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-------------------app bar-------------------->
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        centerTitle: true,
        title: CustomText
          (text: '',
       //   text: AppConstants.searchs,
       //    fontsize: Dimensions.fontSizeExtraLarge,
       //    fontWeight: FontWeight.w500,
       //    color: AppColors.black500, text: '',
        ),
      ),

      ///----------------this is body part----------------->
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraLarge),
          child: Column(
            children: [
              Container(
                height: 43.h,
                width: 342.w,
                clipBehavior: Clip.antiAlias,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: TextFormField(
                  controller: searchTextCotroller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5),
                      fillColor: AppColors.white,
                      filled: true,
                      prefixIcon: TextButton(
                          onPressed: () {
                            controller.AddSuggestionToSuggestionList(searchTextCotroller.text);
                          },
                          child: Container(
                              margin: EdgeInsets.only(right: 10.w),
                              child: SvgPicture.asset(
                                AppIcons.search,
                              ))),
                      hintText: AppConstants.searchs,
                      hintStyle: const TextStyle(
                          color: AppColors.black100,
                          fontSize: Dimensions.fontSizeSmall,
                          fontWeight: FontWeight.w500),
                      border: InputBorder.none),
                ),
              ),



              ///-------------------search suggestion------------------->
              Container(
                height: 300,
                child: Obx(() => ListView.builder(
                  itemCount: controller.suggestionTextList.value.length,
                  itemBuilder: (context, index) {
                    var suggestions = controller.suggestionTextList[index];
                    print("${suggestions}----------${suggestions.runtimeType}");
                    return Container(
                      height: 27.h,
                      width: 342.w,
                      child: ListTile(
                      //   leading: SvgPicture.asset(
                      //
                      //   ),
                        title: Text("${suggestions[1]}"),
                      ),
                    );
                  },
                )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}