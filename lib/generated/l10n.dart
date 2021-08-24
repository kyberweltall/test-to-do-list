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

  /// `To-Do List`
  String get title {
    return Intl.message(
      'To-Do List',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `To-Do's`
  String get taskList_appBar_title {
    return Intl.message(
      'To-Do\'s',
      name: 'taskList_appBar_title',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get taskList_element_done {
    return Intl.message(
      'Done',
      name: 'taskList_element_done',
      desc: '',
      args: [],
    );
  }

  /// `Not done`
  String get taskList_element_notDone {
    return Intl.message(
      'Not done',
      name: 'taskList_element_notDone',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get taskList_element_remove {
    return Intl.message(
      'Remove',
      name: 'taskList_element_remove',
      desc: '',
      args: [],
    );
  }

  /// `New Task`
  String get addTask_appBar_title {
    return Intl.message(
      'New Task',
      name: 'addTask_appBar_title',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get addTask_button_add {
    return Intl.message(
      'Add',
      name: 'addTask_button_add',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get addTask_input_title {
    return Intl.message(
      'Title',
      name: 'addTask_input_title',
      desc: '',
      args: [],
    );
  }

  /// `Required!`
  String get addTask_input_title_notValidate {
    return Intl.message(
      'Required!',
      name: 'addTask_input_title_notValidate',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get addTask_input_desription {
    return Intl.message(
      'Description',
      name: 'addTask_input_desription',
      desc: '',
      args: [],
    );
  }

  /// `Priority`
  String get addTask_input_priority {
    return Intl.message(
      'Priority',
      name: 'addTask_input_priority',
      desc: '',
      args: [],
    );
  }

  /// `Critical`
  String get addTask_input_priority_critical {
    return Intl.message(
      'Critical',
      name: 'addTask_input_priority_critical',
      desc: '',
      args: [],
    );
  }

  /// `Urgent`
  String get addTask_input_priority_urgent {
    return Intl.message(
      'Urgent',
      name: 'addTask_input_priority_urgent',
      desc: '',
      args: [],
    );
  }

  /// `Normal`
  String get addTask_input_priority_normal {
    return Intl.message(
      'Normal',
      name: 'addTask_input_priority_normal',
      desc: '',
      args: [],
    );
  }

  /// `Оptional`
  String get addTask_input_priority_optional {
    return Intl.message(
      'Оptional',
      name: 'addTask_input_priority_optional',
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
      Locale.fromSubtags(languageCode: 'ru'),
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
