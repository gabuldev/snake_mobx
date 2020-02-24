// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controls_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControlsController on _ControlsControllerBase, Store {
  final _$statusAtom = Atom(name: '_ControlsControllerBase.status');

  @override
  ControlStatus get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(ControlStatus value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$_ControlsControllerBaseActionController =
      ActionController(name: '_ControlsControllerBase');

  @override
  void change(ControlStatus status) {
    final _$actionInfo =
        _$_ControlsControllerBaseActionController.startAction();
    try {
      return super.change(status);
    } finally {
      _$_ControlsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'status: ${status.toString()}';
    return '{$string}';
  }
}
