import 'package:mobx/mobx.dart';

part 'pomodoro_store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  @observable
  bool initial = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workTime = 2;

  @observable
  int restTime = 1;

  @action
  void init() {
    initial = true;
  }

  @action
  void stop() {
    initial = false;
  }

  @action
  void restart() {
    initial = false;
  }

  @action
  void incrementWorTime() {
    workTime++;
  }

  @action
  void decrementWorkTime() {
    workTime--;
  }

  @action
  void incrementRestTime() {
    restTime++;
  }

  @action
  void decrementRestTime() {
    restTime--;
  }
}
