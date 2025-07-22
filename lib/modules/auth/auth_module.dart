import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_front_ends/modules/auth/login/presentation/login_page.dart';
import 'package:micro_front_ends/modules/auth/register/presentation/register_page.dart';
import 'package:micro_front_ends/modules/auth/reset_password/presentation/reset_password_page.dart';

class AuthModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/login', child: (context) => LoginPage());
    r.child('/register', child: (context) => RegisterPage());
    r.child('/reset', child: (context) => ResetPasswordPage());
  }
}
