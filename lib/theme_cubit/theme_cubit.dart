import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super( ThemeState.initial(themeData: ThemeData.light()));
  void changeTheme(){
    emit(ThemeState.finaltheme(themeData: ThemeData.dark()));
  }
  
}
