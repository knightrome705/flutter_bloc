import 'package:chopper/chopper.dart';

part 'wheather_api_service.chopper.dart';

@ChopperApi(baseUrl: "/v1")
abstract class WheatherApiService extends ChopperService {

  @Get(path: "/current.json")
  Future<Response<Map<String,dynamic>>> getCurrentWheather(
      @Query('q') String query,
      @Query('key') String apiKey,
      );

  static WheatherApiService create() {
    final client = ChopperClient(
        baseUrl: Uri.parse('https://api.weatherapi.com'),
        services: [
          _$WheatherApiService(),
        ],
        converter: const JsonConverter(),
        errorConverter: const JsonConverter(),
        interceptors: [
          HttpLoggingInterceptor()
        ]
    );
    return _$WheatherApiService(client);
  }
}
