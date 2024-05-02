import 'package:flutter_demo/importer.dart';

class ArticleListView extends ConsumerWidget {
  const ArticleListView({super.key, required this.articles});
  final List<Article> articles;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   return Container(
      height: 300,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: articles.map((article){
            return ArticleListItemTemplate(article: article);
          }).toList(),
        ),
      ),
    );
  }
}