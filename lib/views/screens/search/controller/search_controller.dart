import 'package:get/get.dart';
import 'package:memorial/utils/app_icons.dart';

class SearchControllerG extends GetxController {
  RxList suggestionTextList = [].obs;



  addSuggestionToSuggestionList(String text) {
     suggestionTextList.add(text);
    // suggestionTextList.add({
    //   "suffex": AppIcons.search,
    //   "text" : text,
    //   "trallingIcon" : "tralling icon"
    // });
  }

}
