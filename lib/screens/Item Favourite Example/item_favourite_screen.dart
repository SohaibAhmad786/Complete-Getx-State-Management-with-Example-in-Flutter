import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning_v2/screens/Item%20Favourite%20Example/item_favourite_controller.dart';

class ItemFavouriteExample extends StatelessWidget {
  const ItemFavouriteExample({super.key});

  @override
  Widget build(BuildContext context) {
    final ItemFavouriteController controller =
        Get.put(ItemFavouriteController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Getx Practice",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: controller.fruitList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              if (controller.favouriteList
                  .contains(controller.fruitList[index].toString())) {
                controller.removeFromFavourite(
                    controller.fruitList[index].toString());
              } else {
                controller
                    .addToFavourite(controller.fruitList[index].toString());
              }
            },
            title: Text(
              controller.fruitList[index].toString(),
              style: const TextStyle(fontSize: 20),
            ),
            trailing: Obx(
              () {
                return controller.favouriteList
                  .contains(controller.fruitList[index].toString()) ?const Icon(Icons.favorite,color: Colors.redAccent,) :const Icon(Icons.favorite_outline);
              },
            ),
          );
        },
      ),
    );
  }
}
