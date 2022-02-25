// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cargo_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CargoItemTearOff {
  const _$CargoItemTearOff();

  _CargoItem call(
      {String? time,
      bool? isTomorrow,
      String? title,
      String? location,
      bool? isOut,
      bool? withBed}) {
    return _CargoItem(
      time: time,
      isTomorrow: isTomorrow,
      title: title,
      location: location,
      isOut: isOut,
      withBed: withBed,
    );
  }
}

/// @nodoc
const $CargoItem = _$CargoItemTearOff();

/// @nodoc
mixin _$CargoItem {
  String? get time => throw _privateConstructorUsedError;
  bool? get isTomorrow => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  bool? get isOut => throw _privateConstructorUsedError;
  bool? get withBed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CargoItemCopyWith<CargoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CargoItemCopyWith<$Res> {
  factory $CargoItemCopyWith(CargoItem value, $Res Function(CargoItem) then) =
      _$CargoItemCopyWithImpl<$Res>;
  $Res call(
      {String? time,
      bool? isTomorrow,
      String? title,
      String? location,
      bool? isOut,
      bool? withBed});
}

/// @nodoc
class _$CargoItemCopyWithImpl<$Res> implements $CargoItemCopyWith<$Res> {
  _$CargoItemCopyWithImpl(this._value, this._then);

  final CargoItem _value;
  // ignore: unused_field
  final $Res Function(CargoItem) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? isTomorrow = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? isOut = freezed,
    Object? withBed = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      isTomorrow: isTomorrow == freezed
          ? _value.isTomorrow
          : isTomorrow // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      isOut: isOut == freezed
          ? _value.isOut
          : isOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      withBed: withBed == freezed
          ? _value.withBed
          : withBed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$CargoItemCopyWith<$Res> implements $CargoItemCopyWith<$Res> {
  factory _$CargoItemCopyWith(
          _CargoItem value, $Res Function(_CargoItem) then) =
      __$CargoItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? time,
      bool? isTomorrow,
      String? title,
      String? location,
      bool? isOut,
      bool? withBed});
}

/// @nodoc
class __$CargoItemCopyWithImpl<$Res> extends _$CargoItemCopyWithImpl<$Res>
    implements _$CargoItemCopyWith<$Res> {
  __$CargoItemCopyWithImpl(_CargoItem _value, $Res Function(_CargoItem) _then)
      : super(_value, (v) => _then(v as _CargoItem));

  @override
  _CargoItem get _value => super._value as _CargoItem;

  @override
  $Res call({
    Object? time = freezed,
    Object? isTomorrow = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? isOut = freezed,
    Object? withBed = freezed,
  }) {
    return _then(_CargoItem(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      isTomorrow: isTomorrow == freezed
          ? _value.isTomorrow
          : isTomorrow // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      isOut: isOut == freezed
          ? _value.isOut
          : isOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      withBed: withBed == freezed
          ? _value.withBed
          : withBed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_CargoItem implements _CargoItem {
  _$_CargoItem(
      {this.time,
      this.isTomorrow,
      this.title,
      this.location,
      this.isOut,
      this.withBed});

  @override
  final String? time;
  @override
  final bool? isTomorrow;
  @override
  final String? title;
  @override
  final String? location;
  @override
  final bool? isOut;
  @override
  final bool? withBed;

  @override
  String toString() {
    return 'CargoItem(time: $time, isTomorrow: $isTomorrow, title: $title, location: $location, isOut: $isOut, withBed: $withBed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CargoItem &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.isTomorrow, isTomorrow) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.isOut, isOut) &&
            const DeepCollectionEquality().equals(other.withBed, withBed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(isTomorrow),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(isOut),
      const DeepCollectionEquality().hash(withBed));

  @JsonKey(ignore: true)
  @override
  _$CargoItemCopyWith<_CargoItem> get copyWith =>
      __$CargoItemCopyWithImpl<_CargoItem>(this, _$identity);
}

abstract class _CargoItem implements CargoItem {
  factory _CargoItem(
      {String? time,
      bool? isTomorrow,
      String? title,
      String? location,
      bool? isOut,
      bool? withBed}) = _$_CargoItem;

  @override
  String? get time;
  @override
  bool? get isTomorrow;
  @override
  String? get title;
  @override
  String? get location;
  @override
  bool? get isOut;
  @override
  bool? get withBed;
  @override
  @JsonKey(ignore: true)
  _$CargoItemCopyWith<_CargoItem> get copyWith =>
      throw _privateConstructorUsedError;
}
