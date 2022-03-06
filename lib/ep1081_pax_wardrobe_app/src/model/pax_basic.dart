import 'package:freezed_annotation/freezed_annotation.dart';

part 'pax_basic.freezed.dart';

@freezed
class PaxBasic with _$PaxBasic {
  factory PaxBasic({
    double? width,
    int? height,
    int? depth,
    int? frameColor,
  }) = _PaxBasic;
}
