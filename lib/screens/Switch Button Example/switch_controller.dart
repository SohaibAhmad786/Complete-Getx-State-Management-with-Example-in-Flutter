import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool switchValue = false.obs;

  setSwitchValue(bool val) {
    switchValue.value = val;
  }
}
