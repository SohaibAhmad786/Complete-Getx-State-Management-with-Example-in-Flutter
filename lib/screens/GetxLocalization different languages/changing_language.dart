import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangingLanguage extends StatefulWidget {
  const ChangingLanguage({super.key});

  @override
  State<ChangingLanguage> createState() => _ChangingLanguageState();
}

class _ChangingLanguageState extends State<ChangingLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Screen",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'message'.tr,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Center(
            child: Text(
              'name'.tr,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.updateLocale(const Locale('en','US'));
              },
              child: const Text(
                "English",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.updateLocale(const Locale('ur','PK'));
              },
              child: const Text(
                "Urdu",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}