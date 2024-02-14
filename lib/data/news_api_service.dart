import 'package:chopper/chopper.dart';
part 'news_api_service.chopper.dart';

@ChopperApi(baseUrl: '/everything?q=keyword&apiKey=8bfaaf2415b742bebba0d93fc194e6ad')
abstract class NewsApiService extends ChopperService{
  @Get(headers: {'content-Type':'application/json'})
   Future<Response>  getnewses();
  @Get(path: '/{id}')
  Future<Response> getnews(@Path('id') int id);
  static NewsApiService create(){
    final client=ChopperClient(baseUrl: 'https://newsapi.org/v2',
        services: [
          _$NewsApiService(),
        ],
        converter:JsonConverter()
    );
    return _$NewsApiService();
  }

}