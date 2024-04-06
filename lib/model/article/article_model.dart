import 'package:flutter_demo/importer.dart';

part 'article_model.freezed.dart';
part 'article_model.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class ArticleModel with _$ArticleModel {
  const factory ArticleModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String body,
    @Default('') String categoryId,
    @Default('') String imageUrl,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
}