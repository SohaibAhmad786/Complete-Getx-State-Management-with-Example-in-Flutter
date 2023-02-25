import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning_v2/screens/Slider%20Example/slider_controller.dart';

class SliderExample extends StatelessWidget {
  const SliderExample({super.key});

  @override
  Widget build(BuildContext context) {
    final SliderController controller = Get.put(SliderController());
    return Scaffold(
      
      appBar: AppBar(
        title: const Text(
          "Slider Screen",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Obx(
            () {
              return Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: Colors.pinkAccent.withOpacity(controller.opacity.value),
                ),
              );
            },
          )),
          const SizedBox(
            height: 10,
          ),
          Obx(
            () {
              return Slider(
                min: 0,
                max: 1,
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.setvalue(value);
                },
              );
            },
          )
        ],
      ),
    );
  }
}
