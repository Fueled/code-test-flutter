import 'package:injectable/injectable.dart';
import 'package:code_test_flutter/core/navigation/route_provider.dart';
import 'package:code_test_flutter/ui/common/main_route_provider.dart';

@module
abstract class AppModule {
  @lazySingleton
  List<RouteProvider> routeProviders() {
    return [MainRouteProvider()];
  }
}
