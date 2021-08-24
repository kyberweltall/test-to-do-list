import 'package:flutter/material.dart';

class CustomPlaceholder extends StatelessWidget {
  const CustomPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kTabLabelPadding.left),
      child: Row(
        children: [
          Container(
            width: kToolbarHeight,
            height: kMinInteractiveDimension,
            color: Colors.grey,
          ),
          SizedBox(
            width: kTabLabelPadding.left,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                       margin: kMaterialListPadding,
                        height: kTabLabelPadding.left,
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
                Container(
                  height: kTabLabelPadding.left,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
