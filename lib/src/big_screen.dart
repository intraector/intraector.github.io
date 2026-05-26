import 'package:flutter/material.dart';

import 'widgets/about_me.dart';
import 'widgets/education.dart';
import 'widgets/experience.dart';
import 'widgets/general.dart';
import 'widgets/main_badge.dart';
import 'theme/app_colors.dart';
import 'utils/context_ext.dart';
import 'theme/app_styles.dart';
import 'widgets/skills.dart';
import 'widgets/zero_to_hero.dart';

class BigScreen extends StatelessWidget {
  const BigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .only(right: 24),
      child: Row(
        crossAxisAlignment: .start,
        children: [
          Column(
            children: [
              Image.asset(
                'lib/assets/face.png',
                scale: 0.8,
              ),
              AboutMe(
                constraints: BoxConstraints(maxWidth: 375),
              ),
            ],
          ),
          const SizedBox(width: 40),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                const MainBadge(),
                Text(
                  context.l.name.toUpperCase(),
                  style: AppStyles.s36w900.copyWith(letterSpacing: 9),
                ),
                Text(
                  context.l.jobTitle.toUpperCase(),
                  style: AppStyles.s26w900,
                ),
                const Divider(
                  color: AppColors.shade1,
                  thickness: 4,
                ),
                const SizedBox(height: 32),
                const General(),
                const SizedBox(height: 32),
                const ZeroToHero(),
                const SizedBox(height: 32),
                const Experience(),
                const SizedBox(height: 32),
                const Skills(),
                const SizedBox(height: 32),
                const Education(),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
