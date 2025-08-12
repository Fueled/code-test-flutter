import 'package:flutter/material.dart';
import 'package:code_test_flutter/core/navigation/app_router_widget.dart';

extension BuildContextNavigation on BuildContext {
  void pop<T extends Object?>([T? result]) => Navigator.of(this).pop(result);

  void navigate(String routeName, {Object? extra}) =>
      AppRouterWidget.of(this).navigate(this, routeName, extra: extra);
}
