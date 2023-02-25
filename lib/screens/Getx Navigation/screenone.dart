import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning_v2/screens/Getx%20Navigation/screentwo.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key, required this.dataPassing});
  final String dataPassing;

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Screen One",
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
            child: Text(widget.dataPassing),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const ScreenTwo());
              },
              child: const Text(
                "Go to Screen Two",
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
