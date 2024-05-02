import 'package:flutter_demo/importer.dart';
import 'package:flutter_demo/view_model/article/article_state.dart';

final articlePageProvider = Provider((ref) {
  var articleProvider = ref.watch(articleNotifierProvider(null));
  var businessProvider = ref.watch(articleNotifierProvider("business"));
  var entertainmentProvider = ref.watch(articleNotifierProvider("entertainment"));
  var generalProvider = ref.watch(articleNotifierProvider("general"));
  var healthProvider = ref.watch(articleNotifierProvider("health"));
  var scienceProvider = ref.watch(articleNotifierProvider("science"));
  var sportsProvider = ref.watch(articleNotifierProvider("sports"));
  var technologyProvider = ref.watch(articleNotifierProvider("technology"));

  return ArticleState(
    all: articleProvider,
    business: businessProvider,
    entertainment: entertainmentProvider,
    general: generalProvider,
    health: healthProvider,
    science: scienceProvider,
    sports: sportsProvider,
    technology: technologyProvider,
  );
});