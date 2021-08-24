import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/di/injection.dart';
import 'package:to_do_list/domain/enum/task_priority.dart';
import 'package:to_do_list/generated/l10n.dart';
import 'package:to_do_list/ui/page/add_task/cubit/add_task_cubit.dart';
import 'package:to_do_list/ui/utils/utils.dart';

part 'components/priority_piker.dart';
part 'components/priority_picker_element.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final AddTaskCubit _cubit = getIt();

  @override
  void initState() {
    super.initState();
    _cubit.setContext(context);
  }

  @override
  Widget build(BuildContext context) {
    var l10n = S.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.addTask_appBar_title),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(kMaterialListPadding.top),
            child: Column(
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  validator: _cubit.titleValidator,
                  decoration: InputDecoration(
                    hintText: l10n.addTask_input_title,
                    labelText: l10n.addTask_input_title,
                  ),
                ),
                TextFormField(
                  maxLines: 3,
                  autovalidateMode: AutovalidateMode.always,
                  validator: _cubit.descriptionValidator,
                  decoration: InputDecoration(
                    hintText: l10n.addTask_input_desription,
                    labelText: l10n.addTask_input_desription,
                  ),
                ),
                BlocBuilder<AddTaskCubit, AddTaskState>(
                  bloc: _cubit,
                  builder: (context, state) {
                    return Column(
                      children: [
                        _PriorityPiker(
                          value: state.priority,
                          onChange: _cubit.setPriority,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                child: Text(l10n.addTask_button_add),
                                onPressed:
                                    state is AddTaskValid ? _cubit.add : null,
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }
}
