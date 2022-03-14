import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_cast.freezed.dart';
// part 'popular_cast.g.dart';

@freezed
class PopularCast with _$PopularCast {
  factory PopularCast({
    String? img,
    String? tag,
    String? title,
    String? speaker,
  }) = _PopularCast;
}
