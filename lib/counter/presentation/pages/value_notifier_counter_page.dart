import 'package:flutter/material.dart';

import 'counter_base_page.dart';

class ValueNotifierCounterPage extends StatefulWidget {
  const ValueNotifierCounterPage({Key? key}) : super(key: key);

  @override
  State<ValueNotifierCounterPage> createState() =>
      _ValueNotifierCounterPageState();
}

class _ValueNotifierCounterPageState extends State<ValueNotifierCounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VALUE NOTIFIER COUNTER'),
      ),
      body: CounterBasePage(
        counterValue: 10,
        onAdd: () {},
        onRemove: () {},
      ),
    );
  }
}
