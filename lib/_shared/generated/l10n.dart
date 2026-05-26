// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class L {
  L();

  static L? _current;

  static L get current {
    assert(
      _current != null,
      'No instance of L was loaded. Try to initialize the L delegate before accessing L.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<L> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = L();
      L._current = instance;

      return instance;
    });
  }

  static L of(BuildContext context) {
    final instance = L.maybeOf(context);
    assert(
      instance != null,
      'No instance of L present in the widget tree. Did you add L.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static L? maybeOf(BuildContext context) {
    return Localizations.of<L>(context, L);
  }

  /// `Artur Saidov`
  String get name {
    return Intl.message('Artur Saidov', name: 'name', desc: '', args: []);
  }

  /// `Senior Flutter Developer`
  String get jobTitle {
    return Intl.message(
      'Senior Flutter Developer',
      name: 'jobTitle',
      desc: '',
      args: [],
    );
  }

  /// `Antalya, Turkey`
  String get location {
    return Intl.message(
      'Antalya, Turkey',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `intraector@gmail.com`
  String get email {
    return Intl.message(
      'intraector@gmail.com',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Contacts`
  String get contacts {
    return Intl.message('Contacts', name: 'contacts', desc: '', args: []);
  }

  /// `Experience`
  String get experience {
    return Intl.message('Experience', name: 'experience', desc: '', args: []);
  }

  /// `About`
  String get about {
    return Intl.message('About', name: 'about', desc: '', args: []);
  }

  /// `Resume`
  String get resume {
    return Intl.message('Resume', name: 'resume', desc: '', args: []);
  }

  /// `Qualities`
  String get qualities {
    return Intl.message('Qualities', name: 'qualities', desc: '', args: []);
  }

  /// `Copied`
  String get copied {
    return Intl.message('Copied', name: 'copied', desc: '', args: []);
  }

  /// `Currently based in`
  String get currentlyBased {
    return Intl.message(
      'Currently based in',
      name: 'currentlyBased',
      desc: '',
      args: [],
    );
  }

  /// `Tbilisi, Georgia`
  String get location2 {
    return Intl.message(
      'Tbilisi, Georgia',
      name: 'location2',
      desc: '',
      args: [],
    );
  }

  /// `Antalya, Turkey`
  String get location1 {
    return Intl.message(
      'Antalya, Turkey',
      name: 'location1',
      desc: '',
      args: [],
    );
  }

  /// `Moscow, Russia`
  String get location0 {
    return Intl.message(
      'Moscow, Russia',
      name: 'location0',
      desc: '',
      args: [],
    );
  }

  /// `Professional Skills`
  String get profSkills {
    return Intl.message(
      'Professional Skills',
      name: 'profSkills',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get education {
    return Intl.message('Education', name: 'education', desc: '', args: []);
  }

  /// `Dagestan State University, Russia`
  String get universityTitle {
    return Intl.message(
      'Dagestan State University, Russia',
      name: 'universityTitle',
      desc: '',
      args: [],
    );
  }

  /// `Graduated in 2005, Master's Degree in Mathematics`
  String get universityPeriod {
    return Intl.message(
      'Graduated in 2005, Master\'s Degree in Mathematics',
      name: 'universityPeriod',
      desc: '',
      args: [],
    );
  }

  /// `Portfolio`
  String get portfolio {
    return Intl.message('Portfolio', name: 'portfolio', desc: '', args: []);
  }

  /// `General`
  String get general {
    return Intl.message('General', name: 'general', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<L> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<L> load(Locale locale) => L.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
