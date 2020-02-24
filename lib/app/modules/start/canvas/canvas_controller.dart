import 'package:mobx/mobx.dart';
import 'package:snake_mobx/app/modules/start/models/position_model.dart';

import '../start_status.dart';

part 'canvas_controller.g.dart';

class CanvasController = _CanvasControllerBase with _$CanvasController;

abstract class _CanvasControllerBase with Store {
  @observable
  ObservableList<PositionModel> snake =
      [PositionModel(x: 1, y: 1)].asObservable();

  @observable
  ControlStatus control;

  PositionModel headPosition(ControlStatus control) {
    PositionModel head;
    PositionModel first = snake.first;

    switch (control) {
      case ControlStatus.up:
        {
          return PositionModel(x: first.x++, y: first.y);
        }
      case ControlStatus.down:
        {
          return PositionModel(x: first.x--, y: first.y);
        }
      case ControlStatus.left:
        {
          return PositionModel(x: first.x, y: first.y--);
        }
      case ControlStatus.right:
        {
          return PositionModel(x: first.x, y: first.y++);
        }
    }
    return head;
  }

  @action
  void update(PositionModel position) => snake.add(position);

  void render(ControlStatus control) {
    print("BEFORE: $snake");
    PositionModel before;
    List<PositionModel> actual = snake.toList();
    PositionModel after = headPosition(control);
    print("ACTUAL: $snake");
    snake.clear();
    for (var item in actual) {
      before = item;
      item = after;
      after = before;
      update(after);
    }
    print("AFTER: $snake");
  }
}
