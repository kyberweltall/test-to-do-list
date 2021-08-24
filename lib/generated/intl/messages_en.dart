// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addTask_appBar_title":
            MessageLookupByLibrary.simpleMessage("New Task"),
        "addTask_button_add": MessageLookupByLibrary.simpleMessage("Add"),
        "addTask_input_desription":
            MessageLookupByLibrary.simpleMessage("Description"),
        "addTask_input_priority":
            MessageLookupByLibrary.simpleMessage("Priority"),
        "addTask_input_priority_critical":
            MessageLookupByLibrary.simpleMessage("Critical"),
        "addTask_input_priority_normal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "addTask_input_priority_optional":
            MessageLookupByLibrary.simpleMessage("Оptional"),
        "addTask_input_priority_urgent":
            MessageLookupByLibrary.simpleMessage("Urgent"),
        "addTask_input_title": MessageLookupByLibrary.simpleMessage("Title"),
        "addTask_input_title_notValidate":
            MessageLookupByLibrary.simpleMessage("Required!"),
        "taskList_appBar_title":
            MessageLookupByLibrary.simpleMessage("To-Do\'s"),
        "taskList_element_done": MessageLookupByLibrary.simpleMessage("Done"),
        "taskList_element_notDone":
            MessageLookupByLibrary.simpleMessage("Not done"),
        "taskList_element_remove":
            MessageLookupByLibrary.simpleMessage("Remove"),
        "title": MessageLookupByLibrary.simpleMessage("To-Do List")
      };
}
