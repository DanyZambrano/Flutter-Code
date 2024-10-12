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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Invoices`
  String get INTL_FACTURAS {
    return Intl.message(
      'Invoices',
      name: 'INTL_FACTURAS',
      desc: '',
      args: [],
    );
  }

  /// `Reports`
  String get INTL_REPORTES {
    return Intl.message(
      'Reports',
      name: 'INTL_REPORTES',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get INTL_PERFIL {
    return Intl.message(
      'Profile',
      name: 'INTL_PERFIL',
      desc: '',
      args: [],
    );
  }

  /// `You can config your profile here!`
  String get INTL_PERFIL_DESCRIPTION {
    return Intl.message(
      'You can config your profile here!',
      name: 'INTL_PERFIL_DESCRIPTION',
      desc: '',
      args: [],
    );
  }

  /// `Configuration`
  String get INTL_CONFIGURACION {
    return Intl.message(
      'Configuration',
      name: 'INTL_CONFIGURACION',
      desc: '',
      args: [],
    );
  }

  /// `Select a Date`
  String get INTL_DTBUTTON {
    return Intl.message(
      'Select a Date',
      name: 'INTL_DTBUTTON',
      desc: '',
      args: [],
    );
  }

  /// `Select your Birthday`
  String get INTL_DTHELP {
    return Intl.message(
      'Select your Birthday',
      name: 'INTL_DTHELP',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get INTL_DTCANCEL {
    return Intl.message(
      'Close',
      name: 'INTL_DTCANCEL',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get INTL_DTCONFIRM {
    return Intl.message(
      'Ok',
      name: 'INTL_DTCONFIRM',
      desc: '',
      args: [],
    );
  }

  /// `Month/Day/Year`
  String get INTL_DTHINT {
    return Intl.message(
      'Month/Day/Year',
      name: 'INTL_DTHINT',
      desc: '',
      args: [],
    );
  }

  /// `Birthday`
  String get INTL_DTLABEL {
    return Intl.message(
      'Birthday',
      name: 'INTL_DTLABEL',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid date!`
  String get INTL_DTERROR {
    return Intl.message(
      'Please enter a valid date!',
      name: 'INTL_DTERROR',
      desc: '',
      args: [],
    );
  }

  /// `The format is not correct!`
  String get INTL_DTEFORMAT {
    return Intl.message(
      'The format is not correct!',
      name: 'INTL_DTEFORMAT',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
