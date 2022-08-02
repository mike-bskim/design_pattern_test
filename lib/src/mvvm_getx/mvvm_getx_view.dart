import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'mvvm_getx_controller.dart';

class MVVMGetXView extends GetView<MVVMGetXController> {
  const MVVMGetXView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVVM GetX 패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(controller.count.toString(), style: const TextStyle(fontSize: 150)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        controller.incrementCounter();
                      },
                      child: const Text('+', style: TextStyle(fontSize: 30))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        controller.decrementCounter();
                      },
                      child: const Text('-', style: TextStyle(fontSize: 30))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
