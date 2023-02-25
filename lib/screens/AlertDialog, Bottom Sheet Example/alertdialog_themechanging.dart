import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertDialogAndThemeChanging extends StatefulWidget {
  const AlertDialogAndThemeChanging({super.key});

  @override
  State<AlertDialogAndThemeChanging> createState() =>
      _AlertDialogAndThemeChangingState();
}

class _AlertDialogAndThemeChangingState
    extends State<AlertDialogAndThemeChanging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Getx Practice alert dialog and themeChanging ",
          style: TextStyle(fontSize: 14),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(10),
            title: const Text("Alert Dialog"),
            subtitle: const Text("Getx Alert Dialog"),
            onTap: () {
              Get.defaultDialog(
                  title: "Alert",
                  titlePadding: const EdgeInsets.only(top: 15.0),
                  contentPadding: const EdgeInsets.all(15.0),
                  content:
                      const Text("Are you Sure to want to delete your chat?"),
                  confirm: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.amber.shade900,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                          child: Text(
                        "OK",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  cancel: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.amber.shade900,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                          child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ));
            
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(10),
            title: const Text("Bottom Sheet"),
            subtitle: const Text("Getx Bottom Sheet"),
            onTap: () {
              Get.bottomSheet(
                //backgroundColor: Colors.amber,
                elevation: 20,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                    color: Colors.amber.shade50,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 20),
                        title: const Text(
                          "Light Mode",
                          style: TextStyle(
                          //  color: Colors.white,
                          ),
                        ),
                        leading: const Icon(
                          Icons.light_mode,
                          size: 30,
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 20),
                        title: const Text(
                          "Dark Mode",
                          style: TextStyle(
                          //  color: Colors.white,
                          ),
                        ),
                        leading: const Icon(
                          Icons.dark_mode,
                          size: 30,
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
