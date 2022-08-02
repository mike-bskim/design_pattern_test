import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'mvc/mvc_view.dart';
import 'mvvm/mvvm_view.dart';
import 'mvvm_getx/mvvm_getx_controller.dart';
import 'mvvm_getx/mvvm_getx_view.dart';
import 'mvvm_provider/mvvm_provider_controller.dart';
import 'mvvm_provider/mvvm_provider_view.dart';
import 'normal/no_pattern_view.dart';

class PatternHome extends StatelessWidget {
  const PatternHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonStyle elevatedButtonStyle =
        ElevatedButton.styleFrom(minimumSize: const Size(250.0, 35.0));

    return Scaffold(
      appBar: AppBar(title: const Text('패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const NoPatternView()));
                },
                child: const Text('NO PATTERN')),
            ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MVCView()));
                },
                child: const Text('MVC PATTERN')),
            ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MVVMView()));
                },
                child: const Text('MVVM PATTERN')),
            ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangeNotifierProvider<MVVMProviderController>.value(
                        value: MVVMProviderController(),
                        child: const MVVMProviderView(),
                      ),
                    ),
                  );
                },
                child: const Text('MVVM PROVIDER PATTERN')),
            ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: () {
                  Get.to(
                    () => const MVVMGetXView(),
                    binding: BindingsBuilder(() {
                      Get.put(MVVMGetXController());
                    }),
                  );
                },
                child: const Text('MVVM GETX PATTERN')),
          ],
        ),
      ),
    );
  }
}
