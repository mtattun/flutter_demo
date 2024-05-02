import 'package:flutter_demo/importer.dart';

part 'news_response.freezed.dart';
part 'news_response.g.dart';

@freezed
class NewsResponse with _$NewsResponse {
  const factory NewsResponse({
    @Default("") String status,
    @Default(0) int totalResults,
    required List<Article> articles,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}