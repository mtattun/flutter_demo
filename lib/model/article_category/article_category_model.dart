import 'package:flutter_demo/importer.dart';

part 'article_category_model.freezed.dart';
part 'article_category_model.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class ArticleCategoryModel with _$ArticleCategoryModel {
  const factory ArticleCategoryModel({
    @Default('') String id,
    @Default('') String name,
    @Default('') String imageUrl,
  }) = _ArticleCategoryModel;

  factory ArticleCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleCategoryModelFromJson(json);
}