import 'package:mobx/mobx.dart';
part 'position_model.g.dart';

class PositionModel extends _PositionModelBase with _$PositionModel {
  PositionModel({double x, double y}) : super(x: x, y: y);
}

abstract class _PositionModelBase with Store {
  @observable
  double x;

  @observable
  double y;

  @action
  void change({double x, double y}) {
    this.x = x;
    this.y = y;
  }

  _PositionModelBase({this.x, this.y});
}
