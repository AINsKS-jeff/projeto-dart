import 'package:workout_club/common/constants/app_colors.dart';
import 'package:workout_club/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.purpleOne
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Workout', 
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.red,
              ),
            ),
            Text('Club',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.white,
              ),
            ),  
          ],
        ),
      ),  
    );
  }
}