import 'package:mobx/mobx.dart';

part 'warning_controller.g.dart';

class WarningController = _WarningControllerBase with _$WarningController;

abstract class _WarningControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
