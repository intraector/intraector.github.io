import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/app_colors.dart';
import '../theme/app_styles.dart';
import '../utils/context_ext.dart';
import 'copy_button.dart';

class AppItem {
  AppItem({
    required this.name,
    this.androidUrl,
    this.iosUrl,
  });

  final String? androidUrl;
  final String? iosUrl;
  final String name;

  bool get isNotEmpty => iosUrl != null || androidUrl != null;
}

class AboutMe extends StatelessWidget {
  AboutMe({super.key, this.constraints});

  final BoxConstraints? constraints;
  final portfolio = [
    AppItem(
      name: 'Enbek Fsm',
      androidUrl: 'https://play.google.com/store/apps/details?id=kz.enbek.fsm',
      iosUrl: 'https://apps.apple.com/kz/app/fsmsocial-2-0/id6755683239',
    ),
    AppItem(
      name: 'QazaqGaz: myQG',
      androidUrl: 'https://play.google.com/store/apps/details?id=kz.qazaqgaz.mygq',
      iosUrl: 'https://apps.apple.com/app/myqg/id6566190317',
    ),
    AppItem(
      name: 'Protarget',
      androidUrl: 'https://play.google.com/store/apps/details?id=kz.protarget.protarget',
      iosUrl: 'https://apps.apple.com/app/pro-target/id6736693468',
    ),
    AppItem(
      name: 'Tayyab Banking',
      androidUrl: 'https://play.google.com/store/apps/details?id=co.tayyab.app&gl=kz',
      iosUrl: 'https://apps.apple.com/tr/app/tayyab/id6446256809',
    ),
    AppItem(
      name: 'Enbek.kz',
      androidUrl: 'https://play.google.com/store/apps/details?id=kz.enbek.emobi&gl=kz',
      iosUrl:
          'https://apps.apple.com/kz/app/enbek-hr-%D1%82%D1%80%D1%83%D0%B4%D0%BE%D0%B2%D1%8B%D0%B5-%D0%B4%D0%BE%D0%B3%D0%BE%D0%B2%D0%BE%D1%80%D1%8B/id6448756659',
    ),
    AppItem(
      name: 'Enbek HR',
      androidUrl: 'https://play.google.com/store/apps/details?id=kz.enbek.hr&gl=kz',
      iosUrl:
          'https://apps.apple.com/kz/app/enbek-hr-%D1%82%D1%80%D1%83%D0%B4%D0%BE%D0%B2%D1%8B%D0%B5-%D0%B4%D0%BE%D0%B3%D0%BE%D0%B2%D0%BE%D1%80%D1%8B/id6448756659',
    ),
    AppItem(
      name: 'CenterHome',
      androidUrl: 'https://play.google.com/store/apps/details?id=kz.bcc.chome&gl=kz',
      iosUrl: 'https://apps.apple.com/tr/app/center-home/id1593535565',
    ),
    AppItem(
      name: 'Upravdom',
      androidUrl: 'https://play.google.com/store/apps/details?id=kz.upravdom.osi&gl=kz',
    ),
    AppItem(
      name: 'PoiskVagona',
      iosUrl: 'https://apps.apple.com/tr/app/poiskvagona-kz/id1596454186',
    ),
    AppItem(
      name: 'ZanBar',
      iosUrl: 'https://apps.apple.com/tr/app/zanbar/id1516103496',
    ),
  ];

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
            context.l.contacts.toUpperCase(),
            style: AppStyles.s18.copyWith(
              color: AppColors.shade1,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 8),
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
          const SizedBox(height: 40),
          Text(
            context.l.currentlyBased.toUpperCase(),
            style: AppStyles.s18.copyWith(
              color: AppColors.shade1,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            context.l.location2,
            style: AppStyles.s18.copyWith(
              color: AppColors.shade1,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            context.l.location1,
            style: AppStyles.s18.copyWith(
              decoration: TextDecoration.lineThrough,
              decorationColor: AppColors.shade1,
              color: AppColors.shade1,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            context.l.location0,
            style: AppStyles.s18.copyWith(
              decoration: TextDecoration.lineThrough,
              decorationColor: AppColors.shade1,
              color: AppColors.shade1,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            context.l.qualities.toUpperCase(),
            style: AppStyles.s18.copyWith(
              color: AppColors.shade1,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 8),

          Text(
            'Analytic mind. Initiative-taking, hard-working, team-oriented, stress-resistant, attentive, neat.',
            style: AppStyles.s18.copyWith(
              color: AppColors.shade1,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            context.l.portfolio.toUpperCase(),
            style: AppStyles.s18.copyWith(
              color: AppColors.shade1,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 8),
          for (final item in portfolio)
            if (item.isNotEmpty)
              Wrap(
                children: [
                  Text(
                    item.name,
                    style: AppStyles.s18.copyWith(
                      color: AppColors.shade1,
                    ),
                  ),
                  if (item.iosUrl != null)
                    TextButton(
                      child: Text('iOS'),
                      onPressed: () {
                        launchUrl(
                          Uri.parse(item.iosUrl!),
                        );
                      },
                    ),
                  if (item.androidUrl != null)
                    TextButton(
                      child: Text('Android'),
                      onPressed: () {
                        launchUrl(
                          Uri.parse(item.androidUrl!),
                        );
                      },
                    ),
                ],
              ),
        ],
      ),
    );
  }
}
