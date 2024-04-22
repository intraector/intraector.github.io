import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/app_colors.dart';
import '../theme/app_styles.dart';
import '../utils/context_ext.dart';
import 'copy_button.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key, this.constraints});

  final BoxConstraints? constraints;

  Map<String, String> get portfolio => const {
        'Tayyab Banking Android': 'https://play.google.com/store/apps/details?id=co.tayyab.app&gl=kz',
        'Tayyab Banking iOS': 'https://apps.apple.com/tr/app/tayyab/id6446256809',
        'Enbek.kz Android': 'https://play.google.com/store/apps/details?id=kz.enbek.emobi&gl=kz',
        'Enbek.kz iOS':
            'https://apps.apple.com/kz/app/enbek-%D0%BF%D0%BE%D0%B8%D1%81%D0%BA-%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%8B-%D0%B8-%D0%B1%D0%B8%D0%B7%D0%BD%D0%B5%D1%81/id6444959650',
        'Enbek HR Android': 'https://play.google.com/store/apps/details?id=kz.enbek.hr&gl=kz',
        'Enbek HR iOS':
            'https://apps.apple.com/kz/app/enbek-hr-%D1%82%D1%80%D1%83%D0%B4%D0%BE%D0%B2%D1%8B%D0%B5-%D0%B4%D0%BE%D0%B3%D0%BE%D0%B2%D0%BE%D1%80%D1%8B/id6448756659',
        'CenterHome Android': 'https://play.google.com/store/apps/details?id=kz.bcc.chome&gl=kz',
        'CenterHome iOS': 'https://apps.apple.com/tr/app/center-home/id1593535565',
        'Upravdom Android': 'https://play.google.com/store/apps/details?id=kz.upravdom.osi&gl=kz',
        'PoiskVagona iOS': 'https://apps.apple.com/tr/app/poiskvagona-kz/id1596454186',
        'Zab.Bar iOS': 'https://apps.apple.com/tr/app/zanbar/id1516103496',
        'ZapApp Android': 'https://play.google.com/store/apps/details?id=com.tenebre1592.ZapApp',
      };

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: constraints,
      padding: const EdgeInsets.all(32),
      color: AppColors.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.s.contacts.toUpperCase(),
            style: AppStyles.s18.copyWith(
              color: AppColors.shade1,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              text: 'Telegram:',
              style: AppStyles.s18.copyWith(
                color: AppColors.shade1,
              ),
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: TextButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse('https://t.me/intraector'),
                      );
                    },
                    child: Text(
                      '@intraector',
                      style: AppStyles.s18.copyWith(
                        color: AppColors.shade1,
                      ),
                    ),
                  ),
                ),
                const WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: CopyButton(
                    text: 'intraector',
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Email:',
              style: AppStyles.s18.copyWith(
                color: AppColors.shade1,
              ),
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: TextButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse('mailto:intraector@gmail.com'),
                      );
                    },
                    child: Text(
                      'intraector@gmail.com',
                      style: AppStyles.s18.copyWith(
                        color: AppColors.shade1,
                      ),
                    ),
                  ),
                ),
                const WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: CopyButton(
                    text: 'intraector@gmail.com',
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'LinkedIn:',
              style: AppStyles.s18.copyWith(
                color: AppColors.shade1,
              ),
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: TextButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse('https://www.linkedin.com/in/intraector/'),
                      );
                    },
                    child: Text(
                      'intraector',
                      style: AppStyles.s18.copyWith(
                        color: AppColors.shade1,
                      ),
                    ),
                  ),
                ),
                const WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: CopyButton(
                    text: 'intraector',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Text(
            context.s.currentlyBased.toUpperCase(),
            style: AppStyles.s18.copyWith(
              color: AppColors.shade1,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            context.s.location2,
            style: AppStyles.s18.copyWith(
              color: AppColors.shade1,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            context.s.location1,
            style: AppStyles.s18.copyWith(
              decoration: TextDecoration.lineThrough,
              color: AppColors.shade1,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            context.s.location0,
            style: AppStyles.s18.copyWith(
              decoration: TextDecoration.lineThrough,
              decorationColor: AppColors.shade1,
              color: AppColors.shade1,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            context.s.aboutMe.toUpperCase(),
            style: AppStyles.s18.copyWith(
              color: AppColors.shade1,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            context.s.aboutMeLine1,
            style: AppStyles.s18.copyWith(
              color: AppColors.shade1,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            context.s.aboutMeLine2,
            style: AppStyles.s18.copyWith(
              color: AppColors.shade1,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            context.s.portfolio.toUpperCase(),
            style: AppStyles.s18.copyWith(
              color: AppColors.shade1,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 8),
          for (final item in portfolio.entries)
            TextButton(
              child: Text(item.key),
              onPressed: () {
                launchUrl(
                  Uri.parse(item.value),
                );
              },
            ),
        ],
      ),
    );
  }
}
