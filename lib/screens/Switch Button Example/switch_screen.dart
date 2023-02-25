import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning_v2/screens/Switch%20Button%20Example/switch_controller.dart';

class SwitchExample extends StatelessWidget {
  const SwitchExample({super.key});

  @override
  Widget build(BuildContext context) {
    final SwitchController controller = Get.put(SwitchController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Getx Practice",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: Obx(
          () => Switch(
            value: controller.switchValue.value,
            onChanged: (value) {
              controller.setSwitchValue(value);
            },
          ),
        ),
      ),
    );
  }
}
