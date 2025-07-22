import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_front_ends/modules/auth/auth_module.dart';
import 'package:micro_front_ends/modules/dashboard/dashboard_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.redirect('/', to: '/auth/login');
    r.module('/auth', module: AuthModule());
    r.module('/dashboard', module: DashboardModule());
  }
}
