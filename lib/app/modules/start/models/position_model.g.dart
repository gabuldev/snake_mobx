// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PositionModel on _PositionModelBase, Store {
  final _$xAtom = Atom(name: '_PositionModelBase.x');

  @override
  double get x {
    _$xAtom.context.enforceReadPolicy(_$xAtom);
    _$xAtom.reportObserved();
    return super.x;
  }

  @override
  set x(double value) {
    _$xAtom.context.conditionallyRunInAction(() {
      super.x = value;
      _$xAtom.reportChanged();
    }, _$xAtom, name: '${_$xAtom.name}_set');
  }

  final _$yAtom = Atom(name: '_PositionModelBase.y');

  @override
  double get y {
    _$yAtom.context.enforceReadPolicy(_$yAtom);
    _$yAtom.reportObserved();
    return super.y;
  }

  @override
  set y(double value) {
    _$yAtom.context.conditionallyRunInAction(() {
      super.y = value;
      _$yAtom.reportChanged();
    }, _$yAtom, name: '${_$yAtom.name}_set');
  }

  final _$_PositionModelBaseActionController =
      ActionController(name: '_PositionModelBase');

  @override
  void change({double x, double y}) {
    final _$actionInfo = _$_PositionModelBaseActionController.startAction();
    try {
      return super.change(x: x, y: y);
    } finally {
      _$_PositionModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'x: ${x.toString()},y: ${y.toString()}';
    return '{$string}';
  }
}
