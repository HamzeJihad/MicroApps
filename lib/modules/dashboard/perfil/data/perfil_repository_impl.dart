import 'package:micro_front_ends/modules/dashboard/perfil/domain/perfil_repository.dart';

import 'perfil_data_source.dart';

class PerfilRepositoryImpl implements PerfilRepository {
  final PerfilDataSource dataSource;

  PerfilRepositoryImpl(this.dataSource);

  @override
  Future<String> getUserName() {
    return dataSource.fetchUserName();
  }
}
