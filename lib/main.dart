import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning_v2/screens/AlertDialog,%20Bottom%20Sheet%20Example/alertdialog_themechanging.dart';
import 'package:getx_learning_v2/screens/Counter%20Example/counter_view.dart';
import 'package:getx_learning_v2/screens/Getx%20Navigation/homescreen.dart';
import 'package:getx_learning_v2/screens/GetxLocalization%20different%20languages/changing_language.dart';
import 'package:getx_learning_v2/screens/GetxLocalization%20different%20languages/languages.dart';
import 'package:getx_learning_v2/screens/Image%20Picker%20With%20Getx/image_picker_screen.dart';
import 'package:getx_learning_v2/screens/Item%20Favourite%20Example/item_favourite_screen.dart';
import 'package:getx_learning_v2/screens/Slider%20Example/slider_screen.dart';
import 'package:getx_learning_v2/screens/Switch%20Button%20Example/switch_screen.dart';
import 'package:getx_learning_v2/screens/snackbar/getx_snacker_practice.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('en','US'),
      translations: Languages(),

      fallbackLocale: const Locale('en','US'),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const ImagePickerExample(),
    );
  }
}

