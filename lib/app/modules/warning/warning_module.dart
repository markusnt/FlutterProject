import 'package:flutter_aws_project/app/modules/warning/warning_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_aws_project/app/modules/warning/warning_page.dart';

class WarningModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => WarningController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => WarningPage()),
      ];

  static Inject get to => Inject<WarningModule>.of();
}
