import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planets_explorer/Core/Enums/themes_enum.dart';
import 'package:planets_explorer/Core/Variables/variables.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(AppThemeInitial());

  static AppThemeCubit get(context) => BlocProvider.of(context);

  void changeTheme(){
    emit(AppThemeChanged());
    if(Variables.currentTheme == ThemesEnum.dark){
      Variables.currentTheme = ThemesEnum.light;
    }else{
      Variables.currentTheme = ThemesEnum.dark;
    }
  }
}
