import 'package:micro_front_ends/modules/auth/login/domain/login_repository.dart';

import 'login_data_source.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource dataSource;

  LoginRepositoryImpl(this.dataSource);

  @override
  Future<bool> doLogin(String email, String password) {
    return dataSource.login(email, password);
  }
}
