import 'package:chopper/chopper.dart';
import 'package:untitled7/model/newsapi.dart';

import '../core/utils/chopper_json_converter.dart';

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
      converter:
      JsonConverter()
      // JsonSerializableConverter({NewsApi: NewsApi.fromJson}),
    );
    return _$NewsApiService(client);
  }
}
