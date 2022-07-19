import 'package:flutter/material.dart';

class CounterBasePage extends StatefulWidget {
  const CounterBasePage({
    Key? key,
    required this.counterValue,
    required this.increment,
    required this.decrement,
  }) : super(key: key);

  final int counterValue;
  final VoidCallback increment;
  final VoidCallback decrement;

  @override
  State<CounterBasePage> createState() => _CounterBasePageState();
}

class _CounterBasePageState extends State<CounterBasePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35),
      child: Column(
        children: [
          Text(
            widget.counterValue.toString(),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: widget.increment,
                child: const Text(
                  'ADICIONAR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: widget.decrement,
                child: const Text(
                  'REMOVER',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
