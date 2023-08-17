import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_app/store/pomodoro_store.dart';
import 'package:pomodoro_app/widgets/input_time.dart';
import 'package:pomodoro_app/widgets/stopwatch.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: StopWatch(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 62),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InputTime(
                    value: store.workTime,
                    title: 'Trabalho',
                    increment: store.incrementWorTime,
                    decrement: store.decrementWorkTime,
                  ),
                  InputTime(
                    value: store.restTime,
                    title: 'Descanso',
                    increment: store.incrementRestTime,
                    decrement: store.decrementRestTime,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
