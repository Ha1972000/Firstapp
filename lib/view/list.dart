import 'package:firstapp/view_model/list_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LV extends GetWidget<ListViewModel> {
  LV({super.key});
final controller=Get.put(ListViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        body: !controller.isLoading.value
            ? ListView.builder(
            itemCount: controller.abc.length,
            itemBuilder: (context, index) {
              return Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.pinkAccent),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(controller.abc[index].toString()),

                            // Text(controller.abc[index].toString()),

                          ],
                        ),
                      ),
                    ),
                  ));
            })
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
