import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled7/data/news_api_service.dart';

import '../model/news_model.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

class NewsCubit extends Cubit<NewsState> {
  final NewsApiService newsApiService;
  NewsCubit(this.newsApiService) : super(const NewsState.initial());

  Future<void> fetch()async{
    emit(const NewsState.loading());
    final response=await newsApiService.getnewses();
    if(response.isSuccessful){
      emit(NewsState.loaded(response.body));
    }else{
      emit(const NewsState.Error("something wrong"));
    }

  }
}

