// Project imports:
import 'package:flutter_demo/importer.dart';
import 'package:flutter_demo/view/article/article_screen.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: const HomeScreenWidget()
          );
      },
      routes: [
        GoRoute(
          path: 'article',
          name: 'article',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const ArticleScreenWidget() 
            );
          },
        ),
      ],
    ),
  ]
);
