import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';

final pageIndexProvider = StateProvider<int>((ref) => 0);

final sdad = StreamProvider((ref) => testStream().getidex());

class testStream {
  StreamController<int> _streamController = StreamController();

  void afunc(int i) {
    _streamController.add(i);
  }

  Stream<int> getidex() {
    return _streamController.stream;
  }
}
