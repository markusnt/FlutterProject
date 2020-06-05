import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_aws_projectRx/app/app_module.dart';
import 'package:flutter_aws_projectRx/app/modules/warning/warning_bloc.dart';
import 'package:flutter_aws_projectRx/app/modules/warning/warning_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(WarningModule());
  WarningBloc bloc;

  // setUp(() {
  //     bloc = WarningModule.to.get<WarningBloc>();
  // });

  // group('WarningBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<WarningBloc>());
  //   });
  // });
}
