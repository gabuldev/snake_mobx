import 'package:mobx/mobx.dart';
import '../start_status.dart';
part 'controls_controller.g.dart';

class ControlsController = _ControlsControllerBase with _$ControlsController;

abstract class _ControlsControllerBase with Store {
  @observable
  ControlStatus status;

  @action
  void change(ControlStatus status) => this.status = status;
}
