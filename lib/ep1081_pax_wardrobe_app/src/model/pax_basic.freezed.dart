// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pax_basic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaxBasicTearOff {
  const _$PaxBasicTearOff();

  _PaxBasic call({double? width, int? height, int? depth, int? frameColor}) {
    return _PaxBasic(
      width: width,
      height: height,
      depth: depth,
      frameColor: frameColor,
    );
  }
}

/// @nodoc
const $PaxBasic = _$PaxBasicTearOff();

/// @nodoc
mixin _$PaxBasic {
  double? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get depth => throw _privateConstructorUsedError;
  int? get frameColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaxBasicCopyWith<PaxBasic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaxBasicCopyWith<$Res> {
  factory $PaxBasicCopyWith(PaxBasic value, $Res Function(PaxBasic) then) =
      _$PaxBasicCopyWithImpl<$Res>;
  $Res call({double? width, int? height, int? depth, int? frameColor});
}

/// @nodoc
class _$PaxBasicCopyWithImpl<$Res> implements $PaxBasicCopyWith<$Res> {
  _$PaxBasicCopyWithImpl(this._value, this._then);

  final PaxBasic _value;
  // ignore: unused_field
  final $Res Function(PaxBasic) _then;

  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? depth = freezed,
    Object? frameColor = freezed,
  }) {
    return _then(_value.copyWith(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: depth == freezed
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      frameColor: frameColor == freezed
          ? _value.frameColor
          : frameColor // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PaxBasicCopyWith<$Res> implements $PaxBasicCopyWith<$Res> {
  factory _$PaxBasicCopyWith(_PaxBasic value, $Res Function(_PaxBasic) then) =
      __$PaxBasicCopyWithImpl<$Res>;
  @override
  $Res call({double? width, int? height, int? depth, int? frameColor});
}

/// @nodoc
class __$PaxBasicCopyWithImpl<$Res> extends _$PaxBasicCopyWithImpl<$Res>
    implements _$PaxBasicCopyWith<$Res> {
  __$PaxBasicCopyWithImpl(_PaxBasic _value, $Res Function(_PaxBasic) _then)
      : super(_value, (v) => _then(v as _PaxBasic));

  @override
  _PaxBasic get _value => super._value as _PaxBasic;

  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? depth = freezed,
    Object? frameColor = freezed,
  }) {
    return _then(_PaxBasic(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: depth == freezed
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      frameColor: frameColor == freezed
          ? _value.frameColor
          : frameColor // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_PaxBasic implements _PaxBasic {
  _$_PaxBasic({this.width, this.height, this.depth, this.frameColor});

  @override
  final double? width;
  @override
  final int? height;
  @override
  final int? depth;
  @override
  final int? frameColor;

  @override
  String toString() {
    return 'PaxBasic(width: $width, height: $height, depth: $depth, frameColor: $frameColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaxBasic &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.depth, depth) &&
            const DeepCollectionEquality()
                .equals(other.frameColor, frameColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(depth),
      const DeepCollectionEquality().hash(frameColor));

  @JsonKey(ignore: true)
  @override
  _$PaxBasicCopyWith<_PaxBasic> get copyWith =>
      __$PaxBasicCopyWithImpl<_PaxBasic>(this, _$identity);
}

abstract class _PaxBasic implements PaxBasic {
  factory _PaxBasic({double? width, int? height, int? depth, int? frameColor}) =
      _$_PaxBasic;

  @override
  double? get width;
  @override
  int? get height;
  @override
  int? get depth;
  @override
  int? get frameColor;
  @override
  @JsonKey(ignore: true)
  _$PaxBasicCopyWith<_PaxBasic> get copyWith =>
      throw _privateConstructorUsedError;
}
