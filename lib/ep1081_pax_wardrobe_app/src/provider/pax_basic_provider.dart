import 'package:flutter_notebook_18th_story/ep1081_pax_wardrobe_app/src/model/pax_basic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final paxBasicProvider = StateNotifierProvider<PaxBasicController, PaxBasic>(
  (ref) => PaxBasicController(
    PaxBasic(width: 200, height: 1, depth: 1, frameColor: 0),
  ),
);

class PaxBasicController extends StateNotifier<PaxBasic> {
  PaxBasicController(PaxBasic state) : super(state);

  updateWidth(double d) {
    state = state.copyWith(width: d);
  }
}
