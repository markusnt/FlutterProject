import 'package:flutter_aws_projectRx/app/app_bloc.dart';
import 'package:flutter_aws_projectRx/app/modules/profile/profile_module.dart';
import 'package:flutter_aws_projectRx/app/modules/warning/warning_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aws_projectRx/app/app_widget.dart';
import 'package:flutter_aws_projectRx/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/warning', module: WarningModule(), transition: TransitionType.noTransition),
        Router('/home', module: HomeModule(), transition: TransitionType.noTransition),
        Router('/profile', module: ProfileModule(), transition: TransitionType.noTransition),
      ];
  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
