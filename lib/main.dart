import 'package:flutter/material.dart';
import 'package:pomodoro_app/pages/pomodoro.dart';
import 'package:pomodoro_app/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<PomodoroStore>(create: (_) => PomodoroStore())],
      child: MaterialApp(
        title: 'Pomodoro',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const Pomodoro(),
      ),
    );
  }
}
