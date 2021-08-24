// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addTask_appBar_title":
            MessageLookupByLibrary.simpleMessage("Новое дело"),
        "addTask_button_add": MessageLookupByLibrary.simpleMessage("Добавить"),
        "addTask_input_desription":
            MessageLookupByLibrary.simpleMessage("Описание"),
        "addTask_input_priority":
            MessageLookupByLibrary.simpleMessage("Приоритет"),
        "addTask_input_priority_critical":
            MessageLookupByLibrary.simpleMessage("Критично"),
        "addTask_input_priority_normal":
            MessageLookupByLibrary.simpleMessage("Нормально"),
        "addTask_input_priority_optional":
            MessageLookupByLibrary.simpleMessage("По желанию"),
        "addTask_input_priority_urgent":
            MessageLookupByLibrary.simpleMessage("Срочно"),
        "addTask_input_title":
            MessageLookupByLibrary.simpleMessage("Заголовок"),
        "addTask_input_title_notValidate":
            MessageLookupByLibrary.simpleMessage("Обязательно!"),
        "taskList_appBar_title": MessageLookupByLibrary.simpleMessage("Дела"),
        "taskList_element_done":
            MessageLookupByLibrary.simpleMessage("Выполнено"),
        "taskList_element_notDone":
            MessageLookupByLibrary.simpleMessage("Не выполнено"),
        "taskList_element_remove":
            MessageLookupByLibrary.simpleMessage("Удалить"),
        "title": MessageLookupByLibrary.simpleMessage("To-Do Лист")
      };
}
