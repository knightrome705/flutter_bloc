import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled7/location_data/location_api_service.dart';
import 'package:untitled7/utils/common_toat.dart';

import '../location_model/locationapi.dart';

part 'location_state.dart';
part 'location_cubit.freezed.dart';

class LocationCubit extends Cubit<LocationState> {
 final LocationApiService locationApiService;
  LocationCubit({required this.locationApiService}) : super(const LocationState.initial(location: "null"));
  Future<void> getLocation()async{
    var data;
    try{
     final response=await locationApiService.getLocation();
      print(response.body);
     if(response.body!=null){
       data= LocationApi.fromJson(response.body!);
     }
     print(data);
     if(response.isSuccessful){
       emit(LocationState.getlocation(location: data));
     }
    }catch(e){
      commonToast(e.toString());
    }
  }



}
