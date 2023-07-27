import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_flutter/new_controller.dart';

class HomeThree extends StatelessWidget {
  const HomeThree({super.key});

  @override
  Widget build(BuildContext context) {
    NewController controller = Get.put(NewController());

    return GetMaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Obx(
                () => Text(
                  'A new controller ${controller.count.value}',
                ),
              ),
              TextButton(
                onPressed: () {
                  controller.increment();
                },
                child: Text('Add by 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
