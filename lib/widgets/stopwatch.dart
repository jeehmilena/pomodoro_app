import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_app/widgets/stopwatch_button.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro_store.dart';

class StopWatch extends StatelessWidget {
  const StopWatch({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Container(
      color: Colors.pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hora de trabalhar',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white, fontSize: 28),
          ),
          const SizedBox(height: 24),
          Text(
            '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white, fontSize: 92),
          ),
          const SizedBox(height: 20),
          Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!store.initial)
                  StopWatchButton(
                    text: 'Iniciar',
                    icon: Icons.play_arrow_rounded,
                    onTap: store.init,
                  ),
                if (store.initial)
                  StopWatchButton(
                    text: 'Parar',
                    icon: Icons.stop_rounded,
                    onTap: store.stop,
                  ),
                StopWatchButton(
                  text: 'Reiniciar',
                  icon: Icons.refresh_rounded,
                  onTap: store.restart,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
