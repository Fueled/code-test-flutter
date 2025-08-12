import 'package:flutter/widgets.dart';
import 'package:code_test_flutter/core/navigation/router_state.dart';

typedef RouteBuilder = Widget Function(
  BuildContext context,
  RouterState params,
);

///
/// [RouteProvider] allows multiple modules to contribute to the navigation graph.
/// Multiple route providers would then be collated to get the final routes.
/// This facilitates the separation of concerns and allows for better code organization.
///
abstract class RouteProvider {
  Iterable<(String, RouteBuilder)> routes();
}
