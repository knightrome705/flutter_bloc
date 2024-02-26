import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled7/utils/common_toat.dart';
import '../../data/news_data/news_api_service.dart';
import '../../models/news_model/newsapi.dart';



part 'news_state.dart';
part 'news_cubit.freezed.dart';

class NewsCubit extends Cubit<NewsState> {
  final NewsApiService newsApiService;
  NewsCubit({required this.newsApiService}) : super(const NewsState.initial());

  Future<void> fetch()async{
    var data;
    try{
      emit(const NewsState.loading());
      SharedPreferences shared=await SharedPreferences.getInstance();
      var value=shared.getStringList("item");
      final response=await newsApiService.getNews(value![1],'8bfaaf2415b742bebba0d93fc194e6ad');
      if(response.body!=null){
        data= NewsApi.fromJson(response.body!);
      }
      if(response.isSuccessful){
        emit(NewsState.loaded(data));
      }else{
        emit(const NewsState.error());
      }
    }catch(e){
      commonToast(e.toString());
    }

  }
}