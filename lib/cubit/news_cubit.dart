import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled7/data/news_api_service.dart';

import '../model/news_model.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(const NewsState.initial());
  fetch();

}
   final NewsApiService newsApiService;
  Future<void> fetch()async{
  emit(const NewsState.loading());
  final response=await newsApiService.getnewses() ;
  if(response.isSuccessful){
    emit(NewsState.loaded(response.body));
  }else{
    emit(NewsState.Error());
  }

}
