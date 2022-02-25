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

List<CargoItem> cargoItems = [
  CargoItem(
    time: "12:30",
    title: "Mandarin Oriental, 38-40",
    location: "08007 Barcelona, Spain",
    isOut: false,
    isTomorrow: false,
    withBed: true,
  ),
  CargoItem(
    time: "07:13",
    title: "9 Sherif Khimshiashvill St",
    location: "Batumi, Georgia",
    isOut: true,
    isTomorrow: true,
    withBed: false,
  ),
  CargoItem(
    time: "20:00",
    title: "9 Sherif Khimshiashvill St",
    location: "Batumi, Georgia",
    isOut: false,
    isTomorrow: false,
    withBed: false,
  ),
];
