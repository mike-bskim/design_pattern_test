import 'dart:async';

import '../model/model.dart';

class MvvmViewModel {
  late Model _model;
  StreamController<Model> controller = StreamController<Model>();
  Stream<Model> get mvvmStream => controller.stream;

  MvvmViewModel() {
    _model = Model();
  }

  int get count => _model.counter;

  void update() {
    controller.sink.add(_model);
  }

  void incrementCounter() {
    _model.incrementCounter();
    update();
  }

  void decrementCounter() {
    _model.decrementCounter();
    update();
  }
}
