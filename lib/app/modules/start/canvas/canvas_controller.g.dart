// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canvas_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CanvasController on _CanvasControllerBase, Store {
  final _$snakeAtom = Atom(name: '_CanvasControllerBase.snake');

  @override
  ObservableList<PositionModel> get snake {
    _$snakeAtom.context.enforceReadPolicy(_$snakeAtom);
    _$snakeAtom.reportObserved();
    return super.snake;
  }

  @override
  set snake(ObservableList<PositionModel> value) {
    _$snakeAtom.context.conditionallyRunInAction(() {
      super.snake = value;
      _$snakeAtom.reportChanged();
    }, _$snakeAtom, name: '${_$snakeAtom.name}_set');
  }

  final _$controlAtom = Atom(name: '_CanvasControllerBase.control');

  @override
  ControlStatus get control {
    _$controlAtom.context.enforceReadPolicy(_$controlAtom);
    _$controlAtom.reportObserved();
    return super.control;
  }

  @override
  set control(ControlStatus value) {
    _$controlAtom.context.conditionallyRunInAction(() {
      super.control = value;
      _$controlAtom.reportChanged();
    }, _$controlAtom, name: '${_$controlAtom.name}_set');
  }

  final _$_CanvasControllerBaseActionController =
      ActionController(name: '_CanvasControllerBase');

  @override
  void update(PositionModel position) {
    final _$actionInfo = _$_CanvasControllerBaseActionController.startAction();
    try {
      return super.update(position);
    } finally {
      _$_CanvasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'snake: ${snake.toString()},control: ${control.toString()}';
    return '{$string}';
  }
}
