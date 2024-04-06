import 'package:flutter_demo/importer.dart';

class Repository{
  Future<List<ArticleModel>> fetchArticles() async {
    return ApiService().fetchArticles();
  }

  Future<List<ArticleCategoryModel>> fetchArticleCategories() async {
    return ApiService().fetchArticleCategories();
  }
}