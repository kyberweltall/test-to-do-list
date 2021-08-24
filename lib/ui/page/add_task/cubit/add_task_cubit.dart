import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:to_do_list/domain/enum/task_priority.dart';
import 'package:to_do_list/domain/model/task.dart';
import 'package:to_do_list/domain/service/task_service.dart';
import 'package:to_do_list/generated/l10n.dart';

part 'add_task_state.dart';
part 'add_task_cubit.g.dart';

@injectable
class AddTaskCubit extends Cubit<AddTaskState> {
  final TaskService _taskService;
  late BuildContext _context;

  String _title;
  String _description;

  bool get _isTitleNotValid => _title.isEmpty;

  AddTaskCubit(this._taskService)
      : _title = '',
        _description = '',
        super(const AddTaskNotValid(priority: TaskPriority.normal));

  void setContext(BuildContext context) {
    _context = context;
  }

  String? titleValidator(String? value) {
    _title = value ?? '';
    if (_isTitleNotValid) {
      if (state is! AddTaskNotValid) {
        emit(state.toNotValid());
      }
      return S.of(_context).addTask_input_title_notValidate;
    } else {
      if (state is! AddTaskValid) {
        emit(state.toValid());
      }
    }
  }

  String? descriptionValidator(String? value) {
    _description = value ?? '';
  }

  Future<void> add() async {
    if (state is AddTaskValid) {
      var task = await _taskService.add(
        Task(
          id: '',
          isDone: false,
          title: _title,
          description: _description,
          priority: state.priority,
        ),
      );
      if (task.id.isNotEmpty) {
        Navigator.pop(_context, true);
      }
    }
  }

  Future<void> setPriority(TaskPriority value) async {
    if (state.priority != value) {
      if (state is AddTaskValid) {
        emit((state as AddTaskValid).copyWith(priority: value));
      } else {
        emit((state as AddTaskNotValid).copyWith(priority: value));
      }
    }
  }

  @override
  Future<void> close() async {
    await super.close();
  }
}
