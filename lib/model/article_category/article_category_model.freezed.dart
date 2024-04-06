// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleCategoryModel _$ArticleCategoryModelFromJson(Map<String, dynamic> json) {
  return _ArticleCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleCategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCategoryModelCopyWith<ArticleCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCategoryModelCopyWith<$Res> {
  factory $ArticleCategoryModelCopyWith(ArticleCategoryModel value,
          $Res Function(ArticleCategoryModel) then) =
      _$ArticleCategoryModelCopyWithImpl<$Res, ArticleCategoryModel>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ArticleCategoryModelCopyWithImpl<$Res,
        $Val extends ArticleCategoryModel>
    implements $ArticleCategoryModelCopyWith<$Res> {
  _$ArticleCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleCategoryModelImplCopyWith<$Res>
    implements $ArticleCategoryModelCopyWith<$Res> {
  factory _$$ArticleCategoryModelImplCopyWith(_$ArticleCategoryModelImpl value,
          $Res Function(_$ArticleCategoryModelImpl) then) =
      __$$ArticleCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$ArticleCategoryModelImplCopyWithImpl<$Res>
    extends _$ArticleCategoryModelCopyWithImpl<$Res, _$ArticleCategoryModelImpl>
    implements _$$ArticleCategoryModelImplCopyWith<$Res> {
  __$$ArticleCategoryModelImplCopyWithImpl(_$ArticleCategoryModelImpl _value,
      $Res Function(_$ArticleCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ArticleCategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleCategoryModelImpl implements _ArticleCategoryModel {
  const _$ArticleCategoryModelImpl({this.id = '', this.name = ''});

  factory _$ArticleCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleCategoryModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'ArticleCategoryModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleCategoryModelImplCopyWith<_$ArticleCategoryModelImpl>
      get copyWith =>
          __$$ArticleCategoryModelImplCopyWithImpl<_$ArticleCategoryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _ArticleCategoryModel implements ArticleCategoryModel {
  const factory _ArticleCategoryModel({final String id, final String name}) =
      _$ArticleCategoryModelImpl;

  factory _ArticleCategoryModel.fromJson(Map<String, dynamic> json) =
      _$ArticleCategoryModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ArticleCategoryModelImplCopyWith<_$ArticleCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
