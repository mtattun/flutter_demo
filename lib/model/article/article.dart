import 'package:flutter_demo/importer.dart';
import 'package:flutter_demo/model/article/source.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required Source source,
    @Default("") String author,
    @Default("") String title,
    @Default("") String description,
    @Default("") String url,
    @Default("") String urlToImage,
    @Default("") String publishedAt,
    @Default("") String content,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}