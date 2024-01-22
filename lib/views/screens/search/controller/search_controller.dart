import 'package:get/get.dart';
import 'package:memorial/utils/app_icons.dart';

class SearchControllerG extends GetxController {
  RxList suggestionTextList = [].obs;

  AddSuggestionToSuggestionList(String text) {
    // suggestionTextList.add(text);
    suggestionTextList.add({
      // // "suffex": appIcons.search,
      // "text" : text
    });
  }
}
