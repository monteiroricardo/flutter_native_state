import 'package:flutter/material.dart';
import 'package:native_states/counter/managers/bloc_pattern/controller.dart';
import 'package:native_states/counter/managers/bloc_pattern/counter_state.dart';
import 'package:native_states/counter/pages/counter_base_page.dart';

class BlocPatternCounterPage extends StatefulWidget {
  const BlocPatternCounterPage({Key? key}) : super(key: key);

  @override
  State<BlocPatternCounterPage> createState() => _BlocPatternCounterPageState();
}

class _BlocPatternCounterPageState extends State<BlocPatternCounterPage> {
  final _controller = BlocPatternController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CounterState>(
      stream: _controller.counterOut,
      builder: (ctx, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'BLOC PATTERN COUNTER',
            ),
          ),
          body: CounterBasePage(
            counterValue: snapshot.data?.counter ?? 0,
            increment: () => _controller.increment(snapshot.data?.counter ?? 0),
            decrement: () => _controller.decrement(snapshot.data?.counter ?? 0),
          ),
        );
      },
    );
  }
}
