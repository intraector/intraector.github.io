import 'package:flutter/material.dart';

import 'theme/app_styles.dart';
import 'utils/context_ext.dart';
import 'widgets/about_me.dart';
import 'widgets/experience.dart';
import 'widgets/main_badge.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainBadge(),
        Center(
          child: Image.asset('lib/assets/face.jpg'),
        ),
        const SizedBox(height: 16),
        Center(
          child: FittedBox(
            child: SelectableText(
              context.s.name.toUpperCase(),
              style: AppStyles.s36w900.copyWith(
                letterSpacing: 9,
              ),
            ),
          ),
        ),
        Center(
          child: FittedBox(
            child: Text(
              context.s.jobTitle.toUpperCase(),
              style: AppStyles.s26w900,
            ),
          ),
        ),
        const SizedBox(height: 16),
        const AboutMe(),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.all(32),
          child: Experience(),
        ),
      ],
    );
  }
}
