// Project imports:
import 'package:flutter_demo/const/root_path.dart';
import 'package:flutter_demo/importer.dart';

class HomeScreenWidget extends ConsumerWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleProvider = ref.watch(articlePageProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('News app'),
      ),
      body: 
      ListView(
        children: [
          // すべて
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                // all
                const HeadlineTemplate(text: "すべて"),
                articleProvider.all.maybeWhen(
                  orElse: CircularProgressIndicator.new,
                  data: (value) {
                    return ArticleListView(articles: value);
                  }
                ),
                ElevatedButton(
                  onPressed:() => context.push(RouterPath.sampleForm),
                  child: const Text("sample form")
                ),
                // // business
                // const HeadlineTemplate(text: "ビジネス"),
                // articleProvider.business.maybeWhen(
                //   orElse: CircularProgressIndicator.new,
                //   data: (value) {
                //     return ArticleListView(articles: value);
                //   }
                // ),
                // // entertainment
                // const HeadlineTemplate(text: "エンターテインメント"),
                // articleProvider.entertainment.maybeWhen(
                //   orElse: CircularProgressIndicator.new,
                //   data: (value) {
                //     return ArticleListView(articles: value);
                //   }
                // ),
                // // general
                // const HeadlineTemplate(text: "一般"),
                // articleProvider.general.maybeWhen(
                //   orElse: CircularProgressIndicator.new,
                //   data: (value) {
                //     return ArticleListView(articles: value);
                //   }
                // ),
                // // health
                // const HeadlineTemplate(text: "医療"),
                // articleProvider.health.maybeWhen(
                //   orElse: CircularProgressIndicator.new,
                //   data: (value) {
                //     return ArticleListView(articles: value);
                //   }
                // ),
                // // science
                // const HeadlineTemplate(text: "サイエンス"),
                // articleProvider.science.maybeWhen(
                //   orElse: CircularProgressIndicator.new,
                //   data: (value) {
                //     return ArticleListView(articles: value);
                //   }
                // ),
                // // sports
                // const HeadlineTemplate(text: "スポーツ"),
                // articleProvider.sports.maybeWhen(
                //   orElse: CircularProgressIndicator.new,
                //   data: (value) {
                //     return ArticleListView(articles: value);
                //   }
                // ),
                // // technology
                // const HeadlineTemplate(text: "テクノロジー"),
                // articleProvider.technology.maybeWhen(
                //   orElse: CircularProgressIndicator.new,
                //   data: (value) {
                //     return ArticleListView(articles: value);
                //   }
                // ),
              ],
            )
          ),
        ],
      )
    );
  }
}
