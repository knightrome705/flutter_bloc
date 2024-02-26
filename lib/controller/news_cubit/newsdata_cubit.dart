import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/news_data/news_api_service.dart';
import '../../models/news_model/newsapi.dart';
import '../../utils/common_toat.dart';

part 'newsdata_state.dart';
part 'newsdata_cubit.freezed.dart';

class NewsdataCubit extends Cubit<NewsdataState> {
  final NewsApiService newsApiService;
  NewsdataCubit({required this.newsApiService}) : super(const NewsdataState.initial());
  Future<void> fetch()async{
    var data;
    try{
      emit(const NewsdataState.loading());
      final response=await newsApiService.getNews('keyword','8bfaaf2415b742bebba0d93fc194e6ad');
      if(response.body!=null){
        data= NewsApi.fromJson(response.body!);
      }
      if(response.isSuccessful){
        emit(NewsdataState.loaded(data));
      }else{
        emit(const NewsdataState.error());
      }
    }catch(e){
      commonToast(e.toString());
    }

  }
}
