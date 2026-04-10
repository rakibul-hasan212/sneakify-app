import 'package:e_commerce_app/core/app_colors.dart';
import 'package:flutter/material.dart';

import 'pages/splashScreen/SplashScreen.dart';

void main(){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        // Main colors
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,

        // Color Scheme (important)
        colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.accent,
          surface: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: AppColors.dark,
        ),

        // AppBar Theme
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.background,
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.dark),
          titleTextStyle: TextStyle(
            color: AppColors.dark,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        //Text Theme
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: AppColors.dark),
          bodyMedium: TextStyle(color: AppColors.dark),
          titleLarge: TextStyle(
            color: AppColors.dark,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Button Theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),

        // Floating Button
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColors.primary,
        ),

        // Icon Theme
        iconTheme: IconThemeData(
          color: AppColors.dark,
        ),
      ),
      home: SplashScreen(),
    );
  }

}