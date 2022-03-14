// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'popular_cast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PopularCastTearOff {
  const _$PopularCastTearOff();

  _PopularCast call(
      {String? img, String? tag, String? title, String? speaker}) {
    return _PopularCast(
      img: img,
      tag: tag,
      title: title,
      speaker: speaker,
    );
  }
}

/// @nodoc
const $PopularCast = _$PopularCastTearOff();

/// @nodoc
mixin _$PopularCast {
  String? get img => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get speaker => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PopularCastCopyWith<PopularCast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularCastCopyWith<$Res> {
  factory $PopularCastCopyWith(
          PopularCast value, $Res Function(PopularCast) then) =
      _$PopularCastCopyWithImpl<$Res>;
  $Res call({String? img, String? tag, String? title, String? speaker});
}

/// @nodoc
class _$PopularCastCopyWithImpl<$Res> implements $PopularCastCopyWith<$Res> {
  _$PopularCastCopyWithImpl(this._value, this._then);

  final PopularCast _value;
  // ignore: unused_field
  final $Res Function(PopularCast) _then;

  @override
  $Res call({
    Object? img = freezed,
    Object? tag = freezed,
    Object? title = freezed,
    Object? speaker = freezed,
  }) {
    return _then(_value.copyWith(
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      speaker: speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PopularCastCopyWith<$Res>
    implements $PopularCastCopyWith<$Res> {
  factory _$PopularCastCopyWith(
          _PopularCast value, $Res Function(_PopularCast) then) =
      __$PopularCastCopyWithImpl<$Res>;
  @override
  $Res call({String? img, String? tag, String? title, String? speaker});
}

/// @nodoc
class __$PopularCastCopyWithImpl<$Res> extends _$PopularCastCopyWithImpl<$Res>
    implements _$PopularCastCopyWith<$Res> {
  __$PopularCastCopyWithImpl(
      _PopularCast _value, $Res Function(_PopularCast) _then)
      : super(_value, (v) => _then(v as _PopularCast));

  @override
  _PopularCast get _value => super._value as _PopularCast;

  @override
  $Res call({
    Object? img = freezed,
    Object? tag = freezed,
    Object? title = freezed,
    Object? speaker = freezed,
  }) {
    return _then(_PopularCast(
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      speaker: speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PopularCast implements _PopularCast {
  _$_PopularCast({this.img, this.tag, this.title, this.speaker});

  @override
  final String? img;
  @override
  final String? tag;
  @override
  final String? title;
  @override
  final String? speaker;

  @override
  String toString() {
    return 'PopularCast(img: $img, tag: $tag, title: $title, speaker: $speaker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PopularCast &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality().equals(other.tag, tag) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.speaker, speaker));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(img),
      const DeepCollectionEquality().hash(tag),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(speaker));

  @JsonKey(ignore: true)
  @override
  _$PopularCastCopyWith<_PopularCast> get copyWith =>
      __$PopularCastCopyWithImpl<_PopularCast>(this, _$identity);
}

abstract class _PopularCast implements PopularCast {
  factory _PopularCast(
      {String? img,
      String? tag,
      String? title,
      String? speaker}) = _$_PopularCast;

  @override
  String? get img;
  @override
  String? get tag;
  @override
  String? get title;
  @override
  String? get speaker;
  @override
  @JsonKey(ignore: true)
  _$PopularCastCopyWith<_PopularCast> get copyWith =>
      throw _privateConstructorUsedError;
}
