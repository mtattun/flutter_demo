import 'package:flutter_demo/const/root_path.dart';
import 'package:flutter_demo/importer.dart';

final goRouter = GoRouter(
  initialLocation: RouterPath.home,
  routes: [
    GoRoute(
      path: RouterPath.home,
      pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: const HomeScreenWidget()
          );
      },
    ),
  ]
);
