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
    try{
      emit(const NewsState.loading());
      print("loaded");
      final response=await newsApiService.getNews();
      print(response.statusCode);
      print(response);
      print(response.body);
      if(response.isSuccessful){
        emit(NewsState.loaded(response.body!));
      }else{
        emit(const NewsState.Error());
      }
    }catch(e){
      print(e);
    }

  }
}

