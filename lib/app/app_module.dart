import 'package:flutter_aws_project/app/app_controller.dart';
import 'package:flutter_aws_project/app/modules/profile/profile_module.dart';
import 'package:flutter_aws_project/app/modules/warning/warning_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aws_project/app/app_widget.dart';
import 'package:flutter_aws_project/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/warning', module: WarningModule()),
        Router('/home', module: HomeModule()),
        Router('/profile', module: ProfileModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
