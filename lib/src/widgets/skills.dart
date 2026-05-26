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
          context.l.profSkills.toUpperCase(),
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Developing complex applications with multiple features and integrations. Strong problem-solving skills and ability to quickly learn new technologies.',
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Flutter, Dart, Android, iOS, Flutter Web, Bloc, Provider, MVVM, MVP, Dio, Http, Clean Architecture, SOLID, REST, Google Maps, Git, Firebase, Storage, Cloud Messaging, Cloud Functions, authorization, animations, multiple app flavors/targets, dependency injection, unit testing, mobile analytics, publishing',
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
          ),
        ),
      ],
    );
  }
}
