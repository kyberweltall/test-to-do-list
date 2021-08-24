part of '../add_task_page.dart';

class _PriorityPiker extends StatelessWidget {
  final TaskPriority value;
  final void Function(TaskPriority priority) onChange;

  const _PriorityPiker({Key? key, required this.value, required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var l10n = S.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kTabLabelPadding.left),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.addTask_input_priority,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Row(
            children: [
              _PriorityPickerElement(
                color: Utils.priorityToColor(context, TaskPriority.critical),
                title: Text(l10n.addTask_input_priority_critical),
                onTap: () => onChange(TaskPriority.critical),
                selected: value == TaskPriority.critical,
              ),
              _PriorityPickerElement(
                color: Utils.priorityToColor(context, TaskPriority.urgent),
                title: Text(l10n.addTask_input_priority_urgent),
                onTap: () => onChange(TaskPriority.urgent),
                selected: value == TaskPriority.urgent,
              ),
            ],
          ),
          Row(
            children: [
              _PriorityPickerElement(
                color: Utils.priorityToColor(context, TaskPriority.normal),
                title: Text(l10n.addTask_input_priority_normal),
                onTap: () => onChange(TaskPriority.normal),
                selected: value == TaskPriority.normal,
              ),
              _PriorityPickerElement(
                color: Utils.priorityToColor(context, TaskPriority.optional),
                title: Text(l10n.addTask_input_priority_optional),
                onTap: () => onChange(TaskPriority.optional),
                selected: value == TaskPriority.optional,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
