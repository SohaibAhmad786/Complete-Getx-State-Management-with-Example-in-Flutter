import 'package:get/get.dart';

class ItemFavouriteController extends GetxController {
  RxList<String> fruitList = ["Apple", "Orange", "Mango", "Banana"].obs;
  RxList favouriteList = [].obs;

  addToFavourite(String item) {
    favouriteList.add(item);
  }

  removeFromFavourite(String item) {
    favouriteList.remove(item);
  }
}
