import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_flutter/controllers.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: GetBuilder<Controller>(
          // ! can we use multiple cotrollers
          init: Controller(),
          builder: (value) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GetBuilder<Controller>(
                  // ! Why it doesn't start from count = 0
                  // ! i am initialising it again here
                  // init: Controller(),
                  builder: (value) => Text(value.count.toString()),
                ),
                Text(value.count.toString()),
                TextButton(
                  onPressed: () {
                    // GetBuilder<Controller>(
                    //   builder: (value) => Container(
                    // ! error
                    // child: Text(value.increment() as String),
                    // ! doesn't do anything
                    // child: Text(value.count.toString()),
                    // ),
                    // );
                    // Controller().increment();

                    value.increment();
                  },
                  child: const Text('Counter ++ '),
                ),
                TextButton(
                  onPressed: () {
                    value.decrement();
                  },
                  child: const Text('Counter -- '),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
