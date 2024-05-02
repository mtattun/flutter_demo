import 'dart:async';

import 'package:flutter_demo/importer.dart';

final articleNotifierProvider =
  AsyncNotifierProvider.family<ArticleNotifier, List<Article>, String?>(ArticleNotifier.new);

class ArticleNotifier extends FamilyAsyncNotifier<List<Article>, String?> {
  final _repository = NewsRepository();
  
  @override
  FutureOr<List<Article>> build(String? arg) async {
    final articles = await _repository.fetchArticles(arg);
    return articles;
  }
}