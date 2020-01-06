import 'package:flutter/material.dart';
import 'package:grab_clone/constant.dart';

class FivePercentPadding extends StatelessWidget {
  const FivePercentPadding(
      {Key key, @required this.parent, @required this.child})
      : super(key: key);
  final BuildContext parent;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: fivePercentWidth(parent),
      ),
      child: child,
    );
  }
}
