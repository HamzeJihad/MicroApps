import 'package:micro_front_ends/modules/auth/register/domain/register_repository.dart';

import 'register_data_source.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final RegisterDataSource dataSource;

  RegisterRepositoryImpl(this.dataSource);

  @override
  Future<bool> register(String name, String email, String password) {
    return dataSource.register(name, email, password);
  }
}
