import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxSnackbarExample extends StatefulWidget {
  const GetxSnackbarExample({super.key});

  @override
  State<GetxSnackbarExample> createState() => _GetxSnackbarExampleState();
}

class _GetxSnackbarExampleState extends State<GetxSnackbarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Getx Practice",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.snackbar(
                "Learning",
                "Everyday you learn new things",
              );
            },
            child: const Text(
              "Simple Snackbar 1",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.snackbar(
                "Learning",
                "Everyday you learn new things",
                backgroundColor: Colors.white54,
                icon: const Icon(Icons.info_outline,size: 30,),
                snackPosition: SnackPosition.BOTTOM,
                reverseAnimationCurve: Curves.elasticOut,
                dismissDirection: DismissDirection.horizontal,
                instantInit: true,
                progressIndicatorBackgroundColor: Colors.blue,
                isDismissible: false,
              );
            },
            child: const Text(
              "Snackbar 2",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
