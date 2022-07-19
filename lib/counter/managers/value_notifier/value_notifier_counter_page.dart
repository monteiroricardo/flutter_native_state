import 'package:flutter/material.dart';

import '../../pages/counter_base_page.dart';

class ValueNotifierCounterPage extends StatefulWidget {
  const ValueNotifierCounterPage({Key? key}) : super(key: key);

  @override
  State<ValueNotifierCounterPage> createState() =>
      _ValueNotifierCounterPageState();
}

class _ValueNotifierCounterPageState extends State<ValueNotifierCounterPage> {
  final _counter = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VALUE NOTIFIER COUNTER'),
      ),
      body: ValueListenableBuilder<int>(
        valueListenable: _counter,
        builder: (ctx, value, _) {
          return CounterBasePage(
            counterValue: value,
            increment: () {
              _counter.value++;
            },
            decrement: () {
              _counter.value--;
            },
          );
        },
      ),
    );
  }
}
