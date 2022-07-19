import 'package:flutter/material.dart';
import 'package:native_states/counter/widgets/manager_section_widget.dart';

import '../router/routes.dart';

class ManagersSelectionPage extends StatefulWidget {
  const ManagersSelectionPage({Key? key}) : super(key: key);

  @override
  State<ManagersSelectionPage> createState() => _ManagersSelectionPageState();
}

class _ManagersSelectionPageState extends State<ManagersSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SELECTION'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ManagerSection(
                  managerLabel: 'SET STATE',
                  backgroundColor: Colors.blueAccent,
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      AppRoutes.setStatePage,
                    );
                  },
                ),
                ManagerSection(
                  managerLabel: 'VALUE NOTIFIER',
                  backgroundColor: Colors.redAccent,
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      AppRoutes.valueNotifierPage,
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ManagerSection(
                  managerLabel: 'CHANGE NOTIFIER',
                  backgroundColor: Colors.green,
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      AppRoutes.changeNotifierPage,
                    );
                  },
                ),
                ManagerSection(
                  managerLabel: 'BLOC',
                  backgroundColor: Colors.purple,
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      AppRoutes.blocPatternPage,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
