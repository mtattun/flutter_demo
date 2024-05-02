import 'package:flutter_demo/importer.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'NEWS_API_KEY', obfuscate: true)
  static String newsApikey = _Env.newsApikey;
}