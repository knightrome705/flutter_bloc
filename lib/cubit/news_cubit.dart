import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled7/data/news_api_service.dart';

import '../model/newsapi.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

class NewsCubit extends Cubit<NewsState> {
  final NewsApiService newsApiService;
  NewsCubit({required this.newsApiService}) : super(const NewsState.initial());

  Future<void> fetch()async{
    var data;
    try{
      emit(const NewsState.loading());
      final response=await newsApiService.getNews('keyword','8bfaaf2415b742bebba0d93fc194e6ad');
      if(response.body!=null){
        data= NewsApi.fromJson(response.body!);
      }
      if(response.isSuccessful){
         emit(NewsState.loaded(data));
      }else{
        emit(const NewsState.Error());
      }
    }catch(e){
      print(e);
    }

  }
}

