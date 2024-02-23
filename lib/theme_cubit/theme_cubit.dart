import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super( ThemeState.initial(themeData: ThemeData.light()));
  int flag=0;
  void changeTheme(){
    if(flag==0){
      flag=1;
      emit(ThemeState.finaltheme(themeData: ThemeData.dark()));
    }else if(flag==1){
      flag=0;
      emit(ThemeState.initial(themeData: ThemeData.light()));
    }

  }
  
}
