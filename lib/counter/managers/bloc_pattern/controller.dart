import 'dart:async';

import 'package:native_states/counter/managers/bloc_pattern/counter_state.dart';

class BlocPatternController {
  final _blocStreamController = StreamController<CounterState>()
    ..add(
      CounterState(counter: 0),
    );

  Stream<CounterState> get counterOut => _blocStreamController.stream;

  void increment(int state) {
    _blocStreamController.add(
      CounterState(counter: state + 1),
    );
  }

  void decrement(int state) {
    _blocStreamController.add(
      CounterState(counter: state - 1),
    );
  }

  void dispose() {
    _blocStreamController.close();
  }
}
