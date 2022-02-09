import 'package:freezed_annotation/freezed_annotation.dart';

///
/// {"age":15,"date_added":"Mon, 03 Aug 2020 03:23:02 GMT","filename":"female_15_8f822555ad299fd089ae57ffbcc024a0bb83d82c.jpg","gender":"female","image_url":"https://content.fakeface.rest/female_15_8f822555ad299fd089ae57ffbcc024a0bb83d82c.jpg","last_served":"Mon, 07 Feb 2022 06:16:26 GMT","source":"thispersondoesnotexist"}
///

part 'fake_face.freezed.dart';

part 'fake_face.g.dart';

@freezed
class FakeFace extends _$FakeFace {
  factory FakeFace({
    int? age,
    String? dateAdded,
    String? fileName,
    String? imageUrl,
  }) = _FakeFace;
  factory FakeFace.fromJson(Map<String, dynamic> json) => _FakeFaceFromJson(json);

}
