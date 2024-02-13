import 'package:chopper/chopper.dart';
part 'news_api_service.chopper.dart';

@ChopperApi(baseUrl: "https://newsapi.org/v2/everything?q=keyword&apiKey=8bfaaf2415b742bebba0d93fc194e6ad")
abstract class NewsApiService extends ChopperService{
  @Get()
   Future<Response>  getnewses();
  @Get(path: '/{id}')
  Future<Response>  getnews(@Path('id') int id);
}