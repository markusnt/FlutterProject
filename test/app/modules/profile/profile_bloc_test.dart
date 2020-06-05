import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_aws_projectRx/app/app_module.dart';
import 'package:flutter_aws_projectRx/app/modules/profile/profile_bloc.dart';
import 'package:flutter_aws_projectRx/app/modules/profile/profile_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(ProfileModule());
  ProfileBloc bloc;

  // setUp(() {
  //     bloc = ProfileModule.to.get<ProfileBloc>();
  // });

  // group('ProfileBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<ProfileBloc>());
  //   });
  // });
}