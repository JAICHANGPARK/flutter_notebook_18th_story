// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'food_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FoodHistoryTearOff {
  const _$FoodHistoryTearOff();

  _FoodHistory call(
      {String? img, String? title, double? price, int? itemCount}) {
    return _FoodHistory(
      img: img,
      title: title,
      price: price,
      itemCount: itemCount,
    );
  }
}

/// @nodoc
const $FoodHistory = _$FoodHistoryTearOff();

/// @nodoc
mixin _$FoodHistory {
  String? get img => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get itemCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodHistoryCopyWith<FoodHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodHistoryCopyWith<$Res> {
  factory $FoodHistoryCopyWith(
          FoodHistory value, $Res Function(FoodHistory) then) =
      _$FoodHistoryCopyWithImpl<$Res>;
  $Res call({String? img, String? title, double? price, int? itemCount});
}

/// @nodoc
class _$FoodHistoryCopyWithImpl<$Res> implements $FoodHistoryCopyWith<$Res> {
  _$FoodHistoryCopyWithImpl(this._value, this._then);

  final FoodHistory _value;
  // ignore: unused_field
  final $Res Function(FoodHistory) _then;

  @override
  $Res call({
    Object? img = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? itemCount = freezed,
  }) {
    return _then(_value.copyWith(
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      itemCount: itemCount == freezed
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$FoodHistoryCopyWith<$Res>
    implements $FoodHistoryCopyWith<$Res> {
  factory _$FoodHistoryCopyWith(
          _FoodHistory value, $Res Function(_FoodHistory) then) =
      __$FoodHistoryCopyWithImpl<$Res>;
  @override
  $Res call({String? img, String? title, double? price, int? itemCount});
}

/// @nodoc
class __$FoodHistoryCopyWithImpl<$Res> extends _$FoodHistoryCopyWithImpl<$Res>
    implements _$FoodHistoryCopyWith<$Res> {
  __$FoodHistoryCopyWithImpl(
      _FoodHistory _value, $Res Function(_FoodHistory) _then)
      : super(_value, (v) => _then(v as _FoodHistory));

  @override
  _FoodHistory get _value => super._value as _FoodHistory;

  @override
  $Res call({
    Object? img = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? itemCount = freezed,
  }) {
    return _then(_FoodHistory(
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      itemCount: itemCount == freezed
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_FoodHistory implements _FoodHistory {
  _$_FoodHistory({this.img, this.title, this.price, this.itemCount});

  @override
  final String? img;
  @override
  final String? title;
  @override
  final double? price;
  @override
  final int? itemCount;

  @override
  String toString() {
    return 'FoodHistory(img: $img, title: $title, price: $price, itemCount: $itemCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FoodHistory &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.itemCount, itemCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(img),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(itemCount));

  @JsonKey(ignore: true)
  @override
  _$FoodHistoryCopyWith<_FoodHistory> get copyWith =>
      __$FoodHistoryCopyWithImpl<_FoodHistory>(this, _$identity);
}

abstract class _FoodHistory implements FoodHistory {
  factory _FoodHistory(
      {String? img,
      String? title,
      double? price,
      int? itemCount}) = _$_FoodHistory;

  @override
  String? get img;
  @override
  String? get title;
  @override
  double? get price;
  @override
  int? get itemCount;
  @override
  @JsonKey(ignore: true)
  _$FoodHistoryCopyWith<_FoodHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
