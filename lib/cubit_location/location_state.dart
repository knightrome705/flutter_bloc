part of 'location_cubit.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial(
  {
    required String location
}
      )=_Inital;
  const factory LocationState.getlocation({ required LocationApi location})=_Loaded;
}
