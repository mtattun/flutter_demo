import 'package:flutter_demo/const/root_path.dart';
import 'package:flutter_demo/importer.dart';
import 'package:flutter_demo/view/sample_form/sample_form_screen.dart';

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
    GoRoute(
      path: RouterPath.sampleForm,
      pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: SampleFormScreen()
          );
      },
    ),
  ]
);
