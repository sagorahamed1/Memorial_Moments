import 'package:get/get.dart';
import 'package:memorial/utils/app_constants.dart';

class AddStoryController extends GetxController {
  RxBool dropDownShowCategory = true.obs;
  RxBool dropDownShowBackGroundMusic = true.obs;

  toggleDropDwonShow() {
    dropDownShowCategory.value = !dropDownShowCategory.value;
  }

  toggleDropDwonShowBackGrounMusic() {
    dropDownShowBackGroundMusic.value = !dropDownShowBackGroundMusic.value;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    toggleDropDwonShow();
  }

  List categoryList = [
    {"categoryTitle": "${AppConstants.individual_Memorial_Moments}"},
    {"categoryTitle": "${AppConstants.veterans_Memorial_Moments}"},
    {"categoryTitle": "${AppConstants.vPet_Memorial_Moments}"},
  ].obs;



  List BackGrounMusicList = [
    {"categoryTitle": "${AppConstants.repeatMusic}"},
    {"categoryTitle": "${AppConstants.onetime_playMusic}"},
  ].obs;
}
