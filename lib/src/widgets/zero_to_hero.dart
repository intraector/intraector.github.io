import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_styles.dart';

class ZeroToHero extends StatelessWidget {
  const ZeroToHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          'From zero to hero'.toUpperCase(),
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
            fontWeight: .w900,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          '''
AI tools are changing the development industry rapidly. However, these tools have major risks: they often make code over-engineered, break app architecture, and ignore good security practices.
To solve these problems, I created a rapid mobile development system based on ready-made templates and best practices.
The combination of this solid framework with advanced AI tooling — including custom agents and specialized skills — allows me to take an app from zero to hero very quickly, while keeping the code stable and high-quality.''',
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
          ),
        ),
      ],
    );
  }
}
