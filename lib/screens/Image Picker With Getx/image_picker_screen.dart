import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning_v2/screens/Image%20Picker%20With%20Getx/imagepicker_controller.dart';

class ImagePickerExample extends StatelessWidget {
  const ImagePickerExample({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePickerController controller = Get.put(ImagePickerController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Getx Practice",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => CircleAvatar(
                radius: 50,
                backgroundImage: controller.imagePath.isNotEmpty
                    ? FileImage(
                        File(controller.imagePath.value),
                      )
                    : null,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "Select Image Source",
                    titlePadding: const EdgeInsets.only(top: 15.0),
                    middleText: "",
                    confirm: GestureDetector(
                      onTap: () async {
                        await controller.pickCameraImage();
                        Get.back();
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent.shade400,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                            child: Text(
                          "Camera",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                    cancel: GestureDetector(
                      onTap: () async {
                        await controller.pickGalleryImage();
                        Get.back();
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color:  Colors.blueAccent.shade400,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                            child: Text(
                          "Gallery",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ));
              },
              child: const Text(
                "Pick Image",
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
