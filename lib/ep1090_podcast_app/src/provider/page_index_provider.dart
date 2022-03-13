import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';

final pageIndexProvider = StateProvider<int>((ref) => 0);

final sdad = StreamProvider((ref) => TestStream().getIdx());

class TestStream {
  StreamController<int> _streamController = StreamController();

  void aFunc(int i) {
    _streamController.add(i);
  }

  Stream<int> getIdx() {
    return _streamController.stream;
  }
}
