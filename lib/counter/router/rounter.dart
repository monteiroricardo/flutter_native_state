import 'package:flutter/material.dart';
import 'package:native_states/counter/managers/bloc_pattern/bloc_pattern_counter_page.dart';
import 'package:native_states/counter/router/routes.dart';

import '../managers/change_notifier/change_notifier_counter_page.dart';
import '../managers/set_state/set_state_counter_page.dart';
import '../managers/value_notifier/value_notifier_counter_page.dart';
import '../pages/managers_selection_page.dart';

class Rounter {
  static Route routeManager(RouteSettings settings) {
    late Widget page;
    switch (settings.name) {
      case AppRoutes.home:
        page = const ManagersSelectionPage();
        break;
      case AppRoutes.setStatePage:
        page = const SetStateCounterPage();
        break;
      case AppRoutes.valueNotifierPage:
        page = const ValueNotifierCounterPage();
        break;
      case AppRoutes.changeNotifierPage:
        page = const ChangeNotifierCounterPage();
        break;
      case AppRoutes.blocPatternPage:
        page = const BlocPatternCounterPage();
        break;
      default:
        page = const ManagersSelectionPage();
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
