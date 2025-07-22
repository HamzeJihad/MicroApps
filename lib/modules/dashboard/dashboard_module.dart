import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_front_ends/modules/dashboard/avaliacao_fisica/presentation/avaliacao_page.dart';
import 'package:micro_front_ends/modules/dashboard/perfil/presentation/perfil_page.dart';
import 'package:micro_front_ends/modules/dashboard/presentation/home_page.dart';
import 'package:micro_front_ends/modules/dashboard/treinos/presentation/treinos_page.dart';


class DashboardModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/',
        child: (context) => const DashboardHomePage());
    r.child('/treinos', child: (context) => TreinosPage());
    r.child('/avaliacao', child: (context) => AvaliacaoPage());
    r.child('/perfil', child: (context) => PerfilPage());
  }
}
