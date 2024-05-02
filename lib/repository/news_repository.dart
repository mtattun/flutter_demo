import 'package:flutter_demo/importer.dart';
import 'package:flutter_demo/env/env.dart';

class NewsRepository{
  final _client = NewsApiClient(
    Dio(BaseOptions(contentType: "application/json"))
  );

  Future<List<Article>> fetchArticles(String? cat) async {
    final response =  await _client.fetch("jp", cat, 5, Env.newsApikey);
    return response.articles;
  }
}