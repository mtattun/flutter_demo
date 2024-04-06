import 'package:flutter_demo/importer.dart';

class ApiService {
  Future<List<ArticleModel>> fetchArticles() async {
    return Future.value(
      Fakes.articles.map(
        (dynamic article) =>
          ArticleModel.fromJson(article)).toList()
    );
  }

  Future<List<ArticleCategoryModel>> fetchArticleCategories() async {
    return Future.value(
      Fakes.articleCategories.map(
        (dynamic articleCategory) =>
          ArticleCategoryModel.fromJson(articleCategory)).toList()
    );
  }
}