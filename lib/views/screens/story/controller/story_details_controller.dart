import 'package:get/get.dart';

class StoryDetailsController extends GetxController{
  RxBool isVolum = true.obs;

  isValumToggle(){
    isVolum.value = !isVolum.value;
  }
}