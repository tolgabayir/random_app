import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_app/controller/home_page_controller.dart';
import 'package:random_app/view/home/widget/list_tile_widget.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text("Listelerim"),
      ),
      body: ListView.builder(
          itemCount: controller.list.length,
          itemBuilder: (context, index) {
            return ListTileWidget(
              listTitle: const Text("Liste"),
              listCompleted: false,
              listSubtitle: const Text("x adet elemani var."),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text("Liste ekle"),
        onPressed: controller.onTapCreateList,
      ),
    );
  }
}
