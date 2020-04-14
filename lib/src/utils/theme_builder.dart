import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Press Start 2P',
  dividerColor: AppColors.neutral,
  canvasColor: AppColors.menu,
  cardColor: AppColors.baseLight,
  scaffoldBackgroundColor: AppColors.background,
  toggleableActiveColor: AppColors.baseDark,
  appBarTheme: AppBarTheme(
    textTheme: TextTheme(
      headline6: TextStyle(
        color: AppColors.main,
        fontFamily: 'Press Start 2P',
      ),
      headline3: TextStyle(
        color: Colors.green,
      ),
    ),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'Press Start 2P',
  dividerColor: AppColors.neutral,
  canvasColor: AppColors.menu,
  cardColor: AppColors.baseDark,
  scaffoldBackgroundColor: AppColors.darkBackground,
  toggleableActiveColor: AppColors.baseLight,
  appBarTheme: AppBarTheme(
    textTheme: TextTheme(
      headline6: TextStyle(
        color: AppColors.main,
        fontFamily: 'Press Start 2P',
      ),
    ),
  ),
);
