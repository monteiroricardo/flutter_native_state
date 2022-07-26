import 'package:flutter/material.dart';

import '../../pages/counter_base_page.dart';

class SetStateCounterPage extends StatefulWidget {
  const SetStateCounterPage({Key? key}) : super(key: key);

  @override
  State<SetStateCounterPage> createState() => _SetStateCounterPageState();
}

class _SetStateCounterPageState extends State<SetStateCounterPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SET STATE COUNTER'),
      ),
      body: CounterBasePage(
        counterValue: counter,
        increment: () {
          setState(() {
            counter++;
          });
        },
        decrement: () {
          setState(() {
            counter--;
          });
        },
      ),
    );
  }
}
