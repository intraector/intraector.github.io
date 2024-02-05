import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_styles.dart';
import '../utils/context_ext.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.s.profSkills.toUpperCase(),
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          context.s.skillsList,
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
          ),
        ),
      ],
    );
  }
}
