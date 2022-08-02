import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import 'mvc_controller.dart';

class MVCView extends StatefulWidget {
  const MVCView({Key? key}) : super(key: key);

  @override
  State createState() => _MVCViewState();
}

class _MVCViewState extends StateMVC<MVCView> {
  _MVCViewState() : super(MVCController()) {
    con = controller as MVCController;
  }

  late MVCController con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVC 패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(con.model.counter.toString(), style: const TextStyle(fontSize: 150)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        con.incrementCounter();
                      },
                      child: const Text('+', style: TextStyle(fontSize: 30))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        con.decrementCounter();
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
