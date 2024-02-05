import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../theme/app_colors.dart';
import '../theme/app_styles.dart';
import '../utils/context_ext.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  List<Exp> experience(S s) {
    return [
      Exp(
        company: s.company3Name,
        period: s.company3Period,
        tasks: s.company3Tasks.split('|'),
      ),
      Exp(
        company: s.company2Name,
        period: s.company2Period,
        tasks: s.company2Tasks.split('|'),
      ),
      Exp(
        company: s.company1Name,
        period: s.company1Period,
        tasks: s.company1Tasks.split('|'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.s.experience.toUpperCase(),
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
          ),
        ),
        for (final item in experience(context.s)) ExpTile(exp: item),
      ],
    );
  }
}

class Exp {
  Exp({
    required this.company,
    required this.period,
    required this.tasks,
  });

  final String company;
  final String period;
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          exp.company,
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          exp.period,
          style: AppStyles.s18.copyWith(
            color: AppColors.text,
          ),
        ),
        const SizedBox(height: 8),
        for (final item in exp.tasks)
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
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
