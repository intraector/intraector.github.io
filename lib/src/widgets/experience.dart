import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../_shared/generated/l10n.dart';
import '../theme/app_colors.dart';
import '../theme/app_styles.dart';
import '../utils/context_ext.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  List<Exp> experience(L s) {
    return [
      Exp(
        company: 'SimpleCode, Kazakhstan',
        url: 'https://simplecode.kz',
        period: '[2021 - 2026] Flutter Lead Developer',
        tasks: [
          'Apps development for iOS and Android',
          'App architecture design',
          'Estimation of tasks',
          'Communication with clients',
          'Code review',
          'Mentoring junior developers',
          'Interviewing new developers',
          "Development of the company's internal tools",
        ],
      ),
      Exp(
        company: 'Yakutia.Click, Russia',
        period: '[2020 - 2021] Flutter Developer',
        tasks: [
          'App development for iOS and Android',
          'App architecture design',
          'Estimation of tasks',
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          context.l.experience.toUpperCase(),
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
            fontWeight: .w900,
            letterSpacing: 2,
          ),
        ),
        for (final item in experience(context.l)) ExpTile(exp: item),
      ],
    );
  }
}

class Exp {
  Exp({
    required this.company,
    required this.period,
    required this.tasks,
    this.url,
  });

  final String company;
  final String period;
  final String? url;
  final List<String> tasks;
}

class ExpTile extends StatelessWidget {
  const ExpTile({
    required this.exp,
    super.key,
  });

  final Exp exp;

  @override
  Widget build(BuildContext context) {
    final title = Text(
      exp.company,
      style: AppStyles.s18.copyWith(
        color: AppColors.text,
        fontWeight: FontWeight.w900,
      ),
    );
    return Column(
      crossAxisAlignment: .start,
      children: [
        const SizedBox(height: 20),
        if (exp.url != null)
          TextButton(
            onPressed: () {
              launchUrl(Uri.parse(exp.url!));
            },
            child: title,
          )
        else
          Padding(
            padding: const .only(left: 12),
            child: title,
          ),
        Padding(
          padding: const .only(left: 12),
          child: Text(
            exp.period,
            style: AppStyles.s18.copyWith(
              color: AppColors.text,
            ),
          ),
        ),
        const SizedBox(height: 8),
        for (final item in exp.tasks)
          Padding(
            padding: const .fromLTRB(0, 4, 0, 0),
            child: Text(
              '  • $item',
              style: AppStyles.s18.copyWith(
                color: AppColors.text,
              ),
            ),
          ),
      ],
    );
  }
}
