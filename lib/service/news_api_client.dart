import 'package:flutter_demo/importer.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_client.g.dart';

@RestApi(baseUrl: "https://newsapi.org/v2")
abstract class NewsApiClient {
  factory NewsApiClient(Dio dio, {String baseUrl}) = _NewsApiClient;

  @GET("/top-headlines")
  Future<NewsResponse> fetch(
    @Query("country") String country,
    @Query("category") String? category,
    @Query("pageSize") int pageSize,
    @Query("apiKey") String apiKey,
  );
}