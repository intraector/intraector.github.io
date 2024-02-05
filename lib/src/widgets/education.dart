import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_styles.dart';
import '../utils/context_ext.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.s.education.toUpperCase(),
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          context.s.universityTitle,
          style: AppStyles.s18.copyWith(
            fontSize: 18,
            color: AppColors.text,
          ),
        ),
        Text(
          context.s.universityPeriod,
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
          ),
        ),
      ],
    );
  }
}
