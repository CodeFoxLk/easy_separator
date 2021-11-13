import 'package:flutter/material.dart';

class EasySeparatedRow extends StatelessWidget {
  const EasySeparatedRow(
      {Key? key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.mainAxisSize = MainAxisSize.max,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.textDirection,
      this.verticalDirection = VerticalDirection.down,
      this.textBaseline,
      required this.children,
      required this.separatorBuilder,
      this.separatorForTop = false,
      this.separatorForBottom = false})
      : super(key: key);

  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final TextBaseline? textBaseline;
  final List<Widget> children;
  final IndexedWidgetBuilder separatorBuilder;
  final bool separatorForTop;
  final bool separatorForBottom;

  @override
  Widget build(BuildContext context) {
    final childrenWithSeparators = <Widget>[];

    if (separatorForTop) {
      childrenWithSeparators.add((separatorBuilder(context, 0)));
    }

    for (var i = 0; i < children.length; i++) {
      childrenWithSeparators.add(children[i]);

      if (children.length - 1 != i) {
        childrenWithSeparators.add(separatorBuilder(context, i));
      }
    }

    if (separatorForBottom) {
      childrenWithSeparators.add((separatorBuilder(context, children.length)));
    }

    return Row(
      mainAxisSize: mainAxisSize,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: childrenWithSeparators,
    );
  }
}
