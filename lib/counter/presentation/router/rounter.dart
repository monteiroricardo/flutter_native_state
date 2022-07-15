import 'package:flutter/material.dart';
import 'package:native_states/counter/presentation/pages/home_page.dart';
import 'package:native_states/counter/presentation/pages/set_state_counter_page.dart';
import 'package:native_states/counter/presentation/pages/value_notifier_counter_page.dart';
import 'package:native_states/counter/presentation/router/routes.dart';

class Rounter {
  static Route routeManager(RouteSettings settings) {
    late Widget page;
    switch (settings.name) {
      case AppRoutes.home:
        page = const HomePage();
        break;
      case AppRoutes.setStatePage:
        page = const SetStateCounterPage();
        break;
      case AppRoutes.valueNotifierPage:
        page = const ValueNotifierCounterPage();
        break;
      default:
        page = const HomePage();
    }

    return PageRouteBuilder(
      pageBuilder: ((
        context,
        animation,
        secondaryAnimation,
      ) =>
          page),
    );
  }
}
