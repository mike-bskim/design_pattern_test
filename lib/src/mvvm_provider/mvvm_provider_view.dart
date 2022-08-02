import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mvvm_provider_controller.dart';

class MVVMProviderView extends StatelessWidget {
  const MVVMProviderView({Key? key}) : super(key: key);

  // MVVMProviderController? controller;

  @override
  Widget build(BuildContext context) {
    // controller = Provider.of<MVVMProviderController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: const Text('MVVM Provider 패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Consumer<MVVMProviderController>(
            //   builder: (_, dy, widget) {
            Text(
              // controller!.count.toString(),
              context.watch<MVVMProviderController>().count.toString(),
              style: const TextStyle(fontSize: 150),
            ),
            //   },
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        // controller!.incrementCounter();
                        context.read<MVVMProviderController>().incrementCounter();
                      },
                      child: const Text('+', style: TextStyle(fontSize: 30))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        // controller!.decrementCounter();
                        context.read<MVVMProviderController>().decrementCounter();
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
