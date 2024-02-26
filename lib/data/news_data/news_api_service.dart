import 'package:chopper/chopper.dart';

part 'news_api_service.chopper.dart';

@ChopperApi(baseUrl: "/v2")
abstract class NewsApiService extends ChopperService {

  @Get(path: "/everything")
  Future<Response<Map<String,dynamic>>> getNews(
      @Query('q') String query,
      @Query('apiKey') String apiKey,
      );

  static NewsApiService create() {
    final client = ChopperClient(
      baseUrl: Uri.parse('https://newsapi.org'),
      services: [
        _$NewsApiService(),
      ],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor()
      ]
    );
    return _$NewsApiService(client);
  }
}
