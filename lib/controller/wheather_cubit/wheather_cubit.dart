import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/wheather_data/wheather_api_service.dart';
import '../../models/weather_model/weather_api_model.dart';
import '../../utils/common_toat.dart';

part 'wheather_state.dart';
part 'wheather_cubit.freezed.dart';

class WheatherCubit extends Cubit<WheatherState> {
  final WheatherApiService wheatherApiService;
  WheatherCubit({required this.wheatherApiService}) : super(const WheatherState.initial());
  Future<void> fetch()async{
    var wheatherdata;
    try{
      emit(const WheatherState.loading());
      final response=await wheatherApiService.getCurrentWheather('kannur','61b4a2d4296240e6b3a113030242502');
      print("loading");
      print(response.body);
      if(response.body!=null){
        print(response.body);
        wheatherdata= WeatherApiModel.fromJson(response.body!);
        print(wheatherdata);
      }
      if(response.isSuccessful){
        emit(WheatherState.loaded(wheatherdata));
      }
    }catch(e){
      commonToast(e.toString());
    }

  }
}
