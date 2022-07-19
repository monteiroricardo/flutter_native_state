import 'package:flutter/material.dart';

import '../../pages/counter_base_page.dart';
import 'controller.dart';

class ChangeNotifierCounterPage extends StatefulWidget {
  const ChangeNotifierCounterPage({Key? key}) : super(key: key);

  @override
  State<ChangeNotifierCounterPage> createState() =>
      _ChangeNotifierCounterPageState();
}

class _ChangeNotifierCounterPageState extends State<ChangeNotifierCounterPage> {
  final _controller = ChangeNotifierController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CHANGE NOTIFIER COUNTER'),
      ),
      body: AnimatedBuilder(
          animation: _controller,
          builder: (context, _) {
            return CounterBasePage(
              counterValue: _controller.counterValue,
              increment: _controller.increment,
              decrement: _controller.decrement,
            );
          }),
    );
  }
}
