part of '../add_task_page.dart';

class _PriorityPickerElement extends StatelessWidget {
  final bool selected;
  final Color color;
  final Widget title;
  final VoidCallback onTap;

  const _PriorityPickerElement(
      {Key? key,
      required this.color,
      required this.title,
      required this.onTap,
      this.selected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: GestureDetector(
        onTapDown: (_) => onTap(),
        child: Container(
          height: kToolbarHeight,
          margin: kTabLabelPadding + kMaterialListPadding,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.all(color: color, width: kMaterialListPadding.top),
            boxShadow: selected
                ? [
                    BoxShadow(
                        color: color,
                        blurRadius: kTabLabelPadding.left,
                        spreadRadius: kMaterialListPadding.top)
                  ]
                : null,
          ),
          child: Center(child: title),
        ),
      ),
    );
  }
}
