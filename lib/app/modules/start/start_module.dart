import 'package:snake_mobx/app/modules/start/canvas/canvas_controller.dart';
import 'package:snake_mobx/app/modules/start/controls/controls_controller.dart';
import 'package:snake_mobx/app/modules/start/start_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:snake_mobx/app/modules/start/start_page.dart';

class StartModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ControlsController()),
        Bind((i) => CanvasController()),
        Bind((i) => StartController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => StartPage()),
      ];

  static Inject get to => Inject<StartModule>.of();
}
