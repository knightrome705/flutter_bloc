import 'package:chopper/chopper.dart';
import 'package:untitled7/core/utils/chopper_json_converter.dart';
import 'package:untitled7/model/newsapi.dart';
part 'news_api_service.chopper.dart';


@ChopperApi(baseUrl: "/everything?q=keyword&apiKey=8bfaaf2415b742bebba0d93fc194e6ad")
abstract class NewsApiService extends ChopperService{
  @Get()
  Future<Response<NewsApi>> getNewses();

  @Get()
  Future<Response<NewsApi>> getNews();

  static NewsApiService create(){
    final client=ChopperClient(baseUrl: Uri.parse("https://newsapi.org/v2"),
    services: [
      _$NewsApiService()
    ],
        converter: const JsonSerializableConverter({NewsApi:NewsApi.fromJson})

    );

    return _$NewsApiService(client);
  }

}























// https://newsapi.org/v2/everything?q=keyword&apiKey=8bfaaf2415b742bebba0d93fc194e6ad























// https://newsapi.org/v2/everything?q=keyword&apiKey=8bfaaf2415b742bebba0d93fc194e6ad
























// https://newsapi.org/v2/everything?q=keyword&apiKey=8bfaaf2415b742bebba0d93fc194e6ad