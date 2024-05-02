import 'package:flutter_demo/importer.dart';

part 'article_state.freezed.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState({
    @Default(AsyncValue.loading()) AsyncValue all,
    @Default(AsyncValue.loading()) AsyncValue business,
    @Default(AsyncValue.loading()) AsyncValue entertainment,
    @Default(AsyncValue.loading()) AsyncValue general,
    @Default(AsyncValue.loading()) AsyncValue health,
    @Default(AsyncValue.loading()) AsyncValue science,
    @Default(AsyncValue.loading()) AsyncValue sports,
    @Default(AsyncValue.loading()) AsyncValue technology,
  }) = _ArticleState;
}