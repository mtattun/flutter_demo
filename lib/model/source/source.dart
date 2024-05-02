import 'package:flutter_demo/importer.dart';

part 'source.freezed.dart';
part 'source.g.dart';

@freezed
class Source with _$Source {
  factory Source({
    @Default("") String id,
    @Default("") String name,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) =>
      _$SourceFromJson(json);
}