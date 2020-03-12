library flutter_childed;

import 'package:flutter/widgets.dart';

class Childed {
  final List<Widget Function(Widget)> children = <Widget Function(Widget)>[];

  Childed child(Widget child(Widget widget)) {
    children.add(child);
    return this;
  }

  Widget build(Widget child) {
    final widget = children.reversed.fold(child, (last, it) => it(last));
    children.clear();
    return widget;
  }
}