import 'package:flutter_demo/importer.dart';

class ArticleListItemTemplate extends ConsumerWidget {
  const ArticleListItemTemplate({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 300,
      width: 300,
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 200,
              width: 300,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.network(article.urlToImage),
              )
            )
          ),
          Container(
            height: 50,
            width: 300,
            padding: const EdgeInsets.only(top: 10),
            child: Text(article.title),
          ),
          Container(
            height: 50,
            width: 300,
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  article.author,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  article.publishedAt,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}