import 'package:get/get.dart';

class SliderController extends GetxController {
  RxDouble opacity = 0.3.obs;

  setvalue(double val) {
    opacity.value = val;
  }
}
