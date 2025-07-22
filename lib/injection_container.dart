import 'package:get_it/get_it.dart';
import 'package:micro_front_ends/modules/auth/register/register_injection.dart';
import 'package:micro_front_ends/modules/dashboard/avaliacao_fisica/avaliacao_injection.dart';
import 'package:micro_front_ends/modules/dashboard/perfil/perfil_injection.dart';
import 'package:micro_front_ends/modules/dashboard/treinos/treinos_injection.dart';

import 'modules/auth/login/login_injection.dart';

final sl = GetIt.instance;

void setupLocator() {
  _registerModules();
}

void _registerModules() {
  setupLoginModule(sl);
  setupRegisterModule(sl);
  setupPerfilModule(sl);
  setupAvaliacaoModule(sl);
  setupTreinosModule(sl);
 
}
