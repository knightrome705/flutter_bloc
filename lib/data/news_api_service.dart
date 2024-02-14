import 'package:chopper/chopper.dart';

import '../model/news_model.dart';
part 'news_api_service.chopper.dart';

@ChopperApi(baseUrl: '/everything?q=keyword&apiKey=8bfaaf2415b742bebba0d93fc194e6ad')
abstract class NewsApiService extends ChopperService{
  @Get(headers: {'content-Type':'application/json'})
   Future<Response>  getnewses();

  // 1.freezed modelclass
  // 2.create
  // 4.list of news
  // 3.error

  static NewsApiService create(){
    Uri url=Uri.parse('https://newsapi.org/v2');
    final ChopperClient client=ChopperClient(baseUrl:url ,
        services: [
          _$NewsApiService(),
        ],
        converter: const JsonSerializableConverter({NewsModel: NewsModel.fromJson}),
    );
    return _$NewsApiService();
  }

}