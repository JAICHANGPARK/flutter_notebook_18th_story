import 'package:freezed_annotation/freezed_annotation.dart';

part 'cargo_item.freezed.dart';

@freezed
class CargoItem with _$CargoItem {
  factory CargoItem({
    String? time,
    bool? isTomorrow,
    String? title,
    String? location,
    bool? isOut,
    bool? withBed,
  }) = _CargoItem;
}
