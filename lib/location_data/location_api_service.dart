import 'package:chopper/chopper.dart';

part 'location_api_service.chopper.dart';

@ChopperApi(baseUrl: "/data")
abstract class LocationApiService extends ChopperService {

  @Get(path: "/reverse-geocode-client")
  Future<Response<Map<String,dynamic>>> getLocation(

      );

  static LocationApiService create() {
    final client = ChopperClient(
        baseUrl: Uri.parse('https://api.bigdatacloud.net'),
        services: [
          _$LocationApiService(),
        ],
        converter: const JsonConverter(),
        errorConverter: const JsonConverter(),
        interceptors: [
          HttpLoggingInterceptor()
        ]
    );
    return _$LocationApiService(client);
  }
}
