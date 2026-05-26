import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_styles.dart';
import '../utils/context_ext.dart';

class General extends StatelessWidget {
  const General({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          context.l.about.toUpperCase(),
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'I develop apps for iOS and Android using Flutter (a Google technology).  With 5+ years of experience, I have built a variety of applications, focusing on simplicity and practical internal design to ensure long-term stability and easy maintenance. My experience covers the full development lifecycle, including UI implementation, backend integration, and final app store deployment.',
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
          ),
        ),
      ],
    );
  }
}
