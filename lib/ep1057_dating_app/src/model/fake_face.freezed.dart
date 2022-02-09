// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fake_face.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FakeFace _$FakeFaceFromJson(Map<String, dynamic> json) {
  return _FakeFace.fromJson(json);
}

/// @nodoc
class _$FakeFaceTearOff {
  const _$FakeFaceTearOff();

  _FakeFace call(
      {int? age,
      String? dateAdded,
      String? fileName,
      @JsonKey(name: "image_url") String? imageUrl}) {
    return _FakeFace(
      age: age,
      dateAdded: dateAdded,
      fileName: fileName,
      imageUrl: imageUrl,
    );
  }

  FakeFace fromJson(Map<String, Object?> json) {
    return FakeFace.fromJson(json);
  }
}

/// @nodoc
const $FakeFace = _$FakeFaceTearOff();

/// @nodoc
mixin _$FakeFace {
  int? get age => throw _privateConstructorUsedError;
  String? get dateAdded => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FakeFaceCopyWith<FakeFace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FakeFaceCopyWith<$Res> {
  factory $FakeFaceCopyWith(FakeFace value, $Res Function(FakeFace) then) =
      _$FakeFaceCopyWithImpl<$Res>;
  $Res call(
      {int? age,
      String? dateAdded,
      String? fileName,
      @JsonKey(name: "image_url") String? imageUrl});
}

/// @nodoc
class _$FakeFaceCopyWithImpl<$Res> implements $FakeFaceCopyWith<$Res> {
  _$FakeFaceCopyWithImpl(this._value, this._then);

  final FakeFace _value;
  // ignore: unused_field
  final $Res Function(FakeFace) _then;

  @override
  $Res call({
    Object? age = freezed,
    Object? dateAdded = freezed,
    Object? fileName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAdded: dateAdded == freezed
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FakeFaceCopyWith<$Res> implements $FakeFaceCopyWith<$Res> {
  factory _$FakeFaceCopyWith(_FakeFace value, $Res Function(_FakeFace) then) =
      __$FakeFaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? age,
      String? dateAdded,
      String? fileName,
      @JsonKey(name: "image_url") String? imageUrl});
}

/// @nodoc
class __$FakeFaceCopyWithImpl<$Res> extends _$FakeFaceCopyWithImpl<$Res>
    implements _$FakeFaceCopyWith<$Res> {
  __$FakeFaceCopyWithImpl(_FakeFace _value, $Res Function(_FakeFace) _then)
      : super(_value, (v) => _then(v as _FakeFace));

  @override
  _FakeFace get _value => super._value as _FakeFace;

  @override
  $Res call({
    Object? age = freezed,
    Object? dateAdded = freezed,
    Object? fileName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_FakeFace(
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAdded: dateAdded == freezed
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FakeFace implements _FakeFace {
  _$_FakeFace(
      {this.age,
      this.dateAdded,
      this.fileName,
      @JsonKey(name: "image_url") this.imageUrl});

  factory _$_FakeFace.fromJson(Map<String, dynamic> json) =>
      _$$_FakeFaceFromJson(json);

  @override
  final int? age;
  @override
  final String? dateAdded;
  @override
  final String? fileName;
  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;

  @override
  String toString() {
    return 'FakeFace(age: $age, dateAdded: $dateAdded, fileName: $fileName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FakeFace &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.dateAdded, dateAdded) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(dateAdded),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$FakeFaceCopyWith<_FakeFace> get copyWith =>
      __$FakeFaceCopyWithImpl<_FakeFace>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FakeFaceToJson(this);
  }
}

abstract class _FakeFace implements FakeFace {
  factory _FakeFace(
      {int? age,
      String? dateAdded,
      String? fileName,
      @JsonKey(name: "image_url") String? imageUrl}) = _$_FakeFace;

  factory _FakeFace.fromJson(Map<String, dynamic> json) = _$_FakeFace.fromJson;

  @override
  int? get age;
  @override
  String? get dateAdded;
  @override
  String? get fileName;
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$FakeFaceCopyWith<_FakeFace> get copyWith =>
      throw _privateConstructorUsedError;
}
