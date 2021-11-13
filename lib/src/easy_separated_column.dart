import 'package:flutter/material.dart';

class EasySeparatedColumn extends StatelessWidget {
  const EasySeparatedColumn(
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
      this.seperatorForBottom = false})
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
  final bool seperatorForBottom;

  @override
  Widget build(BuildContext context) {
    final childrenWithSeperators = <Widget>[];

    if (separatorForTop) {
      childrenWithSeperators.add((separatorBuilder(context, 0)));
    }

    for (var i = 0; i < children.length; i++) {
      childrenWithSeperators.add(children[i]);

      if (children.length - 1 != i) {
        childrenWithSeperators.add(separatorBuilder(context, i));
      }
    }

    if (seperatorForBottom) {
      childrenWithSeperators.add((separatorBuilder(context, children.length)));
    }

    return Column(
      mainAxisSize: mainAxisSize,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: childrenWithSeperators,
    );
  }
}
