import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_styles.dart';
import '../utils/context_ext.dart';

class MainBadge extends StatelessWidget {
  const MainBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.primary,
        ),
        margin: const EdgeInsets.only(bottom: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 8,
        ),
        child: Text(
          context.s.resume.toUpperCase(),
          style: AppStyles.s26w900.copyWith(
            color: AppColors.shade2,
          ),
        ),
      ),
    );
  }
}
