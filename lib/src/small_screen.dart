import 'package:flutter/material.dart';

import 'theme/app_styles.dart';
import 'utils/context_ext.dart';
import 'widgets/about_me.dart';
import 'widgets/education.dart';
import 'widgets/experience.dart';
import 'widgets/general.dart';
import 'widgets/main_badge.dart';
import 'widgets/skills.dart';
import 'widgets/zero_to_hero.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        const MainBadge(),
        Center(
          child: Image.asset('lib/assets/face.png'),
        ),
        const SizedBox(height: 16),
        Center(
          child: FittedBox(
            child: SelectableText(
              context.l.name.toUpperCase(),
              style: AppStyles.s36w900.copyWith(
                letterSpacing: 9,
              ),
            ),
          ),
        ),
        Center(
          child: FittedBox(
            child: Text(
              context.l.jobTitle.toUpperCase(),
              style: AppStyles.s26w900,
            ),
          ),
        ),
        const SizedBox(height: 20),
        AboutMe(),
        const Padding(
          padding: .fromLTRB(32, 32, 32, 0),
          child: General(),
        ),
        const Padding(
          padding: .fromLTRB(32, 24, 32, 0),
          child: ZeroToHero(),
        ),
        const Padding(
          padding: .fromLTRB(32, 24, 32, 0),
          child: Experience(),
        ),
        const Padding(
          padding: .fromLTRB(32, 24, 32, 0),
          child: Skills(),
        ),
        const Padding(
          padding: .fromLTRB(32, 24, 32, 32),
          child: Education(),
        ),
      ],
    );
  }
}
