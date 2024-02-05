import 'package:flutter/widgets.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static TextStyle get s36w900 => const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w900,
        color: AppColors.text,
      );

  static TextStyle get s26w900 => const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w900,
        color: AppColors.text,
      );

  static TextStyle get s18 => const TextStyle(
        fontSize: 18,
        color: AppColors.text,
      );
}
