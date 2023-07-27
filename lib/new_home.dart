import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/new_controller.dart';

class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Center(
          child: GetX<NewController>(
            init: NewController(),
            builder: (controller) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'A new controller ${controller.count.value}',
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
      ),
    );
  }
}
