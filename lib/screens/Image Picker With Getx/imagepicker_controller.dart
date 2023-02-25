
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{
  RxString imagePath="".obs;

  Future pickCameraImage()async{
    XFile? pickedImage= await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage !=null) {
      imagePath.value=pickedImage.path;
    }
  }
  Future pickGalleryImage()async{
    XFile? pickedImage= await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage !=null) {
      imagePath.value=pickedImage.path;
    }
  }
  
}