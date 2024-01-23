import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';

class ImagePickerContainer extends StatefulWidget {
   ImagePickerContainer({
    super.key,
  });

  @override
  State<ImagePickerContainer> createState() => _ImagePickerContainerState();
}

class _ImagePickerContainerState extends State<ImagePickerContainer> {
  File? _image;

 Future <void> getImage()async{
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (image != null) {
        _image = File(image.path);
      } else {
        print("You have no image");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      height: 200.h,
      width: 342.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.white),
      child: _image != null ?Container(
        child: Image.asset("${_image}"),
      ) : Center(
        child: Container(
          height: 44.h,
          width: 44.w,
          child: IconButton(onPressed: (){
            getImage();
          }, icon: SvgPicture.asset(AppIcons.photograph)),
        ),
      ),
    );
  }
}
