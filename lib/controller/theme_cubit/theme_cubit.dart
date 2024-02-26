import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';


class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super( ThemeState.initial(ThemeData.light()));
  int flag=0;
  void changeTheme()async{
    SharedPreferences prefers=await SharedPreferences.getInstance();
    // flag=prefers.getInt("theme")!;
    print(flag);
    if(flag==0){
      flag=1;
      prefers.setInt("theme", 0);
      emit(ThemeState.finaltheme(ThemeData.dark()));
    }else if(flag==1){
      flag=0;
      prefers.setInt("theme", 1);
      emit(ThemeState.initial(ThemeData.light()));
    }

  }

}
